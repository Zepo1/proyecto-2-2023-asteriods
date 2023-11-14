unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormPaint(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormDblClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TForm1.FormPaint(Sender: TObject);
Var
   Cx,Cy,An,Hn : Integer;
   P1,P2,P3 : TPoint;
begin
     Cx:=Screen.Width div 2;
     Cy:=Screen.Height div 2;
     An:=Trunc(Screen.Width*0.02);
     Hn:=Trunc(Screen.Height*0.02);
     P1.X:=CX;P1.Y:=Cy-Hn;
     P2.X:=Cx-An;P2.Y:=Cy+Hn;
     P3.X:=Cx+An;P3.Y:=Cy+Hn;
     Canvas.Pen.Color:=clWhite;
     Canvas.Pen.Width:=4;
     Canvas.Brush.Color:=clYellow;
     Canvas.Polygon([P1,P2,P3]);
end;

end.
