unit gsDBSqueeze_MainForm_unit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  gsDBSqueeze_unit, ActnList, StdCtrls;

type
  TgsDBSqueeze_MainForm = class(TForm)
    edDatabaseName: TEdit;
    edUserName: TEdit;
    edPassword: TEdit;
    btnConnect: TButton;
    ActionList: TActionList;
    actConnect: TAction;
    actDisconnect: TAction;
    btnDisconnect: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure actConnectExecute(Sender: TObject);
    procedure actConnectUpdate(Sender: TObject);
    procedure actDisconnectUpdate(Sender: TObject);
    procedure actDisconnectExecute(Sender: TObject);

  private
    FgsDBSqueeze: TgsDBSqueeze;

  public
    constructor Create(AnOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  gsDBSqueeze_MainForm: TgsDBSqueeze_MainForm;

implementation

{$R *.DFM}

procedure TgsDBSqueeze_MainForm.actConnectExecute(Sender: TObject);
begin
  FgsDBSqueeze.DatabaseName := edDatabaseName.Text;
  FgsDBSqueeze.UserName := edUserName.Text;
  FgsDBSqueeze.Password := edPassword.Text;
  FgsDBSqueeze.Connect;
end;

constructor TgsDBSqueeze_MainForm.Create(AnOwner: TComponent);
begin
  inherited;
  FgsDBSqueeze := TgsDBSqueeze.Create;
end;

destructor TgsDBSqueeze_MainForm.Destroy;
begin
  FgsDBSqueeze.Free;
  inherited;
end;

procedure TgsDBSqueeze_MainForm.actConnectUpdate(Sender: TObject);
begin
  actConnect.Enabled := (not FgsDBSqueeze.Connected)
    and (edDatabaseName.Text > '')
    and (edUserName.Text > '')
    and (edPassword.Text > '');
end;

procedure TgsDBSqueeze_MainForm.actDisconnectUpdate(Sender: TObject);
begin
  actDisconnect.Enabled := FgsDBSqueeze.Connected;
end;

procedure TgsDBSqueeze_MainForm.actDisconnectExecute(Sender: TObject);
begin
  FgsDBSqueeze.Disconnect;
end;

end.
