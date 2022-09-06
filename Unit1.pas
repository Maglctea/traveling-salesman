unit Unit1;

interface
uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    matrica: TStringGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Randombox: TCheckBox;
    TabCreate: TBitBtn;
    RandOtDo: TGroupBox;
    randdo: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    randot: TEdit;
    TabClear: TBitBtn;
    StartGroup: TGroupBox;
    Start: TBitBtn;
    Memo1: TMemo;
    Memo2: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure TabCreateClick(Sender: TObject);
    procedure matricaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure RandomboxClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure TabClearClick(Sender: TObject);
    procedure StartClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

type
arrayint = array of array of integer;
arraystr = array of array of string;
VAR
m:arraystr;
M1:array of string;
pyt:array of integer;
x,sity,i,nach,minrasst:integer;
{$R *.dfm}

{++++++++++++++++++++++Подпрог для решения задачи++++++++++++++++++++}
function arraytostr(a:array of integer):string;
VAR
i:integer;
st:string;
begin
for i:=0 to length(a)-1 do
  st:=st+inttostr(a[i]+1)+'->';
st:=st+st[1];
arraytostr:=st;
end;

function rasst(mat:arraystr; pytb:array of integer):integer;
VAR
i,s:integer;
begin
s:=0;
for i:=1 to length(pytb)-1 do
  begin
    s:=s+strtoint(mat[pytb[i],pytb[i-1]]);
  end;
s:=s+strtoint(mat[pytb[length(pytb)-1],nach]);  
rasst:=s;
end;

procedure poisk_pyti(pytb:array of integer; n:integer; iter:integer);
VAR
i,j,p:integer;
begin 
for i:=0 to sity-1 do
  begin
    if m[i,n]<>'-' then
                      begin
                        if (iter=sity-1) and (i=nach) then begin
                                                            if form1.CheckBox1.Checked then form1.memo1.Lines.Add(arraytostr(pytb)+' Расстояние:'+inttostr(rasst(m,pytb)));
                                                            if (rasst(m,pytb)<minrasst) or (minrasst=0) then begin
                                                                                                                minrasst:=rasst(m,pytb);
                                                                                                                form1.memo2.Lines.Clear;
                                                                                                                form1.memo2.Lines.Add('Наименьший путь:'+arraytostr(pytb));
                                                                                                                form1.memo2.Lines.Add('Расстояние:'+inttostr(minrasst));
                                                                                                             end;
                                                           end;
                        p:=0;
                        for j:=0 to iter-1 do
                          if i=pytb[j] then p:=p+1;
                        if (p=0) and (iter<sity) then begin
                                                        pytb[iter+1]:=i;
                                                        poisk_pyti(pytb,i,iter+1);
                                                      end;
                      end;
  end
end;
{++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++}
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
'0'..'9', #8: ;
#13:
 //ловим десятичный разделитель
begin
  Key := DecimalSeparator;
  if pos(DecimalSeparator, Edit1.Text)<>0 then //проверяем есть ли он уже в поле
                                            Key := Chr(0); //запрещаем ввод символа
end;
else Key := Chr(0);
end;
end;


procedure TForm1.TabCreateClick(Sender: TObject);
var
x,y,cl:integer;
begin
form1.Start.Enabled:=true;
matrica.RowCount:=strtoint(edit1.Text)+1;
matrica.ColCount:=strtoint(edit1.Text)+1;

for y:=0 to strtoint(edit1.Text) do
  for x:=0 to strtoint(edit1.Text) do
       if (x=0) and (y=0) then matrica.Cells[x,y]:='*'
                            else if x=0 then matrica.Cells[x,y]:=inttostr(y)
                            else if y=0 then matrica.Cells[x,y]:=inttostr(x)
                            else if (x<>0) and (y<>0) and (Randombox.Checked=true) and (x<>y) then
                                                                                                begin
                                                                                                  matrica.Cells[x,y]:=inttostr(strtoint(randot.Text)+random(strtoint(randdo.Text)))
                                                                                                end
                            else if (x<>0) and (y<>0) and (Randombox.Checked=true) and (x=y) then matrica.Cells[x,y]:='-';


end;

procedure TForm1.matricaDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);                          {покраска таблицы}
begin
if (matrica.Cells[ACol, ARow] = '-') or (ACol=0) or (ARow=0) then
                                      with matrica.Canvas do
                                        begin
                                          Brush.Color := cl3DLight;
                                          FillRect(Rect);
                                          TextOut(Rect.Left+2, Rect.Top+2, matrica.Cells[ACol, ARow])
                                        end;
end;

procedure TForm1.RandomboxClick(Sender: TObject);
begin
  if randombox.Checked=true then
                              begin
                                matrica.Options:=matrica.Options-[goEditing];
                                RandOtDo.Enabled:=true;
                              end
                              else
                                begin
                                  matrica.Options:=matrica.Options+[goEditing];
                                  RandOtDo.Enabled:=false;
                                end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
if (length(edit1.Text)>0) and (strtoint(edit1.Text)>=1) then tabcreate.Enabled:=true
                          else TabCreate.Enabled:=false;
end;

procedure TForm1.TabClearClick(Sender: TObject);
var
i:integer;
begin
form1.Start.Enabled:=false;
with matrica do
  for i:=0 to ColCount-1 do
    Cols[i].Clear;
end;

procedure TForm1.StartClick(Sender: TObject);
VAR
x,y:integer;
begin
memo1.Lines.Clear;
memo2.Lines.Clear;
sity:=matrica.colcount-1;
nach:=strtoint(edit2.Text)-1;

SetLength(M,sity);
for x:=0 to sity-1 do
  begin
  SetLength(M[x],sity);
  end;

SetLength(pyt,sity);

for y:=1 to matrica.colcount-1 do
  for x:=1 to matrica.colcount-1 do
    m[x-1,y-1]:=matrica.Cells[x,y];

for i:=0 to sity-1 do
    pyt[i]:=nach;
minrasst:=0;

form1.Memo2.Color:=clyellow;
poisk_pyti(pyt,nach,0);
form1.Memo2.Color:=clwindow;
sleep(500);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
if (length(edit2.Text)>0) and (strtoint(edit2.Text)>=1) then tabcreate.Enabled:=true
                          else Start.Enabled:=false;
end;

end.
