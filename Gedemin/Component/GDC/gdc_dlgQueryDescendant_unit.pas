unit gdc_dlgQueryDescendant_unit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ActnList, gdcBase, gd_ClassList, Contnrs;

type
  Tgdc_dlgQueryDescendant = class(TForm)
    rgObjects: TRadioGroup;
    ActionList: TActionList;
    acOk: TAction;
    actCancel: TAction;
    actClasses: TAction;
    pnlBtns: TPanel;
    btnClasses: TButton;
    btnOK: TButton;
    btnCancel: TButton;
    procedure acOkExecute(Sender: TObject);
    procedure acOkUpdate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actClassesExecute(Sender: TObject);

  public
    procedure FillrgObjects(OL: TObjectList);
  end;

var
  gdc_dlgQueryDescendant: Tgdc_dlgQueryDescendant;

implementation
  
{$R *.DFM}

procedure Tgdc_dlgQueryDescendant.FillrgObjects(OL: TObjectList);
var
  I: Integer;
  CE: TgdBaseEntry;
begin
  for I := 0 to OL.Count - 1 do
  begin
    CE := OL[I] as TgdBaseEntry;
    rgObjects.Items.AddObject(CE.gdcClass.GetDisplayName(CE.SubType), CE);

    if (Height < rgObjects.Items.Count * 24 + 30) and (Height < 540) then
      Height := rgObjects.Items.Count * 24 + 30;
  end;
end;

procedure Tgdc_dlgQueryDescendant.acOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tgdc_dlgQueryDescendant.acOkUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := rgObjects.ItemIndex <> -1;
end;

procedure Tgdc_dlgQueryDescendant.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tgdc_dlgQueryDescendant.actClassesExecute(Sender: TObject);
var
  I: Integer;
  CE: TgdBaseEntry;
begin
  actClasses.Checked := not actClasses.Checked;

  for I := 0 to rgObjects.Items.Count - 1 do
  begin
    CE := rgObjects.Items.Objects[I] as TgdBaseEntry;
    if actClasses.Checked then
      rgObjects.Items[I] := CE.TheClass.ClassName + CE.SubType
    else
      rgObjects.Items[I] := CE.Caption;
  end;
end;

end.
