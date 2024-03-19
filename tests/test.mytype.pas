unit test.mytype;

interface

uses
  TestFramework,

  //delphi
  System.SysUtils,
  System.MaskUtils,

  //codeencode
  mytype;

type
  TestTMyType = class(TTestCase)
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestIsCnpj;
    procedure TestLengthIsCnpj;
    procedure TestRepeatedNumberIsCnpj;
    procedure TestExceptionIsCnpj;
    procedure TestMaskAsCnpj;
    procedure TestNoMaskAsCnpj;
    procedure TestCnpjMask;

    procedure TestIsCpf;
    procedure TestLengthIsCpf;
    procedure TestRepeatedNumberIsCpf;
    procedure TestExceptionIsCpf;
    procedure TestMaskAsCpf;
    procedure TestNoMaskAsCpf;
    procedure TestCpfMask;

    procedure TestIsentoIsIe;
    procedure TestAcIsIe;
    procedure TestAlIsIe;
    procedure TestApIsIe;
    procedure TestAmIsIe;
    procedure TestBaIsIe;
    procedure TestCeIsIe;
    procedure TestDfIsIe;
    procedure TestEsIsIe;
    procedure TestGoIsIe;
    procedure TestMaIsIe;
    procedure TestMtIsIe;
    procedure TestMsIsIe;
    procedure TestMgIsIe;
    procedure TestPaIsIe;
    procedure TestPbIsIe;
    procedure TestPrIsIe;
    procedure TestPeIsIe;
    procedure TestPiIsIe;
    procedure TestRjIsIe;
    procedure TestRnIsIe;
    procedure TestRsIsIe;
    procedure TestRoIsIe;
    procedure TestRrIsIe;
    procedure TestSpIsIe;
    procedure TestScIsIe;
    procedure TestSeIsIe;
    procedure TestToIsIe;

    procedure TestAcLengthIsIe;
    procedure TestAlLengthIsIe;
    procedure TestApLengthIsIe;
    procedure TestAmLengthIsIe;
    procedure TestBaLengthIsIe;
    procedure TestCeLengthIsIe;
    procedure TestDfLengthIsIe;
    procedure TestEsLengthIsIe;
    procedure TestGoLengthIsIe;
    procedure TestMaLengthIsIe;
    procedure TestMtLengthIsIe;
    procedure TestMsLengthIsIe;
    procedure TestMgLengthIsIe;
    procedure TestPaLengthIsIe;
    procedure TestPbLengthIsIe;
    procedure TestPrLengthIsIe;
    procedure TestPeLengthIsIe;
    procedure TestPiLengthIsIe;
    procedure TestRjLengthIsIe;
    procedure TestRnLengthIsIe;
    procedure TestRsLengthIsIe;
    procedure TestRoLengthIsIe;
    procedure TestRrLengthIsIe;
    procedure TestSpLengthIsIe;
    procedure TestScLengthIsIe;
    procedure TestSeLengthIsIe;
    procedure TestToLengthIsIe;

    procedure TestExceptionAcIsIe;
    procedure TestExceptionAlIsIe;
    procedure TestExceptionApIsIe;
    procedure TestExceptionAmIsIe;
    procedure TestExceptionBaIsIe;
    procedure TestExceptionCeIsIe;
    procedure TestExceptionDfIsIe;
    procedure TestExceptionEsIsIe;
    procedure TestExceptionGoIsIe;
    procedure TestExceptionMaIsIe;
    procedure TestExceptionMtIsIe;
    procedure TestExceptionMsIsIe;
    procedure TestExceptionMgIsIe;
    procedure TestExceptionPaIsIe;
    procedure TestExceptionPbIsIe;
    procedure TestExceptionPrIsIe;
    procedure TestExceptionPeIsIe;
    procedure TestExceptionPiIsIe;
    procedure TestExceptionRjIsIe;
    procedure TestExceptionRnIsIe;
    procedure TestExceptionRsIsIe;
    procedure TestExceptionRoIsIe;
    procedure TestExceptionRrIsIe;
    procedure TestExceptionSpIsIe;
    procedure TestExceptionScIsIe;
    procedure TestExceptionSeIsIe;
    procedure TestExceptionToIsIe;

    procedure TestIsentoMaskAsIe;
    procedure TestAcMaskAsIe;
    procedure TestAlMaskAsIe;
    procedure TestApMaskAsIe;
    procedure TestAmMaskAsIe;
    procedure TestBaMaskAsIe;
    procedure TestCeMaskAsIe;
    procedure TestDfMaskAsIe;
    procedure TestEsMaskAsIe;
    procedure TestGoMaskAsIe;
    procedure TestMaMaskAsIe;
    procedure TestMtMaskAsIe;
    procedure TestMsMaskAsIe;
    procedure TestMgMaskAsIe;
    procedure TestPaMaskAsIe;
    procedure TestPbMaskAsIe;
    procedure TestPrMaskAsIe;
    procedure TestPeMaskAsIe;
    procedure TestPiMaskAsIe;
    procedure TestRjMaskAsIe;
    procedure TestRnMaskAsIe;
    procedure TestRsMaskAsIe;
    procedure TestRoMaskAsIe;
    procedure TestRrMaskAsIe;
    procedure TestSpMaskAsIe;
    procedure TestScMaskAsIe;
    procedure TestSeMaskAsIe;
    procedure TestToMaskAsIe;

    procedure TestIsentoNoMaskAsIe;
    procedure TestAcNoMaskAsIe;
    procedure TestAlNoMaskAsIe;
    procedure TestApNoMaskAsIe;
    procedure TestAmNoMaskAsIe;
    procedure TestBaNoMaskAsIe;
    procedure TestCeNoMaskAsIe;
    procedure TestDfNoMaskAsIe;
    procedure TestEsNoMaskAsIe;
    procedure TestGoNoMaskAsIe;
    procedure TestMaNoMaskAsIe;
    procedure TestMtNoMaskAsIe;
    procedure TestMsNoMaskAsIe;
    procedure TestMgNoMaskAsIe;
    procedure TestPaNoMaskAsIe;
    procedure TestPbNoMaskAsIe;
    procedure TestPrNoMaskAsIe;
    procedure TestPeNoMaskAsIe;
    procedure TestPiNoMaskAsIe;
    procedure TestRjNoMaskAsIe;
    procedure TestRnNoMaskAsIe;
    procedure TestRsNoMaskAsIe;
    procedure TestRoNoMaskAsIe;
    procedure TestRrNoMaskAsIe;
    procedure TestSpNoMaskAsIe;
    procedure TestScNoMaskAsIe;
    procedure TestSeNoMaskAsIe;
    procedure TestToNoMaskAsIe;

    procedure TestIsentoIeMask;
    procedure TestAcIeMask;
    procedure TestAlIeMask;
    procedure TestApIeMask;
    procedure TestAmIeMask;
    procedure TestBaIeMask;
    procedure TestCeIeMask;
    procedure TestDfIeMask;
    procedure TestEsIeMask;
    procedure TestGoIeMask;
    procedure TestMaIeMask;
    procedure TestMtIeMask;
    procedure TestMsIeMask;
    procedure TestMgIeMask;
    procedure TestPaIeMask;
    procedure TestPbIeMask;
    procedure TestPrIeMask;
    procedure TestPeIeMask;
    procedure TestPiIeMask;
    procedure TestRjIeMask;
    procedure TestRnIeMask;
    procedure TestRsIeMask;
    procedure TestRoIeMask;
    procedure TestRrIeMask;
    procedure TestSpIeMask;
    procedure TestScIeMask;
    procedure TestSeIeMask;
    procedure TestToIeMask;

    procedure TestIsCep;
    procedure TestRnIsCep;
    procedure TestRnNoIsCep;
    procedure TestLengthIsCep;
    procedure TestExceptionIsCep;
    procedure TestMaskAsCep;
    procedure TestNoMaskAsCep;
    procedure TestCepMask;

    procedure TestIsTelephone;
    procedure TestLengthIsTelephone;
    procedure TestExceptionIsTelephone;
    procedure TestMaskAsTelephone;
    procedure TestNoMaskAsTelephone;
    procedure TestTelephoneMask;

    procedure TestIsCellPhone;
    procedure TestLengthIsCellPhone;
    procedure TestExceptionIsCellPhone;
    procedure TestMaskAsCellPhone;
    procedure TestNoMaskAsCellPhone;
    procedure TestCellPhoneMask;

    procedure TestIsCard;
    procedure TestLengthIsCard;
    procedure TestExceptionIsCard;
    procedure TestMaskAsCard;
    procedure TestNoMaskAsCard;
    procedure TestCardMask;

    procedure TestIsPis;
    procedure TestLengthIsPis;
    procedure TestExceptionIsPis;
    procedure TestMaskAsPis;
    procedure TestNoMaskAsPis;
    procedure TestPisMask;

    procedure TestIsSuframa;
    procedure TestLengthIsSuframa;
    procedure TestExceptionIsSuframa;
    procedure TestMaskAsSuframa;
    procedure TestNoMaskAsSuframa;

    procedure Test8IsGtin;
    procedure Test12IsGtin;
    procedure Test13IsGtin;
    procedure Test14IsGtin;
    procedure TestLengthIsGtin;
    procedure TestExceptionIsGtin;
    procedure TestMaskAsGtin;
    procedure TestNoMaskAsGtin;

    procedure TestIsRenavam;
    procedure TestLengthIsRenavam;
    procedure TestExceptionIsRenavam;
    procedure TestMaskAsRenavam;
    procedure TestNoMaskAsRenavam;
    procedure TestRenavamMask;

    procedure TestIsCnh;
    procedure TestLengthIsCnh;
    procedure TestExceptionIsCnh;
    procedure TestMaskAsCnh;
    procedure TestNoMaskAsCnh;
    procedure TestCnhMask;

    procedure TestIsLicensePlate;
    procedure TestLengthIsLicensePlate;
    procedure TestExceptionIsLicensePlate;
    procedure TestMaskAsLicensePlate;
    procedure TestNoMaskAsLicensePlate;
    procedure TestLicensePlateMask;

    procedure TestIsEmail;
    procedure TestEmptyIsEmail;
    procedure TestLengthIsEmail;
    procedure TestAtSignIsEmail;
    procedure TestPointIsEmail;
    procedure TestTwoPointsIsEmail;
    procedure TestStartAtSignIsEmail;
    procedure TestStartPointIsEmail;
    procedure TestEndAtSignIsEmail;
    procedure TestEndPointIsEmail;
    procedure TestAtSignTogetherPointIsEmail;
    procedure TestLastPointAfterAtSignIsEmail;
    procedure TestInvalidCharacterIsEmail;

    procedure TestIsUf;
    procedure TestLengthIsUf;
    procedure TestExceptionIsUf;

    procedure TestIsDatemmddyyyy;
    procedure TestIsDatemmddyy;
    procedure TestIsDateddmmyyyy;
    procedure TestIsDateddmmyy;
    procedure TestIsDateyyyymmdd;
    procedure TestIsDateyymmdd;
    procedure TestmmddyyyyMask;
    procedure TestmmddyyMask;
    procedure TestddmmyyyyMask;
    procedure TestddmmyyMask;
    procedure TestyyyymmddMask;
    procedure TestyymmddMask;

    procedure TestMaskAsNcm;
    procedure TestNcmMask;

    procedure TestMaskAsCest;
    procedure TestCestMask;
  end;

