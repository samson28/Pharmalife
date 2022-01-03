unit UAcceuil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls, 
  StdCtrls, Buttons;

type
  TAcceuil = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Acceuil: TAcceuil;

implementation

uses Pharmalife, UMenu;

{$R *.dfm}

procedure TAcceuil.Timer1Timer(Sender: TObject);
begin
 ProgressBar1.Position:=ProgressBar1.Position+25;
if(ProgressBar1.Position=ProgressBar1.Max)
 then
 begin
 
Acceuil.Hide;
Authentification.Show;

Timer1.Enabled:=False;


end;
end;

procedure TAcceuil.FormActivate(Sender: TObject);
begin
Timer1.Enabled:=True;
end;

end.
