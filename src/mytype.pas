unit mytype;

interface

uses
  //delphi
  System.SysUtils,
  System.Classes,
  System.MaskUtils,
  System.StrUtils,
  System.Variants,
  System.Math,
  System.RegularExpressions,

  //codeencode
  mystring;

type
  EValidation = class(Exception);

  TDateFormat = (mmddyyyy, mmddyy, ddmmyyyy, ddmmyy, yyyymmdd, yymmdd);

  TMyType = class
  private
    { private declarations }
    class function Mask(AMask, AText: String): String;
    class function IsCnpjCore(const ACnpj: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsCpfCore(const ACpf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsIeCore(const AIe: String; const AUf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsCepCore(const ACep: String; out ADescriptionErrors: String; const AUf: String = ''; const ARaiseExcept: Boolean = False): Boolean;
    class function IsTelephoneCore(const ATelephone: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsCellPhoneCore(const ACellPhone: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsCardCore(const ACard: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsPisCore(const APis: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsSuframaCore(const ASuframa: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsGtinCore(const AGtin: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsRenavamCore(const ARenavam: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsCnhCore(const ACnh: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsLicensePlateCore(const ALicensePlate: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsEmailCore(const AEmail: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsUfCore(const AUf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
    class function IsDateCore(const ADate: String; const ADelimiter: Char; const AFormat: TDateFormat; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
  public
    { public declarations }
    class function IsCnpj(const ACnpj: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsCnpj(const ACnpj: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsCnpj(const ACnpj: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function CnpjMask: String;

    class function IsCpf(const ACpf: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsCpf(const ACpf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsCpf(const ACpf: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function CpfMask: String;

    class function IsIe(const AIe: String; const AUf: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsIe(const AIe: String; const AUf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsIe(const AIe: String; const AUf: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function IeMask(const AIe: String; const AUf: String; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;

    class function IsCep(const ACep: String; const AUf: String = ''; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsCep(const ACep: String; out ADescriptionErrors: String; const AUf: String = ''; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsCep(const ACep: String; const AUf: String = ''; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function CepMask: String;

    class function IsTelephone(const ATelephone: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsTelephone(const ATelephone: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsTelephone(const ATelephone: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function TelephoneMask: String;

    class function IsCellPhone(const ACellPhone: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsCellPhone(const ACellPhone: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsCellPhone(const ACellPhone: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function CellPhoneMask: String;

    class function IsCard(const ACard: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsCard(const ACard: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsCard(const ACard: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function CardMask: String;

    class function IsPis(const APis: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsPis(const APis: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsPis(const APis: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function PisMask: String;

    class function IsSuframa(const ASuframa: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsSuframa(const ASuframa: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsSuframa(const ASuframa: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;

    class function IsGtin(const AGtin: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsGtin(const AGtin: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsGtin(const AGtin: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function GtinMask: String;

    class function IsRenavam(const ARenavam: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsRenavam(const ARenavam: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsRenavam(const ARenavam: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function RenavamMask: String;

    class function IsCnh(const ACnh: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsCnh(const ACnh: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsCnh(const ACnh: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function CnhMask: String;

    class function IsLicensePlate(const ALicensePlate: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsLicensePlate(const ALicensePlate: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsLicensePlate(const ALicensePlate: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function LicensePlateMask: String;

    class function IsEmail(const AEmail: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsEmail(const AEmail: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;

    class function IsUf(const AUf: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsUf(const AUf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;

    class function IsDate(const ADate: String; const ADelimiter: Char; const AFormat: TDateFormat; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function IsDate(const ADate: String; const ADelimiter: Char; const AFormat: TDateFormat; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean; overload;
    class function AsDate(const ADate: String; const ADelimiter: Char; const AFormat: TDateFormat; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function mmddyyyyMask(const ADelimiter: Char): String;
    class function mmddyyMask(const ADelimiter: Char): String;
    class function ddmmyyyyMask(const ADelimiter: Char): String;
    class function ddmmyyMask(const ADelimiter: Char): String;
    class function yyyymmddMask(const ADelimiter: Char): String;
    class function yymmddMask(const ADelimiter: Char): String;

    class function AsNcm(const ANcm: String; const AMask: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function NcmMask: String;

    class function AsCest(const ACest: String; const AMask: Boolean = True; const ARaiseExcept: Boolean = False): String;
    class function CestMask: String;
  end;

const
  LIST_UF = ',AC,AL,AP,AM,BA,CE,DF,ES,GO,MA,MT,MS,MG,PA,PB,PR,PE,PI,RJ,RN,RS,RO,RR,SC,SP,SE,TO,EX,';

implementation

{ TMyType }

class function TMyType.IsCnpjCore(const ACnpj: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
var
  LCnpj: String;
  LDig13: String;
  LDig14: String;
  LWeight: Integer;
  S: Integer;
  R: Integer;
  I: Integer;
begin
  LCnpj := TMyString.OnlyNumber(ACnpj);

  if (LCnpj.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CNPJ não pode ser vazio.');
    ADescriptionErrors := 'CNPJ não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LCnpj.Length <> 14) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CNPJ deve ter 14 dígitos.');
    ADescriptionErrors := 'CNPJ deve ter 14 dígitos.';
    Result := False;
    Exit
  end;

  if Pos(LCnpj,'11111111111111.22222222222222.33333333333333.44444444444444.55555555555555.'+
         '66666666666666.77777777777777.88888888888888.99999999999999.00000000000000') > 0 then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CNPJ informado é inválido.');
    ADescriptionErrors := 'CNPJ informado é inválido.';
    Result := False;
    Exit;
  end;

  try
    S := 0;
    LWeight := 2;
    for I := 12 downto 1 do
    begin
      S := S + (StrToInt(LCnpj[I]) * LWeight);
      LWeight := LWeight + 1;
      if (LWeight = 10) then
        LWeight := 2;
    end;
    R := S mod 11;
    if ((R = 0) or (R = 1)) then
      LDig13 := '0'
    else
      Str((11-R):1, LDig13);

    S := 0;
    LWeight := 2;
    for I := 13 downto 1 do
    begin
      S := S + (StrToInt(LCnpj[I]) * LWeight);
      LWeight := LWeight + 1;
      if (LWeight = 10) then
        LWeight := 2;
    end;
    R := S mod 11;
    if ((R = 0) or (R = 1)) then
      LDig14 := '0'
    else
      Str((11-R):1, LDig14);

    if ((LDig13 = LCnpj[13]) and (LDig14 = LCnpj[14])) then
    begin
      Result := True;
    end
    else
    begin
      if ARaiseExcept then
        raise EValidation.Create('CNPJ informado é inválido.');
      ADescriptionErrors := 'CNPJ informado é inválido.';
      Result := False;
    end;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar CNPJ. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsCnpj(const ACnpj: String; const ARaiseExcept: Boolean): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsCnpjCore(ACnpj, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsCnpj(const ACnpj: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsCnpjCore(ACnpj, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsCnpj(const ACnpj: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LCnpj: String;
begin
  LCnpj := TMyString.OnlyNumber(ACnpj);

  if AValidate then
    if not IsCnpj(LCnpj, ARaiseExcept) then
    begin
      Result := 'CNPJ informado é inválido.';
      Exit
    end;

  try
    if AMask then
    begin
      LCnpj := LCnpj.PadLeft(14, '0');
      Result := Copy(LCnpj, 1,  2) + '.' +
                Copy(LCnpj, 3,  3) + '.' +
                Copy(LCnpj, 6,  3) + '/' +
                Copy(LCnpj, 9,  4) + '-' +
                Copy(LCnpj, 13, 2);
    end
    else
      Result := LCnpj;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o CNPJ. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.CnpjMask: String;
begin
  Result := '##.###.###/####-##';
end;

class function TMyType.IsCpfCore(const ACpf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LCpf: String;
  LDig10,
  LDig11: String;
  LWeight: Integer;
  S: Integer;
  R: Integer;
  I: Integer;
begin
  LCpf := TMyString.OnlyNumber(ACpf);

  if (LCpf.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CPF não pode ser vazio.');
    ADescriptionErrors := 'CPF não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LCpf.Length <> 11) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CPF deve ter 11 dígitos.');
    ADescriptionErrors := 'CPF deve ter 11 dígitos.';
    Result := False;
    Exit
  end ;

  if Pos(LCpf,'11111111111.22222222222.33333333333.44444444444.55555555555.'+
         '66666666666.77777777777.88888888888.99999999999.00000000000') > 0 then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CPF informado é inválido.');
    ADescriptionErrors := 'CPF informado é inválido.';
    Result := False;
    Exit;
  end;

  try
    S := 0;
    LWeight := 10;
    for I := 1 to 9 do
    begin
      S := S + (StrToInt(LCpf[I]) * LWeight);
      LWeight := LWeight - 1;
    end;
    R := 11 - (S mod 11);
    if ((R = 10) or (R = 11)) then
      LDig10 := '0'
    else
      Str(R:1, LDig10);

    S := 0;
    LWeight := 11;
    for I := 1 to 10 do
    begin
      S := S + (StrToInt(LCpf[I]) * LWeight);
      LWeight := LWeight - 1;
    end;
    R := 11 - (S mod 11);
    if ((R = 10) or (R = 11)) then
      LDig11 := '0'
    else
      Str(R:1, LDig11);

    if ((LDig10 = LCpf[10]) and (LDig11 = LCpf[11])) then
    begin
      Result := True;
    end
    else
    begin
      if ARaiseExcept then
        raise EValidation.Create('CPF informado é inválido.');
      ADescriptionErrors := 'CPF informado é inválido.';
      Result := False;
    end;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar CPF. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsCpf(const ACpf: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsCpfCore(ACpf, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsCpf(const ACpf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsCpfCore(ACpf, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsCpf(const ACpf: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LCpf: String;
begin
  LCpf := TMyString.OnlyNumber(ACpf);
  if AValidate then
    if not IsCPF(LCpf, ARaiseExcept) then
    begin
      Result := 'CPF informado é inválido.';
      Exit
    end;

  try
    if AMask then
    begin
      LCpf := LCpf.PadLeft(11, '0');
      Result := Copy(LCpf, 1,  3) + '.' +
                Copy(LCpf, 4,  3) + '.' +
                Copy(LCpf, 7,  3) + '-' +
                Copy(LCpf, 10, 2);
    end
    else
      Result := LCpf;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o CPF. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.CpfMask: String;
begin
  Result := '###.###.###-##';
end;

class function TMyType.IsIeCore(const AIe: String; const AUf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
const
  C0_9: String = '0-9';
  WEIGHTS: array[1..14] of array[1..14] of Integer =
          {1} {2} {3} {4} {5} {6} {7} {8} {9} {10} {11} {12} {13} {14}
  {1}    ((0  ,2  ,3  ,4  ,5  ,6  ,7  ,8  ,9  ,2   ,3   ,4   ,5   ,6 ),
  {2}     (0  ,0  ,2  ,3  ,4  ,5  ,6  ,7  ,8  ,9   ,2   ,3   ,4   ,5 ),
  {3}     (2  ,0  ,3  ,4  ,5  ,6  ,7  ,8  ,9  ,2   ,3   ,4   ,5   ,6 ),
  {4}     (0  ,2  ,3  ,4  ,5  ,6  ,0  ,0  ,0  ,0   ,0   ,0   ,0   ,0 ),
  {5}     (0  ,8  ,7  ,6  ,5  ,4  ,3  ,2  ,1  ,0   ,0   ,0   ,0   ,0 ),
  {6}     (0  ,2  ,3  ,4  ,5  ,6  ,7  ,0  ,0  ,8   ,9   ,0   ,0   ,0 ),
  {7}     (0  ,2  ,3  ,4  ,5  ,6  ,7  ,8  ,9  ,1   ,2   ,3   ,4   ,5 ),
  {8}     (0  ,2  ,3  ,4  ,5  ,6  ,7  ,2  ,3  ,4   ,5   ,6   ,7   ,8 ),
  {9}     (0  ,0  ,2  ,3  ,4  ,5  ,6  ,7  ,2  ,3   ,4   ,5   ,6   ,7 ),
  {10}    (0  ,0  ,2  ,1  ,2  ,1  ,2  ,1  ,2  ,1   ,1   ,2   ,1   ,0 ),
  {11}    (0  ,2  ,3  ,4  ,5  ,6  ,7  ,8  ,9  ,10  ,11  ,2   ,3   ,0 ),
  {12}    (0  ,0  ,0  ,0  ,10 ,8  ,7  ,6  ,5  ,4   ,3   ,1   ,0   ,0 ),
  {13}    (0  ,2  ,3  ,4  ,5  ,6  ,7  ,8  ,9  ,10  ,2   ,3   ,0   ,0 ),
  {14}    (0  ,0  ,2  ,3  ,4  ,5  ,6  ,7  ,8  ,3   ,4   ,5   ,6   ,7 ));
var
  LIe: String;
  LUf: String;
  LDigits: array of Variant;
  LxROT: String;
  LyROT: String;
  LSize: Integer;
  LFactorF: Integer;
  LFactorG: Integer;
  LIndex: Integer;
  LxMD: Integer;
  LxTP: Integer;
  LyMD: Integer;
  LyTP: Integer;
  LDV: Integer;
  LDVX: Integer;
  LDVY: Integer;
  LSum: Integer;
  LSumQ: Integer;
  LnD: Integer;
  LM: Integer;
  LStep: Char;
  LD: Char;
  LPrefix: String;
begin
  if (AIe.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Inscrição estadual não pode ser vazia.');
    ADescriptionErrors := 'Inscrição estadual não pode ser vazia.';
    Result := False;
    Exit
  end;

  if AIe.Trim.ToUpper = 'ISENTO' then
  begin
    Result := True;
    Exit;
  end;

  LIe := TMyString.OnlyNumber(AIe);
  LUf := AUf;

  if (LIe.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Inscrição estadual não pode ser vazia.');
    ADescriptionErrors := 'Inscrição estadual não pode ser vazia.';
    Result := False;
    Exit
  end;

  if not IsUf(LUf, ADescriptionErrors, ARaiseExcept) then
  begin
    ADescriptionErrors := 'UF informada é inválida.';
    Result := False;
    Exit;
  end;

  LSize := 0;
  LxROT := 'E';
  LxMD := 11;
  LxTP := 1;
  LyROT := '';
  LyMD := 0;
  LyTP := 0;
  LFactorF := 0;
  LFactorG := 0;

  SetLength(LDigits, 13);
  LDigits := VarArrayOf(['','','','','','','','','','','','','','']) ;

  if LUf = 'AC' then
  begin
    if LIe.Length = 9 then
    begin
      LSize := 9;
      LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'1','0','','','','','']);
    end
    else
    begin
      LSize := 13;
      LxTP := 2;
      LyROT := 'E';
      LyMD := 11;
      LyTP := 1 ;
      LDigits := VarArrayOf(['DVY','DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'1','0','']);
    end;
  end;

  if LUf = 'AL' then
  begin
    LSize := 9;
    LxROT := 'BD';
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'4','2','','','','','']);
  end;

  if LUf = 'AP' then
  begin
    LSize := 9;
    LxROT := 'CE';
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'3','0','','','','','']);
    if (LIe >= '030170010') and (LIe <= '030190229') then
       LFactorF := 1
    else if LIe >= '030190230' then
       LxROT := 'E';
  end;

  if LUf = 'AM' then
  begin
     LSize := 9;
     LDigits := VarArrayOf([ 'DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','','','','']);
  end;

  if LUf = 'BA' then
  begin
    if Length(LIe) < 9 then
       LIe := LIe.PadLeft(9, '0') ;

    LSize := 9;
    LxTP := 2;
    LyTP := 3;
    LyROT := 'E';
    LDigits := VarArrayOf(['DVX','DVY',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','','','','']);
    try
      if pos(LIe[2],'0123458') > 0 then
       begin
         LxMD := 10;
         LyMD := 10;
       end
      else
       begin
         LxMD := 11;
         LyMD := 11;
       end;
    except
      if pos('0','0123458') > 0 then
       begin
         LxMD := 10;
         LyMD := 10;
       end
      else
       begin
         LxMD := 11;
         LyMD := 11;
       end;
    end;
  end;

  if LUf = 'CE' then
  begin
    LSize := 9 ;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'0','','','','','']);
  end ;

  if LUf = 'DF' then
  begin
    LSize := 13;
    LxTP := 2;
    LyROT := 'E';
    LyMD := 11;
    LyTP := 1;
    LDigits := VarArrayOf(['DVY','DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'7,8','0','']);
  end ;

  if LUf = 'ES' then
  begin
    LSize := 9;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','','','','']);
  end;

  if LUf = 'GO' then
  begin
    LSize := 9;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'1,2','','','','','']);
    try
      LPrefix := LIe[1] + LIe[2];
    except
      LPrefix := LIe[1] + '0';
    end;

    if not (StrToIntDef(LPrefix, 0) in [10,11,20..29]) then
    begin
      if ARaiseExcept then
        raise Exception.Create('Prefixo IE Inválido 10 ou 11 / 20 a 29');
      Result := False;
      Exit
    end;

    if (LIe >= '101031050') and (LIe <= '101199979') then
      LFactorG := 1;
  end;

  if LUf = 'MA' then
  begin
    LSize := 9 ;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'2','1','','','','','']);
  end;

  if LUf = 'MT' then
  begin
    if Length(LIe) = 9 then
      LIe := LIe.PadLeft(11, '0');
    LSize := 11;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','','']);
  end;

  if LUf = 'MS' then
  begin
    LSize := 9;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'8','2','','','','','']);
  end;

  if LUf = 'MG' then
  begin
    LSize := 13;
    LxROT := 'AE';
    LxMD := 10;
    LxTP := 10;
    LyROT := 'E';
    LyMD := 11;
    LyTP := 11;
    LDigits := VarArrayOf(['DVY','DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'']);
  end;

  if LUf = 'PA' then
  begin
    LSize := 9;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'5','1','','','','','']);
  end;

  if LUf = 'PB' then
  begin
    LSize  := 9 ;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'6','1','','','','','']);
  end;

  if LUf = 'PR' then
  begin
    LSize := 10;
    LxTP := 9;
    LyROT := 'E';
    LyMD := 11;
    LyTP := 8;
    LDigits := VarArrayOf(['DVY','DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','','','']);
  end;

  if LUf = 'PE' then
  begin
    if Length(LIe) = 14 then
    begin
      LSize := 14;
      LxTP := 7;
      LFactorF := 1;
      LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'1-9','8','1']);
    end
    else
    begin
      LSize := 9;
      LxTP := 14;
      LyROT := 'E';
      LyMD := 11;
      LyTP := 7;
      LDigits := VarArrayOf(['DVY','DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','','','','']);
    end;
  end;

  if LUf = 'PI' then
  begin
    LSize := 9;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'9','1','','','','','']);
  end;

  if LUf = 'RJ' then
  begin
    LSize := 8 ;
    LxTP := 8 ;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'1,7,8,9','','','','','','']);
  end;

  if LUf = 'RN' then
  begin
    if LIe.Length = 9 then
    begin
      LSize := 9;
      LxROT := 'BD';
      LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'0','2','','','','','']);
    end
    else
    begin
      LSize := 10;
      LxROT := 'BD';
      LxTP := 11;
      LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'0','2','','','','']);
    end;
  end;

  if LUf = 'RS' then
  begin
    LSize := 10;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','','','']);
  end;

  if LUf = 'RO' then
  begin
     LFactorF := 1;
     if LIe.Length = 9 then
     begin
       LSize := 9;
       LxTP := 4;
       LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'1-9','','','','','']);
     end
     else
     begin
       LSize := 14;
       LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9]);
     end;
  end;

  if LUf = 'RR' then
  begin
    LSize := 9;
    LxROT := 'D';
    LxMD := 9;
    LxTP := 5;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'4','2','','','','','']);
  end;

  if (LUf = 'SC') or (LUf = 'SE') then
  begin
    LSize := 9;
    LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','','','','']);
  end;

  if LUf = 'SP' then
  begin
    LxROT := 'D';
    LxTP := 12;
    if LIe[1] = 'P' then
    begin
      LSize := 13;
      LDigits := VarArrayOf([C0_9,C0_9,C0_9,'DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'P','']);
    end
    else
    begin
      LSize := 12;
      LyROT := 'D';
      LyMD := 11;
      LyTP := 13;
      LDigits := VarArrayOf(['DVY',C0_9,C0_9,'DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','']);
    end;
  end;

  if LUf = 'TO' then
  begin
    if LIe.Length = 11 then
    begin
      LSize := 11;
      LxTP := 6;
      LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'1,2,3,9','0,9','9','2','','','']);
    end
    else
    begin
      LSize := 9;
      LDigits := VarArrayOf(['DVX',C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,C0_9,'','','','','']);
    end;
  end;

  Result := (LSize > 0) and (LIe.Length = LSize);
  if not Result then
  begin
    if ARaiseExcept then
      raise Exception.Create('IE deve ter ' + LSize.ToString + ' dígitos.');
    ADescriptionErrors := 'IE deve ter ' + LSize.ToString + ' dígitos.';
    Result := False;
    Exit
  end;

  LIe := LIe.PadLeft(14);
  LDVX := 0;
  LDVY := 0;
  LIndex := 13;

  while Result and (LIndex >= 0) do
  begin
    LD := LIe[14-LIndex];
    if LDigits[LIndex] = '' then
      Result := (LD = ' ')
    else if (LDigits[LIndex] = 'DVX') or (LDigits[LIndex] = 'DVY') or (LDigits[LIndex] = C0_9) then
    begin
      Result := TMyString.CharIsNum(LD);
      if LDigits[LIndex] = 'DVX' then
        LDVX := StrToIntDef(LD, 0)
      else if LDigits[LIndex] = 'DVY' then
        LDVY := StrToIntDef(LD, 0);
    end
    else if Pos(',', LDigits[LIndex]) > 0 then
      Result := (Pos(LD, LDigits[LIndex]) > 0)
    else if Pos('-',LDigits[LIndex]) > 0 then
      Result := ((LD >= Copy(LDigits[LIndex], 1, 1)) and (LD <= Copy(LDigits[LIndex], 3, 1)))
    else
      Result := (LD = LDigits[LIndex]);

    if not Result then
    begin
      if ARaiseExcept then
        raise Exception.Create(Format('Dígito %d deveria ser %s ', [14-LIndex-(14-LSize), LDigits[LIndex]]));
      ADescriptionErrors := Format('Dígito %d deveria ser %s ', [14-LIndex-(14-LSize), LDigits[LIndex]]);
      Result := False;
      Exit
    end;
    LIndex := LIndex - 1 ;
  end;

  LStep := 'X';
  while Result and (LxTP > 0) do
  begin
    LSum := 0;
    LSumQ := 0;
    LIndex := 14;
    while Result and (LIndex > 0) do
    begin
      LD := LIe[15-LIndex];
      if TMyString.CharIsNum(LD) then
      begin
        LnD := StrToIntDef(LD, 0);
        LM := LnD * WEIGHTS[LxTP, LIndex];
        LSum := LSum + LM;
        if Pos('A', LxROT) > 0 then
          LSumQ := LSumQ + Trunc(LM / 10);
      end;
      LIndex := LIndex - 1;
    end;

    if Pos('A', LxROT) > 0 then
      LSum := LSum + LSumQ
    else if Pos('B', LxROT) > 0 then
      LSum := LSum * 10
    else if Pos('C', LxROT) > 0 then
      LSum := LSum + (5 + (4 * LFactorF));

    LDV := Trunc(LSum mod LxMD);
    if pos('E',LxROT) > 0 then
      LDV := Trunc(LxMD - LDV);

    if LDV = 10 then
      LDV := LFactorG
    else if LDV = 11 then
      LDV := LFactorF;

    if LStep = 'X' then
      Result := (LDVX = LDV)
    else
      Result := (LDVY = LDV);

    if not Result then
    begin
      if ARaiseExcept then
        raise Exception.Create('Dígito verificar inválido.');
      ADescriptionErrors := 'Dígito verificar inválido.';
      Result := False;
      Exit
    end;

    if LStep = 'X' then
    begin
      LStep := 'Y';
      LxROT := LyROT;
      LxMD := LyMD;
      LxTP := LyTP;
    end
    else
      Break;
  end;
end;

class function TMyType.IsIe(const AIe: String; const AUf: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsIeCore(AIe, AUf, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsIe(const AIe, AUf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsIeCore(AIe, AUf, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsIe(const AIe: String; const AUf: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LIe: String;
  LUf: String;
begin
  if AIe.Trim.ToUpper = 'ISENTO' then
  begin
    Result := 'ISENTO';
    Exit;
  end;

  LIe := TMyString.OnlyNumber(AIe);
  LUf := AUf;

  if AValidate then
  begin
    if not IsUf(LUf, ARaiseExcept) then
    begin
      Result := 'UF informada é inválida.';
      Exit;
    end;

    if not IsIe(LIe, LUf, ARaiseExcept) then
    begin
      Result := 'IE informada é inválida.';
      Exit
    end;
  end;

  try
    if AMask then
      Result := Mask(IeMask(LIe, LUf), LIe)
    else
      Result := LIe;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar a IE. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.IeMask(const AIe: String; const AUf: String; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LIe: String;
  LUf: String;
begin
  Result := '';

  if AIe.ToUpper = 'ISENTO' then
    Exit;

  LIe := TMyString.OnlyNumber(AIe);
  LUf := AUf;

  if AValidate then
  begin
    if not IsUf(LUf, ARaiseExcept) then
    begin
      Result := 'UF informada é inválida.';
      Exit;
    end;

    if not IsIe(LIe, LUf, ARaiseExcept) then
    begin
      Result := 'IE informada é inválida.';
      Exit
    end;
  end;

  if LUf.ToUpper = 'AC' then
  begin
    Result := '##.###.###/###-##';
    Exit;
  end;

  if LUf.ToUpper = 'AL' then
  begin
    Result := '#########';
    Exit;
  end;

  if LUf.ToUpper = 'AP' then
  begin
    Result := '#########';
    Exit;
  end;

  if LUf.ToUpper = 'AM' then
  begin
    Result := '##.###.###-#';
    Exit;
  end;

  if LUf.ToUpper = 'BA' then
  begin
    Result := '#######-##';
    Exit;
  end;

  if LUf.ToUpper = 'CE' then
  begin
    Result := '########-#';
    Exit;
  end;

  if LUf.ToUpper = 'DF' then
  begin
    Result := '###########-##';
    Exit;
  end;

  if LUf.ToUpper = 'ES' then
  begin
    Result := '#########';
    Exit;
  end;

  if LUf.ToUpper = 'GO' then
  begin
    Result := '##.###.###-#';
    Exit;
  end;

  if LUf.ToUpper = 'MA' then
  begin
    Result := '#########';
    Exit;
  end;

  if LUf.ToUpper = 'MT' then
  begin
    Result := '##########-#';
    Exit;
  end;


  if LUf.ToUpper = 'MS' then
  begin
    Result := '##.###.###-#';
    Exit;
  end;

  if LUf.ToUpper = 'MG' then
  begin
    Result := '###.###.###/####';
    Exit;
  end;

  if LUf.ToUpper = 'PA' then
  begin
    Result := '##-######-#';
    Exit;
  end;

  if LUf.ToUpper = 'PB' then
  begin
    Result := '########-#';
    Exit;
  end;

  if LUf.ToUpper = 'PR' then
  begin
    Result := '###.#####-##';
    Exit;
  end;

  if LUf.ToUpper = 'PE' then
  begin
    if LIe.Length <= 9 then
      Result := '#######-##'
    else
      Result := '##.#.###.#######-#';
    Exit;
  end;

  if LUf.ToUpper = 'PI' then
  begin
    Result := '#########';
    Exit;
  end;

  if LUf.ToUpper = 'RJ' then
  begin
    Result := '##.###.##-#';
    Exit;
  end;

  if LUf.ToUpper = 'RN' then
  begin
    if LIe.Length <= 9 then
      Result := '##.###.###-#'
    else
      Result := '##.#.###.###-#';
    Exit;
  end;

  if LUf.ToUpper = 'RS' then
  begin
    Result := '###/#######';
    Exit;
  end;

  if LUf.ToUpper = 'RO' then
  begin
    if LIe.Length > 9 then
      Result := '#############-#'
    else
      Result := '###.#####-#';
    Exit;
  end;

  if LUf.ToUpper = 'RR' then
  begin
    Result := '########-#';
    Exit;
  end;

  if LUf.ToUpper = 'SC' then
  begin
    Result := '###.###.###';
    Exit;
  end;

  if LUf.ToUpper = 'SP' then
  begin
    if (LIe.Length > 1) and (LIe[1]='P') then
      Result := '#-########.#/###'
    else
      Result := '###.###.###.###';
    Exit;
  end;

  if LUf.ToUpper = 'SE' then
  begin
    Result := '##.###.###-#';
    Exit;
  end;

  if LUf.ToUpper = 'TO' then
  begin
    if LIe.Length <= 11 then
      Result := '##.##.######-#'
    else
      Result := '##.###.###-#';
    Exit;
  end;

  Result := '################';
end;

class function TMyType.Mask(AMask, AText: String): String;
var
  LIndexMask: Integer;
  LIndexText: Integer;
  LText: String;
begin
  if Trim(AText).IsEmpty then
    Exit;

  AMask := Trim(AMask.ToUpper);
  LText := Trim(TMyString.OnlyNumber(AText));
  LIndexMask := 0;
  LIndexText := 0;

  while (LIndexText < LText.Length) and (LIndexMask < AMask.Length) do
  begin
    while AMask.Chars[LIndexMask] <> '#' Do
    begin
      Result := Result + AMask.Chars[LIndexMask];
      Inc(LIndexMask);
    end;

    Result := Result + LText.Chars[LIndexText];
    Inc(LIndexMask);
    Inc(LIndexText);
  end;
end;

class function TMyType.IsCepCore(const ACep: String; out ADescriptionErrors: String; const AUf: String; const ARaiseExcept: Boolean): Boolean;
var
  LCep: String;
begin
  LCep := TMyString.OnlyNumber(ACep);

  if (LCep.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CEP não pode ser vazio.');
    ADescriptionErrors := 'CEP não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LCep.Length <> 8) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CEP deve ter 8 dígitos.');
    ADescriptionErrors := 'CEP deve ter 8 dígitos.';
    Result := False;
    Exit
  end ;

  if not AUf.IsEmpty then
    if not IsUf(AUf) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('UF informada é inválida.');
      ADescriptionErrors := 'UF informada é inválida.';
      Result := False;
      Exit;
    end;

  Result := True;
  try
    if ((LCep >= '01000000') and (LCep <= '19999999')) and
       ((AUf = 'SP')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '20000000') and (LCep <= '28999999')) and
       ((AUf = 'RJ')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '29000000') and (LCep <= '29999999')) and
       ((AUf = 'ES')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '30000000') and (LCep <= '39999999')) and
       ((AUf = 'MG')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '40000000') and (LCep <= '48999999')) and
       ((AUf = 'BA')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '49000000') and (LCep <= '49999999')) and
       ((AUf = 'SE')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '50000000') and (LCep <= '56999999')) and
       ((AUf = 'PE')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '57000000') and (LCep <= '57999999')) and
       ((AUf = 'AL')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '58000000') and (LCep <= '58999999')) and
       ((AUf = 'PB')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '59000000') and (LCep <= '59999999')) and
       ((AUf = 'RN')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '60000000') and (LCep <= '63999999')) and
       ((AUf = 'CE')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '64000000') and (LCep <= '64999999')) and
       ((AUf = 'PI')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '65000000') and (LCep <= '65999999')) and
       ((AUf = 'MA')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '66000000') and (LCep <= '68899999')) and
       ((AUf = 'PA')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '68900000') and (LCep <= '68999999')) and
       ((AUf = 'AP')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '69000000') and (LCep <= '69299999')) and
       ((AUf = 'AM')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '69300000') and (LCep <= '69399999')) and
       ((AUf = 'RR')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '69400000') and (LCep <= '69899999')) and
       ((AUf = 'AM')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '69900000') and (LCep <= '69999999')) and
       ((AUf = 'AC')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '70000000') and (LCep <= '72799999')) and
       ((AUf = 'DF')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '72800000') and (LCep <= '72999999')) and
       ((AUf = 'GO')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '73000000') and (LCep <= '73699999')) and
       ((AUf = 'DF')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '73700000') and (LCep <= '76799999')) and
       ((AUf = 'GO')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '77000000') and (LCep <= '77999999')) and
       ((AUf = 'TO')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '78000000') and (LCep <= '78899999')) and
       ((AUf = 'MT')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '76800000') and (LCep <= '76999999')) and
       ((AUf = 'RO')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '79000000') and (LCep <= '79999999')) and
       ((AUf = 'MS')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '80000000') and (LCep <= '87999999')) and
       ((AUf = 'PR')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '88000000') and (LCep <= '89999999')) and
       ((AUf = 'SC')  or  (AUf = '')) then
      Exit;

    if ((LCep >= '90000000') and (LCep <= '99999999')) and
       ((AUf = 'RS')  or  (AUf = '')) then
      Exit;

    if ARaiseExcept then
      raise EValidation.Create('CEP informado é inválido.');
    ADescriptionErrors := 'CEP informado é inválido.';
    Result := False;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar CEP. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsCep(const ACep: String; const AUf: String = ''; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsCepCore(ACep, LDescriptionErrors, AUf, ARaiseExcept);
end;

class function TMyType.IsCep(const ACep: String; out ADescriptionErrors: String; const AUf: String = ''; const ARaiseExcept: Boolean = False): Boolean;
begin
  Result := IsCepCore(ACep, ADescriptionErrors, AUf, ARaiseExcept);
end;

class function TMyType.AsCep(const ACep: String; const AUf: String = ''; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LCep: String;
begin
  LCep := TMyString.OnlyNumber(ACep);

  if AValidate then
  begin
    if not AUf.IsEmpty then
      if not IsUf(AUf, ARaiseExcept) then
      begin
        Result := 'UF informada é inválida.';
        Exit;
      end;

    if not IsCep(LCep, AUf, ARaiseExcept) then
    begin
      Result := 'CEP informado é inválido.';
      Exit
    end;
  end;

  try
    if AMask then
    begin
      LCep := LCep.PadLeft(8, '0');
      Result := Copy(LCep, 1,  5) + '-' +
                Copy(LCep, 6,  3);
    end
    else
      Result := LCep;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o CEP. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.CepMask: String;
begin
  Result := '#####-###';
end;

class function TMyType.IsTelephoneCore(const ATelephone: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
var
  LTelephone: String;
begin
  LTelephone := TMyString.OnlyNumber(ATelephone);

  if (LTelephone.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Telefone não pode ser vazio.');
    ADescriptionErrors := 'Telefone não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LTelephone.Length <> 10) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Telefone deve ter 10 dígitos.');
    ADescriptionErrors := 'Telefone deve ter 10 dígitos.';
    Result := False;
    Exit
  end;

  try
    Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar telefone. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsTelephone(const ATelephone: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsTelephoneCore(ATelephone, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsTelephone(const ATelephone: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsTelephoneCore(ATelephone, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsTelephone(const ATelephone: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LTelephone: String;
begin
  LTelephone := TMyString.OnlyNumber(ATelephone);

  if AValidate then
    if not IsTelephone(LTelephone, ARaiseExcept) then
    begin
      Result := 'Telefone informado é inválido.';
      Exit
    end;

  try
    if AMask then
    begin
      LTelephone := LTelephone.PadLeft(10, '0');
      Result := '(' +
                Copy(LTelephone, 1,  2) + ')' +
                Copy(LTelephone, 3,  4) + '-' +
                Copy(LTelephone, 7,  4);
    end
    else
      Result := LTelephone;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o telefone. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.TelephoneMask: String;
begin
  Result := '(##)####-####';
end;

class function TMyType.IsCellPhoneCore(const ACellPhone: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LCellPhone: String;
  LRegExp: String;
begin
  LCellPhone := TMyString.OnlyNumber(ACellPhone);

  if (LCellPhone.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Celular não pode ser vazio.');
    ADescriptionErrors := 'Celular não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LCellPhone.Length <> 11) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Celular deve ter 11 dígitos.');
    ADescriptionErrors := 'Celular deve ter 11 dígitos.';
    Result := False;
    Exit
  end;

  try
    LRegExp := '^((1[1-9])|([2-9][0-9]))((3[0-9]{3}[0-9]{4})|(9[0-9]{3}[0-9]{5}))$';
    if not TRegEx.IsMatch(LCellPhone, LRegExp) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Celular informado é inválido.');
      ADescriptionErrors := 'Celular informado é inválido.';
      Result := False;
    end
    else
      Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar celular. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsCellPhone(const ACellPhone: String; const ARaiseExcept: Boolean): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsCellPhoneCore(ACellPhone, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsCellPhone(const ACellPhone: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsCellPhoneCore(ACellPhone, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsCellPhone(const ACellPhone: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LCellPhone: String;
begin
  LCellPhone := TMyString.OnlyNumber(ACellPhone);
  if AValidate then
    if not IsCellPhone(LCellPhone, ARaiseExcept) then
    begin
      Result := 'Celular informado é inválido.';
      Exit
    end;

  try
    if AMask then
    begin
      LCellPhone := LCellPhone.PadLeft(11, '0');
      Result := '(' +
                Copy(LCellPhone, 1,  2) + ')' +
                Copy(LCellPhone, 3,  5) + '-' +
                Copy(LCellPhone, 8,  4);
    end
    else
      Result := LCellPhone;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o celular. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.CellPhoneMask: String;
begin
  Result := '(##)#####-####';
end;

class function TMyType.IsCardCore(const ACard: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
var
  LCard: String;
  LNumber: Integer;
  LSum: Integer;
  LMultiplier: Integer;
  LSize: Integer;
  LDigit: String;
  LIndex: Integer;
begin
  LCard := TMyString.OnlyNumber(ACard);

  if (LCard.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Cartão não pode ser vazio.');
    ADescriptionErrors := 'Cartão não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LCard.Length <> 16) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Cartão deve ter 16 dígitos.');
    ADescriptionErrors := 'Cartão deve ter 16 dígitos.';
    Result := False;
    Exit
  end;

  try
    LMultiplier := 2;
    LSum := 0;
    LSize := LCard.Length;

    for LIndex := 1 to LSize - 1 do
    begin
      try
        LNumber := StrToInt(Copy(LCard, LIndex, 1)) * LMultiplier;
      except
        LNumber := 0;
      end;

      LSum := LSum + (LNumber div 10) + (LNumber mod 10);
      if LMultiplier = 1 Then
        LMultiplier := 2
      else
        LMultiplier := 1;
    end;

    LDigit := IntToStr((10 - (LSum mod 10)) mod 10);
    if (LDigit <> Copy(LCard, LSize, 1)) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Cartão informado é inválido.');
      ADescriptionErrors := 'Cartão informado é inválido.';
      Result := False;
    end
    else
      Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar cartão. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsCard(const ACard: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsCardCore(ACard, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsCard(const ACard: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsCardCore(ACard, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsCard(const ACard: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LCard: String;
begin
  LCard := TMyString.OnlyNumber(ACard);
  if AValidate then
    if not IsCard(LCard, ARaiseExcept) then
    begin
      Result := 'Cartão informado é inválido.';
      Exit
    end;

  try
    if AMask then
    begin
      LCard := LCard.PadLeft(16, '0');
      Result := Copy(LCard, 1,  4) + ' ' +
                Copy(LCard, 5,  4) + ' ' +
                Copy(LCard, 9,  4) + ' ' +
                Copy(LCard, 13, 4);
    end
    else
      Result := LCard;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o cartão. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.CardMask: String;
begin
  Result := '#### #### #### ####';
end;

class function TMyType.IsPisCore(const APis: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
var
  LPis: String;
  LSum: Integer;
  LM11: Integer;
  LDv: Integer;
  LDigit: Integer;
  LIndex: Integer;
begin
  LPis := TMyString.OnlyNumber(APis);

  if (LPis.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('PIS não pode ser vazio.');
    ADescriptionErrors := 'PIS não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LPis.Length <> 11) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('PIS deve ter 11 dígitos.');
    ADescriptionErrors := 'PIS deve ter 11 dígitos.';
    Result := False;
    Exit
  end;

  try
    LDv := StrToInt(Copy(LPis, 11, 1));
    LSum := 0;
    LM11  := 2;
    for LIndex := 1 to 10 do
    begin
      LSum := LSum + (LM11 * StrToInt(Copy(LPis, 11 - LIndex, 1)));
      if LM11 < 9 Then
        LM11 := LM11 + 1
      else
        LM11 := 2;
    end;
    LDigit := 11 - (LSum Mod 11);

    if LDigit > 9 then
      LDigit := 0;

    if (LDv <> LDigit) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('PIS informado é inválido.');
      ADescriptionErrors := 'PIS informado é inválido.';
      Result := False;
    end
    else
      Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar PIS. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsPis(const APis: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsPisCore(APis, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsPis(const APis: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsPisCore(APis, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsPis(const APis: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LPis: String;
begin
  LPis := TMyString.OnlyNumber(APis);
  if AValidate then
    if not IsPis(LPis, ARaiseExcept) then
    begin
      Result := 'PIS informado é inválido.';
      Exit
    end;

  try
    if AMask then
    begin
      LPis := LPis.PadLeft(11, '0');
      Result := Copy(LPis, 1,  3) + '.' +
                Copy(LPis, 4,  5) + '.' +
                Copy(LPis, 9,  2) + '-' +
                Copy(LPis, 11, 1);
    end
    else
      Result := LPis;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o PIS. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.PisMask: String;
begin
  Result := '###.#####.##-#';
end;

class function TMyType.IsSuframaCore(const ASuframa: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
var
  LSuframa: String;
  LSuframaNoDigit: String;
  LSum: Integer;
  LFactor: Integer;
  LCalculatedDigit: Integer;
  LIndex: Integer;
begin
  LSuframa := TMyString.OnlyNumber(ASuframa);

  if (LSuframa.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Suframa não pode ser vazio.');
    ADescriptionErrors := 'Suframa não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LSuframa.Length < 9) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Suframa deve ter no mínimo 9 dígitos.');
    ADescriptionErrors := 'Suframa deve ter no mínimo 9 dígitos.';
    Result := False;
    Exit
  end;

  LSuframaNoDigit := Copy(LSuframa, 1, 8);
  try
    LSum := 0;
    LFactor := 2;
    for LIndex := LSuframaNoDigit.Length downto 1 do
    begin
      LSum := LSum + StrToInt(LSuframaNoDigit[LIndex]) * LFactor;
      Inc(LFactor);
      if LFactor = 10 then
        LFactor := 2;
    end;

    LSum := 11 - (LSum mod 11);
    if LSum >= 10 then
      LCalculatedDigit := 1
    else
      LCalculatedDigit := LSum;

    if (LCalculatedDigit <> StrToInt(LSuframa[9])) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Suframa informado é inválido.');
      ADescriptionErrors := 'Suframa informado é inválido.';
      Result := False;
    end
    else
      Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar suframa. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsSuframa(const ASuframa: String; const ARaiseExcept: Boolean): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsSuframaCore(ASuframa, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsSuframa(const ASuframa: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
begin
  Result := IsSuframaCore(ASuframa, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsSuframa(const ASuframa: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LSuframa: String;
begin
  LSuframa := TMyString.OnlyNumber(ASuframa);

  if AValidate then
    if not IsSuframa(LSuframa, ARaiseExcept) then
    begin
      Result := 'Suframa informado é inválido.';
      Exit
    end;

  try
    Result := LSuframa;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o suframa. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.IsGtinCore(const AGtin: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LGtin: String;
  LCode: String;
  LOriginalDigit: String;
  LCalculatedDigit: String;
  LDigit: Integer;
  LDV: Integer;
  LIndex: Integer;
begin
  LGtin := TMyString.OnlyNumber(AGtin);

  if (LGtin.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('GTIN não pode ser vazio.');
    ADescriptionErrors := 'GTIN não pode ser vazio.';
    Result := False;
    Exit
  end;

  if not (LGtin.Length in [8, 12, 13, 14]) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('O código GTIN deve ter 8, 12, 13 ou 14 caracteres.');
    ADescriptionErrors := 'O código GTIN deve ter 8, 12, 13 ou 14 caracteres.';
    Result := False;
    Exit
  end;

  try
    LCode := Copy(LGtin, 1, LGtin.Length-1);
    LOriginalDigit := LGtin[LGtin.Length];

    LDV := 0;
    LCalculatedDigit := '';
    LCode := LCode.PadLeft(13, '0');

    for LIndex := LCode.Length downto 1 do
    begin
      LDigit := StrToInt(LCode[LIndex]);
      LDV  := LDV + (LDigit * IfThen(odd(LIndex), 3, 1));
    end;

    LDV := (Ceil(LDV / 10) * 10) - LDV;
    LCalculatedDigit := IntToStr(LDV);

    if LOriginalDigit <> LCalculatedDigit then
    begin
      if ARaiseExcept then
        raise EValidation.Create('GTIN informado é inválido.');
      ADescriptionErrors := 'GTIN informado é inválido.';
      Result := False;
    end
    else
      Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar CNH. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsGtin(const AGtin: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsGtinCore(AGtin, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsGtin(const AGtin: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsGtinCore(AGtin, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsGtin(const AGtin: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LGtin: String;
begin
  LGtin := TMyString.OnlyNumber(AGtin);

  if AValidate then
    if not IsGtin(LGtin, ARaiseExcept) then
    begin
      Result := 'GTIN informado é inválido.';
      Exit
    end;

  try
    Result := LGtin;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o GTIN. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.GtinMask: String;
begin
  Result := '##############';
end;

class function TMyType.IsRenavamCore(const ARenavam: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
const
  vSequencia = '3298765432';
var
  LRenavam: String;
  LDigit: String;
  LIndex, LSum, LDv: integer;
begin
  LRenavam := TMyString.OnlyNumber(ARenavam);

  if (LRenavam.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Renavam não pode ser vazio.');
    ADescriptionErrors := 'Renavam não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LRenavam.Length <> 11) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Renavam deve ter 11 dígitos.');
    ADescriptionErrors := 'Renavam deve ter 11 dígitos.';
    Result := False;
    Exit
  end;

  try
    LSum := 0;
    for LIndex := 1 to 10 do
       LSum := LSum + (StrtoInt(LRenavam[LIndex]) * StrToInt(vSequencia[LIndex]));

    LDv := (LSum * 10) mod 11;
    if LDv = 10 then
       LDv := 0;

    LDigit := IntToStr(LDv);

    if (LDigit <> LRenavam[11]) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Renavam informado é inválido.');
      ADescriptionErrors := 'Renavam informado é inválido.';
      Result := False;
    end
    else
      Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar renavam. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsRenavam(const ARenavam: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsRenavamCore(ARenavam, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsRenavam(const ARenavam: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsRenavamCore(ARenavam, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsRenavam(const ARenavam: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LRenavam: String;
begin
  LRenavam := TMyString.OnlyNumber(ARenavam);

  if AValidate then
    if not IsRenavam(LRenavam, ARaiseExcept) then
    begin
      Result := 'Renavam informado é inválido.';
      Exit
    end;

  try
    Result := LRenavam;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o renavam. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.RenavamMask: String;
begin
  Result := '###########';
end;

class function TMyType.IsCnhCore(const ACnh: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LCnh: String;
  LFactor: Integer;
  LSum: Integer;
  vResto: Integer;
  LBase: Integer;
  LIndex: Integer;
  LDigits: String;
begin
  LCnh := TMyString.OnlyNumber(ACnh);

  if (LCnh.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CNH não pode ser vazio.');
    ADescriptionErrors := 'CNH não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LCnh.Length <> 11) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CNH deve ter 11 dígitos.');
    ADescriptionErrors := 'CNH deve ter 11 dígitos.';
    Result := False;
    Exit
  end;

  if Pos(LCnh,'11111111111.22222222222.33333333333.44444444444.55555555555.'+
         '66666666666.77777777777.88888888888.99999999999.00000000000') > 0 then
  begin
    if ARaiseExcept then
      raise EValidation.Create('CNH informado é inválido.');
    ADescriptionErrors := 'CNH informado é inválido.';
    Result := False;
    Exit;
  end;

  try
    LBase := 0;
    LSum := 0;
    LFactor := 9;
    for LIndex := 1 to 9 do
    begin
      LSum := LSum + (StrToInt(LCnh[LIndex]) * LFactor);
      dec(LFactor) ;
    end;
    vResto := LSum Mod 11;
    if vResto = 10 then
      LBase := -2;

    if vResto > 9 then
      vResto := 0;
    LDigits := IntToStr(vResto) ;

    LSum := 0;
    LFactor := 1;
    for LIndex := 1 to 9 do
    begin
      LSum := LSum + (StrToInt(LCnh[LIndex]) * LFactor);
      Inc(LFactor) ;
    end;

    if (LSum Mod 11) + LBase < 0 then
      vResto := 11 + (LSum Mod 11) + LBase;

    if (LSum Mod 11) + LBase >= 0 then
      vResto := (LSum Mod 11) + LBase;

    if vResto > 9 then
      vResto := 0;

    LDigits := LDigits + IntToStr(vResto) ;

    if Copy(LCnh, 10, 2) <> LDigits then
    begin
      if ARaiseExcept then
        raise EValidation.Create('CNH informada é inválida.');
      ADescriptionErrors := 'CNH informada é inválida.';
      Result := False;
    end
    else
      Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar CNH. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsCnh(const ACnh: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsCnhCore(ACnh, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsCnh(const ACnh: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsCnhCore(ACnh, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsCnh(const ACnh: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LCnh: String;
begin
  LCnh := TMyString.OnlyNumber(ACnh);

  if AValidate then
    if not IsCnh(LCnh, ARaiseExcept) then
    begin
      Result := 'CNH informada é inválida.';
      Exit
    end;

  try
    Result := LCnh;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar a CNH. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.CnhMask: String;
begin
  Result := '###########';
end;

class function TMyType.IsLicensePlateCore(const ALicensePlate: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
var
  LLicensePlate: String;
  LRegExp: String;
begin
  LLicensePlate := TMyString.RemoveCharSpecial(ALicensePlate).ToUpper;

  if (LLicensePlate.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Placa não pode ser vazio.');
    ADescriptionErrors := 'Placa não pode ser vazio.';
    Result := False;
    Exit
  end;

  if (LLicensePlate.Length <> 7) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Placa deve ter 7 dígitos.');
    ADescriptionErrors := 'Placa deve ter 7 dígitos.';
    Result := False;
    Exit
  end;

  try
    LRegExp := '^[A-Z]{3}[0-9][0-9A-Z][0-9]{2}$';
    if not TRegEx.IsMatch(LLicensePlate, LRegExp) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Placa informada é inválida.');
      ADescriptionErrors := 'Placa informada é inválida.';
      Result := False;
    end
    else
      Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar a placa. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsLicensePlate(const ALicensePlate: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsLicensePlateCore(ALicensePlate, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsLicensePlate(const ALicensePlate: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsLicensePlateCore(ALicensePlate, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsLicensePlate(const ALicensePlate: String; const AMask: Boolean = True; const AValidate: Boolean = True; const ARaiseExcept: Boolean = False): String;
var
  LLicensePlate: String;
begin
  LLicensePlate := TMyString.RemoveCharSpecial(ALicensePlate);

  if AValidate then
    if not IsLicensePlate(LLicensePlate, ARaiseExcept) then
    begin
      Result := 'Placa informada é inválida.';
      Exit
    end;

  try
    if AMask then
    begin
      Result := (Copy(LLicensePlate, 1, 3) + '-' + Copy(LLicensePlate, 4, 4)).ToUpper;
    end
    else
      Result := LLicensePlate;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar a placa. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.LicensePlateMask: String;
begin
  Result := '###-####';
end;

class function TMyType.IsEmailCore(const AEmail: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
const
  InvalidChar = ' àâêôûãõáéíóúçüñýÀÂÊÔÛÃÕÁÉÍÓÚÇÜÑÝ*;:\|#$%&*§!()][{}<>˜ˆ´ªº+¹²³';
var
  LIndex: Integer;
begin
  try
    if (AEmail.Trim.IsEmpty) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Email não pode ser vazio.');
      ADescriptionErrors := 'Email não pode ser vazio.';
      Result := False;
      Exit
    end;

    if (TMyString.ContainsUpperCase(AEmail)) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Email não pode conter caracteres maiúsculos.');
      ADescriptionErrors := 'Email não pode conter caracteres maiúsculos.';
      Result := False;
      Exit
    end;

    if (AEmail.Length < 8) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Email deve possuir mais que 8 caracteres.');
      ADescriptionErrors := 'Email deve possuir mais que 8 caracteres.';
      Result := False;
      Exit
    end;

    if ((Pos('@', AEmail) = 0) or (PosEx('@', AEmail, Pos('@', AEmail) + 1) > 0)) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Email inválido.');
      ADescriptionErrors := 'Email inválido.';
      Result := False;
      Exit
    end;

    if (Pos('.', AEmail) = 0) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Email inválido.');
      ADescriptionErrors := 'Email inválido.';
      Result := False;
      Exit
    end;

    if (Pos('..', AEmail) > 0) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Email inválido.');
      ADescriptionErrors := 'Email inválido.';
      Result := False;
      Exit
    end;

    if CharInSet(AEmail[1], ['@', '.']) or CharInSet(AEmail[Length(AEmail)], ['@', '.']) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Email inválido.');
      ADescriptionErrors := 'Email inválido.';
      Result := False;
      Exit
    end;

    if (AEmail[Pos('@', AEmail) + 1] = '.') or (AEmail[Pos('@', AEmail) - 1] = '.') then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Email inválido.');
      ADescriptionErrors := 'Email inválido.';
      Result := False;
      Exit
    end;

    if (PosEx('.', AEmail, Pos('@', AEmail) + 1) < Pos('@', AEmail)) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Email inválido.');
      ADescriptionErrors := 'Email inválido.';
      Result := False;
      Exit
    end;

    for LIndex := 1 to Length(AEmail) do
    begin
      if Pos(AEmail[LIndex], InvalidChar) > 0 then
      begin
        if ARaiseExcept then
          raise EValidation.Create('Email com caractere inválido.');
        ADescriptionErrors := 'Email com caractere inválido.';
        Result := False;
        Exit
      end;
    end;

    Result := True;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar email. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsEmail(const AEmail: String; const ARaiseExcept: Boolean): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsEmailCore(AEmail, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsEmail(const AEmail: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
begin
  Result := IsEmailCore(AEmail, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsUfCore(const AUf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
begin
  if (AUf.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('UF não pode ser vazia.');
    ADescriptionErrors := 'UF não pode ser vazia.';
    Result := False;
    Exit
  end;

  if (AUf.Length <> 2) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('UF deve ter 2 dígitos.');
    ADescriptionErrors := 'UF deve ter 2 dígitos.';
    Result := False;
    Exit
  end ;

  try
    if TMyString.CountPos(','+AUf.ToUpper+',', LIST_UF) > 0 then
    begin
      Result := True;
    end
    else
    begin
      if ARaiseExcept then
        raise EValidation.Create('UF informada é inválida.');
      ADescriptionErrors := 'UF informada é inválida.';
      Result := False;
    end;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar a UF. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsUf(const AUf: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsUfCore(AUf, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsUf(const AUf: String; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
begin
  Result := IsUfCore(AUf, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsDateCore(const ADate: String; const ADelimiter: Char; const AFormat: TDateFormat; out ADescriptionErrors: String; const ARaiseExcept: Boolean = False): Boolean;
var
  LRegEx: String;
  LDate: String;
  LPartsDate: TStringList;
  LDayPosition: Byte;
  LMonthPosition: Byte;
  LYearPosition: Byte;
  LDay: String;
  LMonth: String;
  LYear: String;
begin
  if (ADate.Trim.IsEmpty) then
  begin
    if ARaiseExcept then
      raise EValidation.Create('Data não pode ser vazia.');
    ADescriptionErrors := 'Data não pode ser vazia.';
    Result := False;
    Exit;
  end;

  LDayPosition := 0;
  LMonthPosition := 0;
  LYearPosition := 0;

  try
    case AFormat of
      mmddyyyy:
        begin
          LRegEx := '[0-9]{1,2}' + ADelimiter + '[0-9]{1,2}' + ADelimiter + '[0-9]{4}';
          LDayPosition := 1;
          LMonthPosition := 0;
          LYearPosition := 2;
        end;
      mmddyy:
        begin
          LRegEx := '[0-9]{1,2}' + ADelimiter + '[0-9]{1,2}' + ADelimiter + '[0-9]{2}';
          LDayPosition := 1;
          LMonthPosition := 0;
          LYearPosition := 2;
        end;
      ddmmyyyy:
        begin
          LRegEx := '[0-9]{1,2}' + ADelimiter + '[0-9]{1,2}' + ADelimiter + '[0-9]{4}';
          LDayPosition := 0;
          LMonthPosition := 1;
          LYearPosition := 2;
        end;
      ddmmyy:
        begin
          LRegEx := '[0-9]{1,2}' + ADelimiter + '[0-9]{1,2}' + ADelimiter + '[0-9]{2}';
          LDayPosition := 0;
          LMonthPosition := 1;
          LYearPosition := 2;
        end;
      yyyymmdd:
        begin
          LRegEx := '[0-9]{4}' + ADelimiter + '[0-9]{1,2}' + ADelimiter + '[0-9]{1,2}';
          LDayPosition := 2;
          LMonthPosition := 1;
          LYearPosition := 0;
        end;
      yymmdd:
        begin
          LRegEx := '[0-9]{2}' + ADelimiter + '[0-9]{1,2}' + ADelimiter + '[0-9]{1,2}';
          LDayPosition := 2;
          LMonthPosition := 1;
          LYearPosition := 0;
        end;
    end;

    if not TRegEx.IsMatch(ADate, LRegEx) then
    begin
      if ARaiseExcept then
        raise EValidation.Create('Data com formato inválido.');
      ADescriptionErrors := 'Data com formato inválido.';
      Result := False;
      Exit;
    end;

    LPartsDate := TMyString.SeparateText(ADate, ADelimiter);
    try
      LDay := LPartsDate[LDayPosition];
      LMonth := LPartsDate[LMonthPosition];
      LYear := LPartsDate[LYearPosition];
    finally
      FreeAndNil(LPartsDate);
    end;

    LDate := LDay + '/' + LMonth + '/' + LYear;
    Result := True;
    try
      StrToDate(LDate);
    except
      if ARaiseExcept then
        raise EValidation.Create('Data informada é inválida.');
      ADescriptionErrors := 'Data informada é inválida.';
      Result := False;
    end;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := False;
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao validar a data. ' + E.Message);
      Result := False;
    end;
  end;
end;

class function TMyType.IsDate(const ADate: String; const ADelimiter: Char; const AFormat: TDateFormat; const ARaiseExcept: Boolean): Boolean;
var
  LDescriptionErrors: String;
begin
  Result := IsDateCore(ADate, ADelimiter, AFormat, LDescriptionErrors, ARaiseExcept);
end;

class function TMyType.IsDate(const ADate: String; const ADelimiter: Char; const AFormat: TDateFormat; out ADescriptionErrors: String; const ARaiseExcept: Boolean): Boolean;
begin
  Result := IsDateCore(ADate, ADelimiter, AFormat, ADescriptionErrors, ARaiseExcept);
end;

class function TMyType.AsDate(const ADate: String; const ADelimiter: Char; const AFormat: TDateFormat; const AValidate, ARaiseExcept: Boolean): String;
var
  LDate: String;
begin
  if AValidate then
    if not IsDate(ADate, ADelimiter, AFormat, ARaiseExcept) then
    begin
      Result := 'Data informada é inválida.';
      Exit
    end;

  LDate := TMyString.OnlyNumber(ADate);
  try
    case AFormat of
      mmddyyyy:
        begin
          LDate := LDate.PadLeft(8, '0');
          Result := Copy(LDate, 1,  2) + ADelimiter +
                    Copy(LDate, 3,  2) + ADelimiter +
                    Copy(LDate, 5,  4);
        end;
      mmddyy:
        begin
          LDate := LDate.PadLeft(6, '0');
          Result := Copy(LDate, 1,  2) + ADelimiter +
                    Copy(LDate, 3,  2) + ADelimiter +
                    Copy(LDate, 5,  2);
        end;
      ddmmyyyy:
        begin
          LDate := LDate.PadLeft(8, '0');
          Result := Copy(LDate, 1,  2) + ADelimiter +
                    Copy(LDate, 3,  2) + ADelimiter +
                    Copy(LDate, 5,  4);
        end;
      ddmmyy:
        begin
          LDate := LDate.PadLeft(6, '0');
          Result := Copy(LDate, 1,  2) + ADelimiter +
                    Copy(LDate, 3,  2) + ADelimiter +
                    Copy(LDate, 5,  2);
        end;
      yyyymmdd:
        begin
          LDate := LDate.PadLeft(8, '0');
          Result := Copy(LDate, 1,  4) + ADelimiter +
                    Copy(LDate, 5,  2) + ADelimiter +
                    Copy(LDate, 7,  2);
        end;
      yymmdd:
        begin
          LDate := LDate.PadLeft(6, '0');
          Result := Copy(LDate, 1,  2) + ADelimiter +
                    Copy(LDate, 3,  2) + ADelimiter +
                    Copy(LDate, 5,  2);
        end;
    end;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar a data. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.mmddyyyyMask(const ADelimiter: Char): String;
begin
  Result := '##' + ADelimiter + '##' + ADelimiter + '####';
end;

class function TMyType.mmddyyMask(const ADelimiter: Char): String;
begin
  Result := '##' + ADelimiter + '##' + ADelimiter + '##';
end;

class function TMyType.ddmmyyyyMask(const ADelimiter: Char): String;
begin
  Result := '##' + ADelimiter + '##' + ADelimiter + '####';
end;

class function TMyType.ddmmyyMask(const ADelimiter: Char): String;
begin
  Result := '##' + ADelimiter + '##' + ADelimiter + '##';
end;

class function TMyType.yyyymmddMask(const ADelimiter: Char): String;
begin
  Result := '####' + ADelimiter + '##' + ADelimiter + '##';
end;

class function TMyType.yymmddMask(const ADelimiter: Char): String;
begin
  Result := '##' + ADelimiter + '##' + ADelimiter + '##';
end;

class function TMyType.AsNcm(const ANcm: String; const AMask, ARaiseExcept: Boolean): String;
var
  LNcm: String;
begin
  LNcm := TMyString.OnlyNumber(ANcm);
  try
    if AMask then
    begin
      LNcm := LNcm.PadLeft(8, '0');
      Result := Copy(LNcm, 1,  4) + '.' +
                Copy(LNcm, 5,  2) + '.' +
                Copy(LNcm, 7,  2);
    end
    else
      Result := LNcm;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o NCM. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.NcmMask: String;
begin
  Result := '####.##.##';
end;

class function TMyType.AsCest(const ACest: String; const AMask, ARaiseExcept: Boolean): String;
var
  LCest: String;
begin
  LCest := TMyString.OnlyNumber(ACest);
  try
    if AMask then
    begin
      LCest := LCest.PadLeft(7, '0');
      Result := Copy(LCest, 1,  2) + '.' +
                Copy(LCest, 3,  3) + '.' +
                Copy(LCest, 5,  2);
    end
    else
      Result := LCest;
  except
    on E:EValidation do
    begin
      if ARaiseExcept then
        raise EValidation.Create(E.Message);
      Result := 'error';
    end;
    on E:Exception do
    begin
      if ARaiseExcept then
        raise Exception.Create('Erro interno ao retornar o CEST. ' + E.Message);
      Result := 'error';
    end;
  end;
end;

class function TMyType.CestMask: String;
begin
  Result := '##.###.##';
end;

end.