implementation

procedure TestTMyType.SetUp;
begin

end;

procedure TestTMyType.TearDown;
begin

end;

//CNPJ

procedure TestTMyType.TestIsCnpj;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '92.396.665/0001-84';
  ReturnValue := TMyType.IsCnpj(AValue);
  CheckEquals(True, ReturnValue, 'TestIsCnpj failed.');
end;

procedure TestTMyType.TestLengthIsCnpj;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '92.396';
  ReturnValue := TMyType.IsCnpj(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsCnpj failed.');
end;

procedure TestTMyType.TestRepeatedNumberIsCnpj;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '99.999.999/9999-99';
  ReturnValue := TMyType.IsCnpj(AValue);
  CheckEquals(False, ReturnValue, 'TestRepeatedNumberIsCnpj failed.');
end;

procedure TestTMyType.TestExceptionIsCnpj;
var
  AValue: String;
begin
  AValue := '92.396';
  ExpectedException := Exception;
  TMyType.IsCnpj(AValue, True);
end;

procedure TestTMyType.TestMaskAsCnpj;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '92396665000184';
  ReturnValue := TMyType.AsCnpj(AValue);
  CheckEquals('92.396.665/0001-84', ReturnValue, 'TestMaskAsCnpj failed.');
end;

procedure TestTMyType.TestNoMaskAsCnpj;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '92.396.665/0001-84';
  ReturnValue := TMyType.AsCnpj(AValue, False);
  CheckEquals('92396665000184', ReturnValue, 'TestNoMaskAsCnpj failed.');
end;

procedure TestTMyType.TestCnpjMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.CnpjMask;
  CheckEquals('##.###.###/####-##', ReturnValue, 'TestCnpjMask failed.');
end;

//CPF

procedure TestTMyType.TestIsCpf;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '992.183.440-13';
  ReturnValue := TMyType.IsCpf(AValue);
  CheckEquals(True, ReturnValue, 'TestIsCpf failed.');
end;

procedure TestTMyType.TestLengthIsCpf;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '992.183';
  ReturnValue := TMyType.IsCpf(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsCpf failed.');
end;

procedure TestTMyType.TestRepeatedNumberIsCpf;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '999.999.999-99';
  ReturnValue := TMyType.IsCpf(AValue);
  CheckEquals(False, ReturnValue, 'TestRepeatedNumberIsCpf failed.');
end;

procedure TestTMyType.TestExceptionIsCpf;
var
  AValue: String;
begin
  AValue := '992.183';
  ExpectedException := Exception;
  TMyType.IsCpf(AValue, True);
end;

procedure TestTMyType.TestMaskAsCpf;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '99218344013';
  ReturnValue := TMyType.AsCpf(AValue);
  CheckEquals('992.183.440-13', ReturnValue, 'TestMaskAsCpf failed.');
end;

procedure TestTMyType.TestNoMaskAsCpf;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '992.183.440-13';
  ReturnValue := TMyType.AsCpf(AValue, False);
  CheckEquals('99218344013', ReturnValue, 'TestNoMaskAsCpf failed.');
end;

procedure TestTMyType.TestCpfMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.CpfMask;
  CheckEquals('###.###.###-##', ReturnValue, 'TestCpfMask failed.');
end;

//IE

procedure TestTMyType.TestIsentoIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := 'Isento';
  AUF := '';
  ReturnValue := TMyType.IsIe(AValue, AUF, true);
  CheckEquals(True, ReturnValue, 'TestIsentoIsIe failed.');
end;

procedure TestTMyType.TestAcIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '01.407.871/522-99';
  AUF := 'AC';
  ReturnValue := TMyType.IsIe(AValue, AUF, true);
  CheckEquals(True, ReturnValue, 'TestAcIsIe failed.');
end;

procedure TestTMyType.TestAlIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '248860615';
  AUF := 'AL';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestAlIsIe failed.');
end;

procedure TestTMyType.TestApIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '031991874';
  AUF := 'AP';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestApIsIe failed.');
end;

procedure TestTMyType.TestAmIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '07.547.648-7';
  AUF := 'AM';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestAmIsIe failed.');
end;

procedure TestTMyType.TestBaIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '7145453-01';
  AUF := 'BA';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestBaIsIe failed.');
end;

procedure TestTMyType.TestCeIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '07129205-5';
  AUF := 'CE';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestCeIsIe failed.');
end;

procedure TestTMyType.TestDfIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '07400888001-17';
  AUF := 'DF';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestDfIsIe failed.');
end;

procedure TestTMyType.TestEsIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '918627516';
  AUF := 'ES';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestEsIsIe failed.');
end;

procedure TestTMyType.TestGoIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '20.632.460-0';
  AUF := 'GO';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestGoIsIe failed.');
end;

procedure TestTMyType.TestMaIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '127052127';
  AUF := 'MA';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestMaIsIe failed.');
end;

procedure TestTMyType.TestMtIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '5717855199-0';
  AUF := 'MT';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestMtIsIe failed.');
end;

procedure TestTMyType.TestMsIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '283825162';
  AUF := 'MS';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestMsIsIe failed.');
end;

procedure TestTMyType.TestMgIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '570.224.179/2180';
  AUF := 'MG';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestMgIsIe failed.');
end;

procedure TestTMyType.TestPaIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '15-397137-1';
  AUF := 'PA';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestPaIsIe failed.');
end;

procedure TestTMyType.TestPbIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '16781052-9';
  AUF := 'PB';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestPbIsIe failed.');
end;

procedure TestTMyType.TestPrIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '095.89918-86';
  AUF := 'PR';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestPrIsIe failed.');
end;

procedure TestTMyType.TestPeIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '8550946-99';
  AUF := 'PE';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestPeIsIe failed.');
end;

procedure TestTMyType.TestPiIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '197951317';
  AUF := 'PI';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestPiIsIe failed.');
end;

procedure TestTMyType.TestRjIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '81.742.16-2';
  AUF := 'RJ';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestRjIsIe failed.');
end;

procedure TestTMyType.TestRnIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '20.016.898-3';
  AUF := 'RN';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestRnIsIe failed.');
end;

procedure TestTMyType.TestRsIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '267/8293763';
  AUF := 'RS';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestRsIsIe failed.');
end;

procedure TestTMyType.TestRoIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '4292556706257-2';
  AUF := 'RO';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestRoIsIe failed.');
end;

procedure TestTMyType.TestRrIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '24916648-1';
  AUF := 'RR';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestRrIsIe failed.');
end;

procedure TestTMyType.TestSpIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '682.461.698.455';
  AUF := 'SP';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestSpIsIe failed.');
end;

procedure TestTMyType.TestScIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '523.286.201';
  AUF := 'SC';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestScIsIe failed.');
end;

procedure TestTMyType.TestSeIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '82554826-8';
  AUF := 'SE';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestSeIsIe failed.');
end;

procedure TestTMyType.TestToIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '29.03.181430-1';
  AUF := 'TO';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(True, ReturnValue, 'TestToIsIe failed.');
end;

procedure TestTMyType.TestAcLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '407.871/522-99';
  AUF := 'AC';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestAcLengthIsIe failed.');
end;

procedure TestTMyType.TestAlLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '24886051656565';
  AUF := 'AL';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestAlLengthIsIe failed.');
end;

procedure TestTMyType.TestApLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '0319901874';
  AUF := 'AP';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestApLengthIsIe failed.');
end;

procedure TestTMyType.TestAmLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '07.547.648-17';
  AUF := 'AM';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestAmLengthIsIe failed.');
end;

procedure TestTMyType.TestBaLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '7145453-0';
  AUF := 'BA';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestBaLengthIsIe failed.');
end;

procedure TestTMyType.TestCeLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '07129205-500';
  AUF := 'CE';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestCeLengthIsIe failed.');
end;

procedure TestTMyType.TestDfLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '07400888001-170';
  AUF := 'DF';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestDfLengthIsIe failed.');
end;

procedure TestTMyType.TestEsLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '9186516';
  AUF := 'ES';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestEsLengthIsIe failed.');
end;

procedure TestTMyType.TestGoLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '20.632.460-00';
  AUF := 'GO';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestGoLengthIsIe failed.');
end;

procedure TestTMyType.TestMaLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '12752127';
  AUF := 'MA';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestMaLengthIsIe failed.');
end;

procedure TestTMyType.TestMtLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '571785005199-0';
  AUF := 'MT';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestMtLengthIsIe failed.');
end;

procedure TestTMyType.TestMsLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '28300825162';
  AUF := 'MS';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestMsLengthIsIe failed.');
end;

procedure TestTMyType.TestMgLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '565.570.224.179/2180';
  AUF := 'MG';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestMgLengthIsIe failed.');
end;

procedure TestTMyType.TestPaLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '15-397516137-1';
  AUF := 'PA';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestPaLengthIsIe failed.');
end;

procedure TestTMyType.TestPbLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '1052-9';
  AUF := 'PB';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestPbLengthIsIe failed.');
end;

procedure TestTMyType.TestPrLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '095.54489918-86';
  AUF := 'PR';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestPrLengthIsIe failed.');
end;

procedure TestTMyType.TestPeLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '8555460946-99';
  AUF := 'PE';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestPeLengthIsIe failed.');
end;

procedure TestTMyType.TestPiLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '951317';
  AUF := 'PI';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestPiLengthIsIe failed.');
end;

procedure TestTMyType.TestRjLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '811.742.16-2';
  AUF := 'RJ';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestRjLengthIsIe failed.');
end;

procedure TestTMyType.TestRnLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '201.016.898-3';
  AUF := 'RN';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestRnLengthIsIe failed.');
end;

procedure TestTMyType.TestRsLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '267/829453763';
  AUF := 'RS';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestRsLengthIsIe failed.');
end;

procedure TestTMyType.TestRoLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '4256706257-2';
  AUF := 'RO';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestRoLengthIsIe failed.');
end;

procedure TestTMyType.TestRrLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '249165146648-1';
  AUF := 'RR';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestRrLengthIsIe failed.');
end;

procedure TestTMyType.TestSpLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '654.682.461.698.455';
  AUF := 'SP';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestSpLengthIsIe failed.');
end;

procedure TestTMyType.TestScLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '286.201';
  AUF := 'SC';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestScLengthIsIe failed.');
end;

procedure TestTMyType.TestSeLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '8255144826-8';
  AUF := 'SE';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestSeLengthIsIe failed.');
end;

procedure TestTMyType.TestToLengthIsIe;
var
  ReturnValue: Boolean;
  AValue: String;
  AUF: String;
begin
  AValue := '29.1814300-1';
  AUF := 'TO';
  ReturnValue := TMyType.IsIe(AValue, AUF);
  CheckEquals(False, ReturnValue, 'TestToLengthIsIe failed.');
end;

procedure TestTMyType.TestExceptionAcIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '01.407.871/522-10';
  AUF := 'AC';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionAlIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '248860610';
  AUF := 'AL';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionApIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '031991813';
  AUF := 'AP';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionAmIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '07.547.648-8';
  AUF := 'AM';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionBaIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '7145453-20';
  AUF := 'BA';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionCeIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '07129205-9';
  AUF := 'CE';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionDfIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '07400888001-00';
  AUF := 'DF';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionEsIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '918627511';
  AUF := 'ES';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionGoIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '20.632.460-2';
  AUF := 'GO';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionMaIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '127052126';
  AUF := 'MA';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionMtIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '5717855199-1';
  AUF := 'MT';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionMsIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '283825164';
  AUF := 'MS';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionMgIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '570.224.179/4564';
  AUF := 'MG';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionPaIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '15-397137-0';
  AUF := 'PA';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionPbIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '16781052-0';
  AUF := 'PB';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionPrIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '095.89918-80';
  AUF := 'PR';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionPeIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '8550946-00';
  AUF := 'PE';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionPiIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '197951310';
  AUF := 'PI';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionRjIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '81.742.16-0';
  AUF := 'RJ';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionRnIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '20.016.898-0';
  AUF := 'RN';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionRsIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '267/8293732';
  AUF := 'RS';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionRoIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '4292556706257-0';
  AUF := 'RO';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionRrIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '24916648-0';
  AUF := 'RR';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionSpIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '682.461.698.651';
  AUF := 'SP';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionScIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '523.286.561';
  AUF := 'SC';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionSeIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '82554826-0';
  AUF := 'SE';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestExceptionToIsIe;
var
  AValue: String;
  AUF: String;
begin
  AValue := '29.03.181430-0';
  AUF := 'TO';
  ExpectedException := Exception;
  TMyType.IsIe(AValue, AUF, True);
end;

procedure TestTMyType.TestIsentoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := 'isento';
  ReturnValue := TMyType.AsIe(AValue, '');
  CheckEquals('ISENTO', ReturnValue, 'TestIsentoMaskAsIe failed.');
end;

procedure TestTMyType.TestAcMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '0140787152299';
  ReturnValue := TMyType.AsIe(AValue, 'AC');
  CheckEquals('01.407.871/522-99', ReturnValue, 'TestAcMaskAsIe failed.');
end;

procedure TestTMyType.TestAlMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '248860615';
  ReturnValue := TMyType.AsIe(AValue, 'AL');
  CheckEquals('248860615', ReturnValue, 'TestAlMaskAsIe failed.');
end;

procedure TestTMyType.TestApMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '031991874';
  ReturnValue := TMyType.AsIe(AValue, 'AP');
  CheckEquals('031991874', ReturnValue, 'TestApMaskAsIe failed.');
end;

procedure TestTMyType.TestAmMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '075476487';
  ReturnValue := TMyType.AsIe(AValue, 'AM');
  CheckEquals('07.547.648-7', ReturnValue, 'TestAmMaskAsIe failed.');
end;

procedure TestTMyType.TestBaMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '714545301';
  ReturnValue := TMyType.AsIe(AValue, 'BA');
  CheckEquals('7145453-01', ReturnValue, 'TestBaMaskAsIe failed.');
end;

procedure TestTMyType.TestCeMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '071292055';
  ReturnValue := TMyType.AsIe(AValue, 'CE');
  CheckEquals('07129205-5', ReturnValue, 'TestCeMaskAsIe failed.');
end;

procedure TestTMyType.TestDfMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '0740088800117';
  ReturnValue := TMyType.AsIe(AValue, 'DF');
  CheckEquals('07400888001-17', ReturnValue, 'TestDfMaskAsIe failed.');
end;

procedure TestTMyType.TestEsMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '918627516';
  ReturnValue := TMyType.AsIe(AValue, 'ES');
  CheckEquals('918627516', ReturnValue, 'TestEsMaskAsIe failed.');
end;

procedure TestTMyType.TestGoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '206324600';
  ReturnValue := TMyType.AsIe(AValue, 'GO');
  CheckEquals('20.632.460-0', ReturnValue, 'TestGoMaskAsIe failed.');
end;

procedure TestTMyType.TestMaMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '127052127';
  ReturnValue := TMyType.AsIe(AValue, 'MA');
  CheckEquals('127052127', ReturnValue, 'TestMaMaskAsIe failed.');
end;

procedure TestTMyType.TestMtMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '57178551990';
  ReturnValue := TMyType.AsIe(AValue, 'MT');
  CheckEquals('5717855199-0', ReturnValue, 'TestMtMaskAsIe failed.');
end;

procedure TestTMyType.TestMsMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '283825162';
  ReturnValue := TMyType.AsIe(AValue, 'MS');
  CheckEquals('28.382.516-2', ReturnValue, 'TestMsMaskAsIe failed.');
end;

procedure TestTMyType.TestMgMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '5702241792180';
  ReturnValue := TMyType.AsIe(AValue, 'MG');
  CheckEquals('570.224.179/2180', ReturnValue, 'TestMgMaskAsIe failed.');
end;

procedure TestTMyType.TestPaMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '153971371';
  ReturnValue := TMyType.AsIe(AValue, 'PA');
  CheckEquals('15-397137-1', ReturnValue, 'TestPaMaskAsIe failed.');
end;

procedure TestTMyType.TestPbMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '167810529';
  ReturnValue := TMyType.AsIe(AValue, 'PB');
  CheckEquals('16781052-9', ReturnValue, 'TestPbMaskAsIe failed.');
end;

procedure TestTMyType.TestPrMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '0958991886';
  ReturnValue := TMyType.AsIe(AValue, 'PR');
  CheckEquals('095.89918-86', ReturnValue, 'TestPrMaskAsIe failed.');
end;

procedure TestTMyType.TestPeMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '855094699';
  ReturnValue := TMyType.AsIe(AValue, 'PE');
  CheckEquals('8550946-99', ReturnValue, 'TestPeMaskAsIe failed.');
end;

procedure TestTMyType.TestPiMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '197951317';
  ReturnValue := TMyType.AsIe(AValue, 'PI');
  CheckEquals('197951317', ReturnValue, 'TestPiMaskAsIe failed.');
end;

procedure TestTMyType.TestRjMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '81742162';
  ReturnValue := TMyType.AsIe(AValue, 'RJ');
  CheckEquals('81.742.16-2', ReturnValue, 'TestRjMaskAsIe failed.');
end;

procedure TestTMyType.TestRnMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '200168983';
  ReturnValue := TMyType.AsIe(AValue, 'RN');
  CheckEquals('20.016.898-3', ReturnValue, 'TestRnMaskAsIe failed.');
end;

procedure TestTMyType.TestRsMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '2678293763';
  ReturnValue := TMyType.AsIe(AValue, 'RS');
  CheckEquals('267/8293763', ReturnValue, 'TestRsMaskAsIe failed.');
end;

procedure TestTMyType.TestRoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '42925567062572';
  ReturnValue := TMyType.AsIe(AValue, 'RO');
  CheckEquals('4292556706257-2', ReturnValue, 'TestRoMaskAsIe failed.');
end;

procedure TestTMyType.TestRrMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '249166481';
  ReturnValue := TMyType.AsIe(AValue, 'RR');
  CheckEquals('24916648-1', ReturnValue, 'TestRrMaskAsIe failed.');
end;

procedure TestTMyType.TestSpMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '682461698455';
  ReturnValue := TMyType.AsIe(AValue, 'SP');
  CheckEquals('682.461.698.455', ReturnValue, 'TestSpMaskAsIe failed.');
end;

procedure TestTMyType.TestScMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '523286201';
  ReturnValue := TMyType.AsIe(AValue, 'SC');
  CheckEquals('523.286.201', ReturnValue, 'TestScMaskAsIe failed.');
end;

procedure TestTMyType.TestSeMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '825548268';
  ReturnValue := TMyType.AsIe(AValue, 'SE');
  CheckEquals('82.554.826-8', ReturnValue, 'TestSeMaskAsIe failed.');
end;

procedure TestTMyType.TestToMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '29031814301';
  ReturnValue := TMyType.AsIe(AValue, 'TO');
  CheckEquals('29.03.181430-1', ReturnValue, 'TestToMaskAsIe failed.');
end;

procedure TestTMyType.TestIsentoNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := 'isento';
  ReturnValue := TMyType.AsIe(AValue, '', False);
  CheckEquals('ISENTO', ReturnValue, 'TestIsentoNoMaskAsIe failed.');
end;

procedure TestTMyType.TestAcNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '01.407.871/522-99';
  ReturnValue := TMyType.AsIe(AValue, 'AC', False);
  CheckEquals('0140787152299', ReturnValue, 'TestAcNoMaskAsIe failed.');
end;

procedure TestTMyType.TestAlNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '248860615';
  ReturnValue := TMyType.AsIe(AValue, 'AL', False);
  CheckEquals('248860615', ReturnValue, 'TestAlNoMaskAsIe failed.');
end;

procedure TestTMyType.TestApNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '031991874';
  ReturnValue := TMyType.AsIe(AValue, 'AP', False);
  CheckEquals('031991874', ReturnValue, 'TestApNoMaskAsIe failed.');
end;

procedure TestTMyType.TestAmNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '07.547.648-7';
  ReturnValue := TMyType.AsIe(AValue, 'AM', False);
  CheckEquals('075476487', ReturnValue, 'TestAmNoMaskAsIe failed.');
end;

procedure TestTMyType.TestBaNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '7145453-01';
  ReturnValue := TMyType.AsIe(AValue, 'BA', False);
  CheckEquals('714545301', ReturnValue, 'TestBaNoMaskAsIe failed.');
end;

procedure TestTMyType.TestCeNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '07129205-5';
  ReturnValue := TMyType.AsIe(AValue, 'CE', False);
  CheckEquals('071292055', ReturnValue, 'TestCeNoMaskAsIe failed.');
end;

procedure TestTMyType.TestDfNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '07400888001-17';
  ReturnValue := TMyType.AsIe(AValue, 'DF', False);
  CheckEquals('0740088800117', ReturnValue, 'TestDfNoMaskAsIe failed.');
end;

procedure TestTMyType.TestEsNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '918627516';
  ReturnValue := TMyType.AsIe(AValue, 'ES', False);
  CheckEquals('918627516', ReturnValue, 'TestEsNoMaskAsIe failed.');
end;

procedure TestTMyType.TestGoNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '20.632.460-0';
  ReturnValue := TMyType.AsIe(AValue, 'GO', False);
  CheckEquals('206324600', ReturnValue, 'TestGoNoMaskAsIe failed.');
end;

procedure TestTMyType.TestMaNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '127052127';
  ReturnValue := TMyType.AsIe(AValue, 'MA', False);
  CheckEquals('127052127', ReturnValue, 'TestMaNoMaskAsIe failed.');
end;

procedure TestTMyType.TestMtNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '5717855199-0';
  ReturnValue := TMyType.AsIe(AValue, 'MT', False);
  CheckEquals('57178551990', ReturnValue, 'TestMtNoMaskAsIe failed.');
end;

procedure TestTMyType.TestMsNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '283825162';
  ReturnValue := TMyType.AsIe(AValue, 'MS', False);
  CheckEquals('283825162', ReturnValue, 'TestMsNoMaskAsIe failed.');
end;

procedure TestTMyType.TestMgNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '570.224.179/2180';
  ReturnValue := TMyType.AsIe(AValue, 'MG', False);
  CheckEquals('5702241792180', ReturnValue, 'TestMgNoMaskAsIe failed.');
end;

procedure TestTMyType.TestPaNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '15-397137-1';
  ReturnValue := TMyType.AsIe(AValue, 'PA', False);
  CheckEquals('153971371', ReturnValue, 'TestPaNoMaskAsIe failed.');
end;

procedure TestTMyType.TestPbNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '16781052-9';
  ReturnValue := TMyType.AsIe(AValue, 'PB', False);
  CheckEquals('167810529', ReturnValue, 'TestPbNoMaskAsIe failed.');
end;

procedure TestTMyType.TestPrNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '095.89918-86';
  ReturnValue := TMyType.AsIe(AValue, 'PR', False);
  CheckEquals('0958991886', ReturnValue, 'TestPrNoMaskAsIe failed.');
end;

procedure TestTMyType.TestPeNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '8550946-99';
  ReturnValue := TMyType.AsIe(AValue, 'PE', False);
  CheckEquals('855094699', ReturnValue, 'TestPeNoMaskAsIe failed.');
end;

procedure TestTMyType.TestPiNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '197951317';
  ReturnValue := TMyType.AsIe(AValue, 'PI', False);
  CheckEquals('197951317', ReturnValue, 'TestPiNoMaskAsIe failed.');
end;

procedure TestTMyType.TestRjNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '81.742.16-2';
  ReturnValue := TMyType.AsIe(AValue, 'RJ', False);
  CheckEquals('81742162', ReturnValue, 'TestRjNoMaskAsIe failed.');
end;

procedure TestTMyType.TestRnNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '20.016.898-3';
  ReturnValue := TMyType.AsIe(AValue, 'RN', False);
  CheckEquals('200168983', ReturnValue, 'TestRnNoMaskAsIe failed.');
end;

procedure TestTMyType.TestRsNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '267/8293763';
  ReturnValue := TMyType.AsIe(AValue, 'RS', False);
  CheckEquals('2678293763', ReturnValue, 'TestRsNoMaskAsIe failed.');
end;

procedure TestTMyType.TestRoNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '4292556706257-2';
  ReturnValue := TMyType.AsIe(AValue, 'RO', False);
  CheckEquals('42925567062572', ReturnValue, 'TestRoNoMaskAsIe failed.');
end;

procedure TestTMyType.TestRrNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '24916648-1';
  ReturnValue := TMyType.AsIe(AValue, 'RR', False);
  CheckEquals('249166481', ReturnValue, 'TestRrNoMaskAsIe failed.');
end;

procedure TestTMyType.TestSpNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '682.461.698.455';
  ReturnValue := TMyType.AsIe(AValue, 'SP', False);
  CheckEquals('682461698455', ReturnValue, 'TestSpNoMaskAsIe failed.');
end;

procedure TestTMyType.TestScNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '523.286.201';
  ReturnValue := TMyType.AsIe(AValue, 'SC', False);
  CheckEquals('523286201', ReturnValue, 'TestScNoMaskAsIe failed.');
end;

procedure TestTMyType.TestSeNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '82554826-8';
  ReturnValue := TMyType.AsIe(AValue, 'SE', False);
  CheckEquals('825548268', ReturnValue, 'TestSeNoMaskAsIe failed.');
end;

procedure TestTMyType.TestToNoMaskAsIe;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '29.03.181430-1';
  ReturnValue := TMyType.AsIe(AValue, 'TO', False);
  CheckEquals('29031814301', ReturnValue, 'TestToNoMaskAsIe failed.');
end;

procedure TestTMyType.TestIsentoIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := 'isento';
  ReturnValue := TMyType.IeMask(AValue, '');
  CheckEquals('', ReturnValue, 'TestIsentoIeMask failed.');
end;

procedure TestTMyType.TestAcIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'AC', False);
  CheckEquals('##.###.###/###-##', ReturnValue, 'TestAcIeMask failed.');
end;

procedure TestTMyType.TestAlIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'AL', False);
  CheckEquals('#########', ReturnValue, 'TestAlIeMask failed.');
