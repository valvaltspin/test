unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids;

type
  TForm1 = class(TForm)
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure MaskEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var S: String;
     i,Sum, count: Byte;

begin
 StringGrid1.Visible:=True;
 Label2.Visible:=True;
 count:=0; Sum:=0;
 S:=MaskEdit1.Text;
 for i := 1 to Length(S) do
   begin
    if S[i]<>' ' then
    begin
      StringGrid1.Cells[i-count-1,0]:=S[i];
      if (i-count) mod 2 <> 0 then
      begin
        StringGrid1.Cells[i-count-1,1]:=IntToStr(StrToInt(S[i])*2);
        if StrToInt(S[i])*2>9 then
        StringGrid1.Cells[i-count-1,2]:=IntToStr(StrToInt(S[i])*2-9)
        else StringGrid1.Cells[i-count-1,2]:=IntToStr(StrToInt(S[i])*2);
        StringGrid1.Cells[i-count-1,3]:=StringGrid1.Cells[i-count-1,2]+'+';
        Inc(Sum,StrToInt(StringGrid1.Cells[i-count-1,2]));
      end
      else
      begin
       StringGrid1.Cells[i-count-1,3]:=StringGrid1.Cells[i-count-1,0]+'+';
        Inc(Sum,StrToInt(StringGrid1.Cells[i-count-1,0]));
      end;
      IntToStr(Sum);
    end
    else Inc(count);
   end;
   StringGrid1.Cells[15,3]:=StringGrid1.Cells[15,0]+' = '+
   IntToStr(Sum);
   if Sum mod 10 = 0 then Label2.Caption:='Вірний номер картки'
   else Label2.Caption:='Не вірний номер картки'
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Button1.Enabled:=False;
 StringGrid1.ColWidths[15]:=45;
 StringGrid1.Visible:=False;
 Label2.Visible:=False;
end;

procedure TForm1.MaskEdit1Change(Sender: TObject);
begin
 if MaskEdit1.Text=MaskEdit1.EditText then Button1.Enabled:=True
  else  Button1.Enabled:=False;
 if MaskEdit1.Modified then
 begin
  StringGrid1.Visible:=False;
  Label2.Visible:=False;
 end;
end;
end.
