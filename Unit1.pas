unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function masofa(x1,y1,x2,y2:integer):real;
    procedure chiziq(chx:integer);
  end;

var
  Form1: TForm1;
  x,y,chx,chy:integer;
implementation

{$R *.dfm}

procedure TForm1.chiziq(chx: integer);
begin
image1.Canvas.Pen.Color:=clwhite;image1.Canvas.Brush.Color:=clwhite;
image1.Canvas.Rectangle(-1,image1.Height-30,image1.Width+5,image1.Height+5);
image1.Canvas.Brush.Color:=clblack;
image1.Canvas.Rectangle(chx-50,image1.Height-20,chx+50,image1.Height+20);
image1.Canvas.Pen.Color:=clblack; image1.Canvas.Brush.Color:=clwhite;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
x:=50;y:=50;
x:=image1.Width div 2;y:=image1.Height-70;
chx:=image1.Width div 2;
image1.canvas.Brush.Color:=clblack;
image1.Canvas.Rectangle((image1.Width div 2)-50,image1.Height-20,(image1.Width div 2)+50,image1.Height+20);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_left then dec(chx,30);
if key=vk_right then inc(chx,30);
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key=vk_up then begin timer1.Enabled:=true; form1.FormCreate(sender);end;
if key=vk_left then dec(chx,10);
if key=vk_right then inc(chx,10);
end;

function TForm1.masofa(x1, y1, x2, y2: integer): real;
begin
 masofa:=sqrt(sqr(x1-x2)+sqr(y1-y2));
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
inc(x,6);inc(y,5);image1.Canvas.Brush.Color:=clwhite;chiziq(chx);
image1.Canvas.Rectangle(-1,-1,image1.Width+5,image1.Height-20);
image1.Canvas.Ellipse(abs(x)-20,abs(y)-20,abs(x)+20,abs(y)+20);
if (abs(x)<=20)or(abs(x)>=image1.Width-20) then x:=-x;
if (abs(y)<=20)or((abs(y)>=image1.height-40)and(masofa(Abs(x),abs(y),chx,image1.Height-20)<=70)) then y:=-y;
if y>image1.Height then begin
timer1.Enabled:=false;showmessage('tamom');end;
end;

end.
