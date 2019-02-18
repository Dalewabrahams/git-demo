unit unPalendrone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm15 = class(TForm)
    btnPanedroneTwoWords: TButton;
    edtPanedroneTwoWords_string1: TEdit;
    edtPanedroneTwoWords_string2: TEdit;
    shpColorPanedroneTwoWords: TShape;
    btnPalendroneOneWord: TButton;
    edtPanedroneOneWord: TEdit;
    shpColorPanedroneOneWord: TShape;
    btnReset: TBitBtn;
    btnExample: TButton;
    lblNotes: TLabel;
    procedure btnPanedroneTwoWordsClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnPalendroneOneWordClick(Sender: TObject);
    procedure btnExampleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function IsPalendroneCompareTwoWords(pString1, pString2: string): Boolean;
    function IsPalendroneOneWord(pString1: string): Boolean;
    function RemoveAllSpaces(pString: string): string;
    function ReverseOfAString(pString: string): string;
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

{ TForm15 }

procedure TForm15.btnExampleClick(Sender: TObject);
var
  vString : string;
begin
  vString := 'Remark not on Kramer';
  vstring := vString + #13;
  vString := vString + 'Wet stew';
  vstring := vString + #13;
  vString := vString + 'Madam';
  vstring := vString + #13;
  vString := vString + 'Kayak';
  vstring := vString + #13;
  vString := vString + 'Racecar';
  vstring := vString + #13;
  vString := vString + 'Rotator';
  vstring := vString + #13;
  vString := vString + 'Was it a cat I saw?';
  vstring := vString + #13;
  vString := vString + 'Eva, can I see bees in a cave?';
  ShowMessage(vstring);

end;

procedure TForm15.btnPalendroneOneWordClick(Sender: TObject);
begin
  if IsPalendroneOneWord(Trim(edtPanedroneOneWord.text)) then
  begin
    shpColorPanedroneOneWord.Visible := True;
    shpColorPanedroneOneWord.Brush.Color := clGreen;
  end
  else
  begin
    shpColorPanedroneOneWord.Visible := True;
    shpColorPanedroneOneWord.Brush.Color := clred;
  end;
end;

procedure TForm15.btnPanedroneTwoWordsClick(Sender: TObject);
begin
  if IsPalendroneCompareTwoWords(Trim(edtPanedroneTwoWords_string1.text), Trim(edtPanedroneTwoWords_string2.text)) then
  begin
    shpColorPanedroneTwoWords.Visible := True;
    shpColorPanedroneTwoWords.Brush.Color := clGreen;
  end
  else
  begin
    shpColorPanedroneTwoWords.Visible := True;
    shpColorPanedroneTwoWords.Brush.Color := clred;
  end;
end;

procedure TForm15.btnResetClick(Sender: TObject);
begin
  shpColorPanedroneOneWord.Visible := false;
  shpColorPanedroneTwoWords.Visible := false;
  edtPanedroneOneWord.Clear;
  edtPanedroneTwoWords_string1.Clear;
  edtPanedroneTwoWords_string2.clear;
end;

function TForm15.IsPalendroneCompareTwoWords(pString1, pString2: string): Boolean;
// Enter two strings and after removing all the spaces check if the two stings are
// the same both forward and backwards.

var
  i: Integer;
  vString1, vString2, vString1_Reversed: string;
begin
  Result := False;
  vString1_Reversed := '';
  vString1 := RemoveAllSpaces(pString1);
  vString2 := RemoveAllSpaces(pString2);
  vString1_Reversed := ReverseOfAString(vString1);

  if AnsiCompareStr(vString2, vString1_Reversed) = 0 then
    Result := true;
end;

function TForm15.IsPalendroneOneWord(pString1: string): Boolean;
// Pass in one word and function will determine if the word is palendrone ie the word is the same forward and backwards.
var
  i: Integer;
  vString1, vString1_Reversed: string;
begin
  Result := False;
  vString1_Reversed := '';
  vString1 := RemoveAllSpaces(pString1);
  vString1_Reversed := ReverseOfAString(vString1);

  if AnsiCompareStr(vString1, vString1_Reversed) = 0 then
    Result := true;
end;

function TForm15.RemoveAllSpaces(pString: string): string;
//Removes all white spaces, commas and question marks
var
  vString: string;
  i: Integer;
begin
  i := 1;
  vString := pString;
   // while a white space is found, keep using a for loop to find that space and delete that space in the string.
  while (Pos(' ', vString) > 0) or  (Pos('?', vString) > 0) or  (Pos(',', vString) > 0)    do
  begin
    for i := 1 to Length(vString) do
    begin
      if (vString[i] = ' ') or (vString[i] = '?') or (vString[i] = ',') then
        Delete(vString, i, 1);
    end;
    i := i + 1;
  end;
  Result := Trim(UpperCase(vString));
end;

function TForm15.ReverseOfAString(pString: string): string;
// Take a string and return the reverse of that string
var
  vString_Reversed: string;
  vstring: string;
  i: integer;
begin
  Result := '';
  vstring := Trim(UpperCase(pString));
  for i := Length(vstring) downto 1 do
  begin
    vString_Reversed := vString_Reversed + vstring[i];
  end;
  Result := UpperCase(vString_Reversed);
end;

end.