end;

procedure TestTMyType.TestApIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'AP', False);
  CheckEquals('#########', ReturnValue, 'TestApIeMask failed.');
end;

procedure TestTMyType.TestAmIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'AM', False);
  CheckEquals('##.###.###-#', ReturnValue, 'TestAmIeMask failed.');
end;

procedure TestTMyType.TestBaIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'BA', False);
  CheckEquals('#######-##', ReturnValue, 'TestBaIeMask failed.');
end;

procedure TestTMyType.TestCeIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'CE', False);
  CheckEquals('########-#', ReturnValue, 'TestCeIeMask failed.');
end;

procedure TestTMyType.TestDfIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'DF', False);
  CheckEquals('###########-##', ReturnValue, 'TestDfIeMask failed.');
end;

procedure TestTMyType.TestEsIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'ES', False);
  CheckEquals('#########', ReturnValue, 'TestEsIeMask failed.');
end;

procedure TestTMyType.TestGoIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'GO', False);
  CheckEquals('##.###.###-#', ReturnValue, 'TestGoIeMask failed.');
end;

procedure TestTMyType.TestMaIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'MA', False);
  CheckEquals('#########', ReturnValue, 'TestMaIeMask failed.');
end;

procedure TestTMyType.TestMtIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'MT', False);
  CheckEquals('##########-#', ReturnValue, 'TestMtIeMask failed.');
