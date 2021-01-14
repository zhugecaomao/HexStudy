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

procedure TForm1.Button1Click(Sender: TObject);
var F: TFileStream;
    Buff: array[0..15] of Byte;
    CountRead: Integer;
    HexText: array[0..30] of Char;

begin
  F := TFileStream.Create('D:\Desktop\1.rpf', fmOpenRead or fmShareDenyWrite);
  try
    CountRead := F.Read(Buff, SizeOf(Buff));
    while CountRead <> 0 do
    begin
      BinToHex(Buff, HexText, CountRead);
      Memo1.Lines.Add(HexText);
      CountRead := F.Read(Buff, SizeOf(Buff));
    end;
  finally F.Free;
  end;
end;

end.
