unit Main.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    bntShowValues: TButton;
    edtName: TEdit;
    edtNum1: TEdit;
    edtNum2: TEdit;
    procedure bntShowValuesClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
      nome_cliente: string;
      num1, num2: integer;
      num3, num4: double;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bntShowValuesClick(Sender: TObject);
var
  soma: integer;
begin
  nome_cliente := edtName.Text;
  ShowMessage(nome_cliente);

  num1 := StrToInt(edtNum1.Text);
  num2 := StrToInt(edtNum2.Text);

  soma := num1 + num2;

  ShowMessage(IntToStr(soma));
end;

end.
