unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
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

function ReadFileToHex(FileName: string): string;
var
  b: Byte;
begin
  Result := '';
  if not FileExists(FileName) then Exit;
  with TMemoryStream.Create do begin
    LoadFromFile(FileName);
    Position := 0;
    while Position < Size do
    begin
      ReadBuffer(b, 1);
      Result := Result + Format('%.2x ', [b]);
    end;
    Trim(Result);
    Free;
  end;
end;

{µ÷ÓÃ}
procedure TForm1.Button1Click(Sender: TObject);
var
  str: string;
begin
  str := ReadFileToHex('D:\Desktop\1.rpf');
  Memo1.Lines.Add(str);
end;

end.