end;

procedure TestTMyType.TestMsIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'MS', False);
  CheckEquals('##.###.###-#', ReturnValue, 'TestMsIeMask failed.');
end;

procedure TestTMyType.TestMgIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'MG', False);
  CheckEquals('###.###.###/####', ReturnValue, 'TestMgIeMask failed.');
end;

procedure TestTMyType.TestPaIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'PA', False);
  CheckEquals('##-######-#', ReturnValue, 'TestPaIeMask failed.');
end;

procedure TestTMyType.TestPbIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'PB', False);
  CheckEquals('########-#', ReturnValue, 'TestPbIeMask failed.');
end;

procedure TestTMyType.TestPrIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'PR', False);
  CheckEquals('###.#####-##', ReturnValue, 'TestPrIeMask failed.');
end;

procedure TestTMyType.TestPeIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'PE', False);
  CheckEquals('#######-##', ReturnValue, 'TestPeIeMask failed.');
end;

procedure TestTMyType.TestPiIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'PI', False);
  CheckEquals('#########', ReturnValue, 'TestPiIeMask failed.');
end;

procedure TestTMyType.TestRjIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'RJ', False);
  CheckEquals('##.###.##-#', ReturnValue, 'TestRjIeMask failed.');
end;

procedure TestTMyType.TestRnIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'RN', False);
  CheckEquals('##.###.###-#', ReturnValue, 'TestRnIeMask failed.');
