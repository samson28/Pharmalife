unit UPropos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TApropos = class(TForm)
    lb: TLabel;
    ImgApro: TImage;
    LbVer: TLabel;
    Label3: TLabel;
    BIBt: TBitBtn;
    procedure BIBtClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Apropos: TApropos;

implementation

uses DmPharmacie;

{$R *.dfm}

procedure TApropos.BIBtClick(Sender: TObject);
begin
Apropos.hide;
end;

end.
