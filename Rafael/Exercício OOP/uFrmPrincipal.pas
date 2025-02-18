unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtX1: TEdit;
    edtX2: TEdit;
    edtX3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtY1: TEdit;
    edtY2: TEdit;
    edtY3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btnCalcular: TButton;
    btnCalcularOOP: TButton;
    LabelX: TLabel;
    LabelY: TLabel;
    LabelResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Triangulos;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Triangulos;
var
  xX1:        Double;
  xX2:        Double;
  xX3:        Double;
  xY1:        Double;
  xY2:        Double;
  xY3:        Double;
  xArea1:     Double;
  xArea2:     Double;
  xPerimetroX: Double;
  xPerimetroY: Double;
begin
  xX1 := StrToFloat(edtX1.Text);
  xX2 := StrToFloat(edtX2.Text);
  xX3 := StrToFloat(edtX3.Text);

  xY1 := StrToFloat(edtY1.Text);
  xY2 := StrToFloat(edtY2.Text);
  xY3 := StrToFloat(edtY3.Text);

  xPerimetroX := (xX1+xX2+xX3) / 2;
  xArea1      := Sqrt(xPerimetroX * (xPerimetroX-xX1) * (xPerimetroX-xX2) * (xPerimetroX-xX3));

  xPerimetroY := (xY1+xY2+xY3) / 2;
  xArea2      := Sqrt(xPerimetroY * (xPerimetroY-xY1) * (xPerimetroY-xY2) * (xPerimetroY-xY3));

  LabelX.Caption := ('�rea X = ') + FormatFloat('0.0000',xArea1);
  LabelY.Caption := ('�rea Y = ') + FormatFloat('0.0000',xArea2);

  if (xArea1 > xArea2) then
    LabelResultado.Caption := ('Triangulo X � maior')
  else
    LabelResultado.Caption := ('Triangulo Y � maior')
end;

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Triangulos;
end;

end.
