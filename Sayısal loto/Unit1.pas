unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    ListBox2: TListBox;
    ListBox3: TListBox;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  rsayilar : Array[0..10] of integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

rsayilar[0]:=StrToInt(Edit1.Text);
rsayilar[1]:=StrToInt(Edit2.Text);
rsayilar[2]:=StrToInt(Edit3.Text);
rsayilar[3]:=StrToInt(Edit4.Text);
rsayilar[4]:=StrToInt(Edit5.Text);
rsayilar[5]:=StrToInt(Edit6.Text);

edit1.Clear;
edit2.clear;
edit3.clear;
edit4.clear;
edit5.clear;
edit6.clear;
listBox3.Clear;
listBox2.Clear;
ShowMessage('Loto Sayýlarý Oluþturuldu.');
end;


procedure TForm1.Button2Click(Sender: TObject);
var
I,e,a,sayi:Integer;
begin
       a:=0;
for I := 0 to 15 do begin
sayi:=Random(49);
if a<6 then begin
if (sayi<>0)and (sayi <> rsayilar[0]) and (sayi <> rsayilar[1]) and(sayi <> rsayilar[2] )and (sayi <> rsayilar[3]) and (sayi <> rsayilar[4]) and (sayi <>rsayilar[5]) then
begin
rsayilar[a]:=sayi;
a:=a+1;
end;
end;
end;
for I :=0 to 5 do begin
ListBox2.Items.Add(IntToStr(rsayilar[I]));
end;
for e := 0 to 5 do
begin
if rsayilar[e]=rsayilar[e] then
begin
ListBox3.Items.Add('BÝNGO'+IntToStr(rsayilar[e]));
end
else begin
ListBox3.Items.Add(' Tutturamadýnýz.');

    end;

        end;
end;


end.
