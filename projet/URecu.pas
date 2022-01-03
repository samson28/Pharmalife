unit URecu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TFRecu = class(TForm)
    QrRecu: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRMemo1: TQRMemo;
    QRImage1: TQRImage;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRMemo2: TQRMemo;
    QRLabel13: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FRecu: TFRecu;

implementation

{$R *.dfm}

end.