end;

procedure TestTMyType.TestRsIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'RS', False);
  CheckEquals('###/#######', ReturnValue, 'TestRsIeMask failed.');
end;

procedure TestTMyType.TestRoIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'RO', False);
  CheckEquals('###.#####-#', ReturnValue, 'TestRoIeMask failed.');
end;

procedure TestTMyType.TestRrIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'RR', False);
  CheckEquals('########-#', ReturnValue, 'TestRrIeMask failed.');
end;

procedure TestTMyType.TestSpIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'SP', False);
  CheckEquals('###.###.###.###', ReturnValue, 'TestSpIeMask failed.');
end;

procedure TestTMyType.TestScIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'SC', False);
  CheckEquals('###.###.###', ReturnValue, 'TestScIeMask failed.');
end;

procedure TestTMyType.TestSeIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'SE', False);
  CheckEquals('##.###.###-#', ReturnValue, 'TestSeIeMask failed.');
end;

procedure TestTMyType.TestToIeMask;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '';
  ReturnValue := TMyType.IeMask(AValue, 'TO', False);
  CheckEquals('##.##.######-#', ReturnValue, 'TestToIeMask failed.');
end;

//CEP

procedure TestTMyType.TestIsCep;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '59700000';
  ReturnValue := TMyType.IsCep(AValue);
  CheckEquals(True, ReturnValue, 'TestIsCep failed.');
