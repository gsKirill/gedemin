unit gd_ExternalEditor;

interface

uses
  Classes;

procedure InvokeExternalEditor(const ALang: String; S: TStrings); overload;
procedure InvokeExternalEditor(const ALang: String; const AFileName: String); overload;

implementation

uses
  Windows, SysUtils, gd_GlobalParams_unit;

procedure InvokeExternalEditor(const ALang: String; S: TStrings);
var
  FTemp: String;
  TempPath: array[0..1023] of Char;
  TempFileName: array[0..1023] of Char;
begin
  Assert(S <> nil);

  if (GetTempPath(SizeOf(TempPath), TempPath) = 0) or
    (GetTempFileName(TempPath, 'gd', 0, TempFileName) = 0) then
  begin
    raise Exception.Create('������ ��� ����������� ����� ���������� �����. ' +
      SysErrorMessage(GetLastError));
  end;

  FTemp := ChangeFileExt(TempFileName, '.' + ALang);

  S.SaveToFile(FTemp);
  try
    InvokeExternalEditor(ALang, FTemp);
    S.LoadFromFile(FTemp);
  finally
    DeleteFile(FTemp);
  end;
end;

procedure InvokeExternalEditor(const ALang: String; const AFileName: String);
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  FName: String;
begin
  FName := gd_GlobalParams.GetExternalEditor(ALang);

  if FName = '' then
    raise Exception.Create('� ����� �������� gedemin.ini �� ��������� ' +
      '������� �������� ��� ����� "' + ALang + '".');

  FillChar(StartupInfo, SizeOf(TStartupInfo), #0);
  StartupInfo.cb := SizeOf(TStartupInfo);
  if not CreateProcess(nil,
    PChar(FName + ' "' + AFileName + '"'),
    nil, nil, False, NORMAL_PRIORITY_CLASS, nil, nil,
    StartupInfo, ProcessInfo) then
  begin
    raise Exception.Create('������ ��� ������� �������� ���������.'#13#10 +
      '��������� ������: ' + FName + #13#10 +
      SysErrorMessage(GetLastError));
  end;

  WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
end;

end.