end;

procedure TestTMyType.TestRnIsCep;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '59700000';
  ReturnValue := TMyType.IsCep(AValue, 'RN');
  CheckEquals(True, ReturnValue, 'TestRnIsCep failed.');
end;

procedure TestTMyType.TestRnNoIsCep;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '55641180';
  ReturnValue := TMyType.IsCep(AValue, 'RN');
  CheckEquals(False, ReturnValue, 'TestRnNoIsCep failed.');
end;

procedure TestTMyType.TestLengthIsCep;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '992.183';
  ReturnValue := TMyType.IsCep(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsCep failed.');
end;

procedure TestTMyType.TestExceptionIsCep;
var
  AValue: String;
begin
  AValue := '992.183';
  ExpectedException := Exception;
  TMyType.IsCep(AValue, '', True);
end;

procedure TestTMyType.TestMaskAsCep;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '59700000';
  ReturnValue := TMyType.AsCep(AValue);
  CheckEquals('59700-000', ReturnValue, 'TestMaskAsCep failed.');
end;

procedure TestTMyType.TestNoMaskAsCep;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '59700-000';
  ReturnValue := TMyType.AsCep(AValue, '', False);
  CheckEquals('59700000', ReturnValue, 'TestNoMaskAsCep failed.');
end;

procedure TestTMyType.TestCepMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.CepMask;
  CheckEquals('#####-###', ReturnValue, 'TestCepMask failed.');
end;

//Telephone

procedure TestTMyType.TestIsTelephone;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '8433333445';
  ReturnValue := TMyType.IsTelephone(AValue);
  CheckEquals(True, ReturnValue, 'TestIsTelephone failed.');
end;

procedure TestTMyType.TestLengthIsTelephone;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '992.183';
  ReturnValue := TMyType.IsTelephone(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsTelephone failed.');
end;

procedure TestTMyType.TestExceptionIsTelephone;
var
  AValue: String;
begin
  AValue := '992.183';
  ExpectedException := Exception;
  TMyType.IsTelephone(AValue, True);
end;

procedure TestTMyType.TestMaskAsTelephone;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '8433333445';
  ReturnValue := TMyType.AsTelephone(AValue);
  CheckEquals('(84)3333-3445', ReturnValue, 'TestMaskAsTelephone failed.');
end;

procedure TestTMyType.TestNoMaskAsTelephone;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '(84)3333-3445';
  ReturnValue := TMyType.AsTelephone(AValue, False);
  CheckEquals('8433333445', ReturnValue, 'TestNoMaskAsTelephone failed.');
end;

procedure TestTMyType.TestTelephoneMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.TelephoneMask;
  CheckEquals('(##)####-####', ReturnValue, 'TestTelephoneMask failed.');
end;

//CellPhone

procedure TestTMyType.TestIsCellPhone;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '84998180015';
  ReturnValue := TMyType.IsCellPhone(AValue);
  CheckEquals(True, ReturnValue, 'TestIsCellPhone failed.');
end;

procedure TestTMyType.TestLengthIsCellPhone;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '992.183';
  ReturnValue := TMyType.IsCellPhone(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsCellPhone failed.');
end;

procedure TestTMyType.TestExceptionIsCellPhone;
var
  AValue: String;
begin
  AValue := '992.183';
  ExpectedException := Exception;
  TMyType.IsCellPhone(AValue, True);
end;

procedure TestTMyType.TestMaskAsCellPhone;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '84998180015';
  ReturnValue := TMyType.AsCellPhone(AValue);
  CheckEquals('(84)99818-0015', ReturnValue, 'TestMaskAsCellPhone failed.');
end;

procedure TestTMyType.TestNoMaskAsCellPhone;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '(84)99818-0015';
  ReturnValue := TMyType.AsCellPhone(AValue, False);
  CheckEquals('84998180015', ReturnValue, 'TestNoMaskAsCellPhone failed.');
end;

procedure TestTMyType.TestCellPhoneMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.CellPhoneMask;
  CheckEquals('(##)#####-####', ReturnValue, 'TestCellPhoneMask failed.');
end;

//Card

procedure TestTMyType.TestIsCard;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '5040 0010 4059 0050';
  ReturnValue := TMyType.IsCard(AValue);
  CheckEquals(True, ReturnValue, 'TestIsCard failed.');
end;

procedure TestTMyType.TestLengthIsCard;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '92.396';
  ReturnValue := TMyType.IsCard(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsCard failed.');
end;

procedure TestTMyType.TestExceptionIsCard;
var
  AValue: String;
begin
  AValue := '92.396';
  ExpectedException := Exception;
  TMyType.IsCard(AValue, True);
end;

procedure TestTMyType.TestMaskAsCard;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '5040001040590050';
  ReturnValue := TMyType.AsCard(AValue);
  CheckEquals('5040 0010 4059 0050', ReturnValue, 'TestMaskAsCard failed.');
end;

procedure TestTMyType.TestNoMaskAsCard;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '5040 0010 4059 0050';
  ReturnValue := TMyType.AsCard(AValue, False);
  CheckEquals('5040001040590050', ReturnValue, 'TestNoMaskAsCard failed.');
end;

procedure TestTMyType.TestCardMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.CardMask;
  CheckEquals('#### #### #### ####', ReturnValue, 'TestCardMask failed.');
end;

//Pis

procedure TestTMyType.TestIsPis;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '93785553258';
  ReturnValue := TMyType.IsPis(AValue);
  CheckEquals(True, ReturnValue, 'TestIsPis failed.');
end;

procedure TestTMyType.TestLengthIsPis;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '92.396';
  ReturnValue := TMyType.IsPis(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsPis failed.');
end;

procedure TestTMyType.TestExceptionIsPis;
var
  AValue: String;
begin
  AValue := '92.396';
  ExpectedException := Exception;
  TMyType.IsPis(AValue, True);
end;

procedure TestTMyType.TestMaskAsPis;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '93785553258';
  ReturnValue := TMyType.AsPis(AValue);
  CheckEquals('937.85553.25-8', ReturnValue, 'TestMaskAsPis failed.');
end;

procedure TestTMyType.TestNoMaskAsPis;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '937.85553.25-8';
  ReturnValue := TMyType.AsPis(AValue, False);
  CheckEquals('93785553258', ReturnValue, 'TestNoMaskAsPis failed.');
end;

procedure TestTMyType.TestPisMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.PisMask;
  CheckEquals('###.#####.##-#', ReturnValue, 'TestPisMask failed.');
end;

//Suframa

procedure TestTMyType.TestIsSuframa;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '123456789';
  ReturnValue := TMyType.IsSuframa(AValue);
  CheckEquals(True, ReturnValue, 'TestIsSuframa failed.');
end;

procedure TestTMyType.TestLengthIsSuframa;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '92.396';
  ReturnValue := TMyType.IsSuframa(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsSuframa failed.');
end;

procedure TestTMyType.TestExceptionIsSuframa;
var
  AValue: String;
begin
  AValue := '92.396';
  ExpectedException := Exception;
  TMyType.IsSuframa(AValue, True);
end;

procedure TestTMyType.TestMaskAsSuframa;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '123456789';
  ReturnValue := TMyType.AsSuframa(AValue);
  CheckEquals('123456789', ReturnValue, 'TestMaskAsSuframa failed.');
end;

procedure TestTMyType.TestNoMaskAsSuframa;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '123456789';
  ReturnValue := TMyType.AsSuframa(AValue, False);
  CheckEquals('123456789', ReturnValue, 'TestNoMaskAsSuframa failed.');
end;

//GTIN

procedure TestTMyType.Test8IsGtin;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '40170725';
  ReturnValue := TMyType.IsGtin(AValue);
  CheckEquals(True, ReturnValue, 'Test8IsGtin failed.');
end;

procedure TestTMyType.Test12IsGtin;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '123601057072';
  ReturnValue := TMyType.IsGtin(AValue);
  CheckEquals(True, ReturnValue, 'Test12IsGtin failed.');
end;

procedure TestTMyType.Test13IsGtin;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '4070071967072';
  ReturnValue := TMyType.IsGtin(AValue);
  CheckEquals(True, ReturnValue, 'TestIsGtin failed.');
end;

procedure TestTMyType.Test14IsGtin;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '17898357410043';
  ReturnValue := TMyType.IsGtin(AValue);
  CheckEquals(True, ReturnValue, 'TestIsGtin failed.');
end;

procedure TestTMyType.TestLengthIsGtin;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '92.396';
  ReturnValue := TMyType.IsGtin(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsGtin failed.');
end;

procedure TestTMyType.TestExceptionIsGtin;
var
  AValue: String;
begin
  AValue := '92.396';
  ExpectedException := Exception;
  TMyType.IsGtin(AValue, True);
end;

procedure TestTMyType.TestMaskAsGtin;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '17898357410043';
  ReturnValue := TMyType.AsGtin(AValue);
  CheckEquals('17898357410043', ReturnValue, 'TestMaskAsGtin failed.');
end;

procedure TestTMyType.TestNoMaskAsGtin;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '17898357410043';
  ReturnValue := TMyType.AsGtin(AValue, False);
  CheckEquals('17898357410043', ReturnValue, 'TestNoMaskAsGtin failed.');
end;

//Renavam

procedure TestTMyType.TestIsRenavam;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '57186523665';
  ReturnValue := TMyType.IsRenavam(AValue);
  CheckEquals(True, ReturnValue, 'TestIsRenavam failed.');
end;

procedure TestTMyType.TestLengthIsRenavam;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '92.396';
  ReturnValue := TMyType.IsRenavam(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsRenavam failed.');
end;

procedure TestTMyType.TestExceptionIsRenavam;
var
  AValue: String;
begin
  AValue := '92.396';
  ExpectedException := Exception;
  TMyType.IsRenavam(AValue, True);
end;

procedure TestTMyType.TestMaskAsRenavam;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '57186523665';
  ReturnValue := TMyType.AsRenavam(AValue);
  CheckEquals('57186523665', ReturnValue, 'TestMaskAsRenavam failed.');
end;

procedure TestTMyType.TestNoMaskAsRenavam;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '57186523665';
  ReturnValue := TMyType.AsRenavam(AValue, False);
  CheckEquals('57186523665', ReturnValue, 'TestNoMaskAsRenavam failed.');
end;

procedure TestTMyType.TestRenavamMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.RenavamMask;
  CheckEquals('###########', ReturnValue, 'TestRenavamMask failed.');
end;

//CNH

procedure TestTMyType.TestIsCnh;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '06342184628';
  ReturnValue := TMyType.IsCnh(AValue);
  CheckEquals(True, ReturnValue, 'TestIsCnh failed.');
end;

procedure TestTMyType.TestLengthIsCnh;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '92.396';
  ReturnValue := TMyType.IsCnh(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsCnh failed.');
end;

procedure TestTMyType.TestExceptionIsCnh;
var
  AValue: String;
begin
  AValue := '92.396';
  ExpectedException := Exception;
  TMyType.IsCnh(AValue, True);
end;

procedure TestTMyType.TestMaskAsCnh;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '06342184628';
  ReturnValue := TMyType.AsCnh(AValue);
  CheckEquals('06342184628', ReturnValue, 'TestMaskAsCnh failed.');
end;

procedure TestTMyType.TestNoMaskAsCnh;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '06342184628';
  ReturnValue := TMyType.AsCnh(AValue, False);
  CheckEquals('06342184628', ReturnValue, 'TestNoMaskAsCnh failed.');
end;

procedure TestTMyType.TestCnhMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.CnhMask;
  CheckEquals('###########', ReturnValue, 'TestCnhMask failed.');
end;

//License plate

procedure TestTMyType.TestIsLicensePlate;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'LNJ-6414';
  ReturnValue := TMyType.IsLicensePlate(AValue);
  CheckEquals(True, ReturnValue, 'TestIsLicensePlate failed.');
end;

procedure TestTMyType.TestLengthIsLicensePlate;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '92.396';
  ReturnValue := TMyType.IsLicensePlate(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsLicensePlate failed.');
end;

procedure TestTMyType.TestExceptionIsLicensePlate;
var
  AValue: String;
begin
  AValue := '92.396';
  ExpectedException := Exception;
  TMyType.IsLicensePlate(AValue, True);
end;

procedure TestTMyType.TestMaskAsLicensePlate;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := 'LNJ6414';
  ReturnValue := TMyType.AsLicensePlate(AValue);
  CheckEquals('LNJ-6414', ReturnValue, 'TestMaskAsLicensePlate failed.');
end;

procedure TestTMyType.TestNoMaskAsLicensePlate;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := 'LNJ-6414';
  ReturnValue := TMyType.AsLicensePlate(AValue, False);
  CheckEquals('LNJ6414', ReturnValue, 'TestNoMaskAsLicensePlate failed.');
end;

procedure TestTMyType.TestLicensePlateMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.LicensePlateMask;
  CheckEquals('###-####', ReturnValue, 'TestLicensePlateMask failed.');
end;

//Email

procedure TestTMyType.TestIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'contact@mail.com';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(True, ReturnValue, 'TestIsEmail failed.');
end;

procedure TestTMyType.TestEmptyIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestEmptyIsEmail failed.');
end;

procedure TestTMyType.TestLengthIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'a@m.com';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsEmail failed.');
end;

procedure TestTMyType.TestAtSignIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'cont@ct@mail.com';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestAtSignIsEmail failed.');
end;

procedure TestTMyType.TestPointIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'contact@mailcom';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestPointIsEmail failed.');
end;

procedure TestTMyType.TestTwoPointsIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'contact@mail..com';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestPointIsEmail failed.');
end;

procedure TestTMyType.TestStartAtSignIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '@contactmail.com';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestStartAtSignIsEmail failed.');
end;

procedure TestTMyType.TestStartPointIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := '.contact@mail.com';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestStartPointIsEmail failed.');
end;

procedure TestTMyType.TestEndAtSignIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'contactmail.com@';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestEndAtSignIsEmail failed.');
end;

procedure TestTMyType.TestEndPointIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'contact@mail.com.';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestEndPointIsEmail failed.');
end;

procedure TestTMyType.TestAtSignTogetherPointIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'contact@.mail.com.';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestAtSignTogetherPointIsEmail failed.');
end;

procedure TestTMyType.TestLastPointAfterAtSignIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'contact.me@mailcom';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestLastPointAfterAtSignIsEmail failed.');
end;

procedure TestTMyType.TestInvalidCharacterIsEmail;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'cont#ct.me@mail.com';
  ReturnValue := TMyType.IsEmail(AValue);
  CheckEquals(False, ReturnValue, 'TestInvalidCharacterIsEmail failed.');
end;

//UF

procedure TestTMyType.TestIsUf;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'Rn';
  ReturnValue := TMyType.IsUf(AValue);
  CheckEquals(True, ReturnValue, 'TestIsUf failed.');
end;

procedure TestTMyType.TestLengthIsUf;
var
  ReturnValue: Boolean;
  AValue: String;
begin
  AValue := 'RNn';
  ReturnValue := TMyType.IsUf(AValue);
  CheckEquals(False, ReturnValue, 'TestLengthIsUF failed.');
end;

procedure TestTMyType.TestExceptionIsUf;
var
  AValue: String;
begin
  AValue := 'AA';
  ExpectedException := Exception;
  TMyType.IsUf(AValue, True);
end;

//Date

procedure TestTMyType.TestIsDatemmddyyyy;
var
  ReturnValue: Boolean;
  ADate: String;
  ADelimiter: Char;
  AFormat: TDateFormat;
begin
  ADate := '01/10/2019';
  ADelimiter := '/';
  AFormat := TDateFormat.mmddyyyy;
  ReturnValue := TMyType.IsDate(ADate, ADelimiter, AFormat);
  CheckEquals(True, ReturnValue, 'TestIsDatemmddyyyy failed.');
end;

procedure TestTMyType.TestIsDatemmddyy;
var
  ReturnValue: Boolean;
  ADate: String;
  ADelimiter: Char;
  AFormat: TDateFormat;
begin
  ADate := '01/10/19';
  ADelimiter := '/';
  AFormat := TDateFormat.mmddyy;
  ReturnValue := TMyType.IsDate(ADate, ADelimiter, AFormat);
  CheckEquals(True, ReturnValue, 'TestIsDatemmddyy failed.');
end;

procedure TestTMyType.TestIsDateddmmyyyy;
var
  ReturnValue: Boolean;
  ADate: String;
  ADelimiter: Char;
  AFormat: TDateFormat;
begin
  ADate := '10/01/2019';
  ADelimiter := '/';
  AFormat := TDateFormat.ddmmyyyy;
  ReturnValue := TMyType.IsDate(ADate, ADelimiter, AFormat);
  CheckEquals(True, ReturnValue, 'TestIsDateddmmyyyy failed.');
end;

procedure TestTMyType.TestIsDateddmmyy;
var
  ReturnValue: Boolean;
  ADate: String;
  ADelimiter: Char;
  AFormat: TDateFormat;
begin
  ADate := '10/01/19';
  ADelimiter := '/';
  AFormat := TDateFormat.ddmmyy;
  ReturnValue := TMyType.IsDate(ADate, ADelimiter, AFormat);
  CheckEquals(True, ReturnValue, 'TestIsDateddmmyy failed.');
end;

procedure TestTMyType.TestIsDateyyyymmdd;
var
  ReturnValue: Boolean;
  ADate: String;
  ADelimiter: Char;
  AFormat: TDateFormat;
begin
  ADate := '2019-01-10';
  ADelimiter := '-';
  AFormat := TDateFormat.yyyymmdd;
  ReturnValue := TMyType.IsDate(ADate, ADelimiter, AFormat);
  CheckEquals(True, ReturnValue, 'TestIsDateyyyymmdd failed.');
end;

procedure TestTMyType.TestIsDateyymmdd;
var
  ReturnValue: Boolean;
  ADate: String;
  ADelimiter: Char;
  AFormat: TDateFormat;
begin
  ADate := '19-01-10';
  ADelimiter := '-';
  AFormat := TDateFormat.yymmdd;
  ReturnValue := TMyType.IsDate(ADate, ADelimiter, AFormat);
  CheckEquals(True, ReturnValue, 'TestIsDateyymmdd failed.');
end;

procedure TestTMyType.TestmmddyyyyMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.mmddyyyyMask('/');
  CheckEquals('##/##/####', ReturnValue, 'TestmmddyyyyMask failed.');
end;

procedure TestTMyType.TestmmddyyMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.mmddyyMask('/');
  CheckEquals('##/##/##', ReturnValue, 'TestmmddyyMask failed.');
end;

procedure TestTMyType.TestddmmyyyyMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.ddmmyyyyMask('/');
  CheckEquals('##/##/####', ReturnValue, 'TestddmmyyyyMask failed.');
end;

procedure TestTMyType.TestddmmyyMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.ddmmyyMask('/');
  CheckEquals('##/##/##', ReturnValue, 'TestddmmyyMask failed.');
end;

procedure TestTMyType.TestyyyymmddMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.yyyymmddMask('-');
  CheckEquals('####-##-##', ReturnValue, 'TestyyyymmddMask failed.');
end;

procedure TestTMyType.TestyymmddMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.yymmddMask('-');
  CheckEquals('##-##-##', ReturnValue, 'TestyymmddMask failed.');
end;

//NCM

procedure TestTMyType.TestMaskAsNcm;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '12345678';
  ReturnValue := TMyType.AsNcm(AValue);
  CheckEquals('1234.56.78', ReturnValue, 'TestMaskAsNcm failed.');
end;

procedure TestTMyType.TestNcmMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.NcmMask;
  CheckEquals('####.##.##', ReturnValue, 'TestNcmMask failed.');
end;

//CEST

procedure TestTMyType.TestMaskAsCest;
var
  ReturnValue: string;
  AValue: string;
begin
  AValue := '1234567';
  ReturnValue := TMyType.AsCest(AValue);
  CheckEquals('12.345.67', ReturnValue, 'TestMaskAsCest failed.');
end;

procedure TestTMyType.TestCestMask;
var
  ReturnValue: string;
begin
  ReturnValue := TMyType.CestMask;
  CheckEquals('##.###.##', ReturnValue, 'TestCestMask failed.');
end;


initialization
  RegisterTest(TestTMyType.Suite);

end.

