program mytype_api;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Classes,
  Velthuis.Console in 'Velthuis.Console.pas',
  mystring in '..\..\modules\mystring\src\mystring.pas',
  mytype in '..\..\src\mytype.pas';

type
  TCompany = class
  strict private
    { private declarations }
    FName: String;
    FCNPJ: String;
    FUF: String;
    FIE: String;
    FPhone: String;
    FSuframa: String;
  public
    { public declarations }
    property Name: String read FName write FName;
    property CNPJ: String read FCNPJ write FCNPJ;
    property UF: String read FUF write FUF;
    property IE: String read FIE write FIE;
    property Phone: String read FPhone write FPhone;
    property Suframa: String read FSuframa write FSuframa;
  end;

  TVehicle = class
  strict private
    { private declarations }
    FRenavam: String;
    FLicensePlate: String;
  public
    { public declarations }
    property Renavam: String read FRenavam write FRenavam;
    property LicensePlate: String read FLicensePlate write FLicensePlate;
  end;

  TProduct = class
  strict private
    { private declarations }
    FName: String;
    FGTIN: String;
    FPrice: Currency;
    FNCM: String;
    FCEST: String;
  public
    { public declarations }
    property Name: String read FName write FName;
    property GTIN: String read FGTIN write FGTIN;
    property Price: Currency read FPrice write FPrice;
    property NCM: String read FNCM write FNCM;
    property CEST: String read FCEST write FCEST;
  end;

  TUser = class
  strict private
    { private declarations }
    FName: String;
    FCPF: String;
    FPIS: String;
    FCNH: String;
    FEmail: String;
    FPhone: String;
    FBirthday: TDate;
    FHeight: Double;
    FWeight: Double;
    FCard: String;
    FCEP: String;
    FAddress: String;
    FDistrict: String;
    FCity: String;
    FUF: String;
    FCompany: TCompany;
    FVehicle: TVehicle;
    FProduct: TProduct;
  public
    { public declarations }
    constructor Create;
    destructor Destroy; override;
    
    property Name: String read FName write FName;
    property CPF: String read FCPF write FCPF;
    property PIS: String read FPIS write FPIS;
    property CNH: String read FCNH write FCNH;
    property Email: String read FEmail write FEmail;
    property Phone: String read FPhone write FPhone;
    property Birthday: TDate read FBirthday write FBirthday;
    property Height: Double read FHeight write FHeight;
    property Weight: Double read FWeight write FWeight;
    property Card: String read FCard write FCard;
    property CEP: String read FCEP write FCEP;
    property Address: String read FAddress write FAddress;
    property District: String read FDistrict write FDistrict;
    property City: String read FCity write FCity;
    property UF: String read FUF write FUF;
    property Company: TCompany read FCompany write FCompany;
    property Vehicle: TVehicle read FVehicle write FVehicle;
    property Product: TProduct read FProduct write FProduct;
  end;

{ TUser }

constructor TUser.Create;
begin
  FCompany := TCompany.Create;
  FVehicle := TVehicle.Create;
  FProduct := TProduct.Create;
end;

destructor TUser.Destroy;
begin
  FreeAndNil(FCompany);
  FreeAndNil(FVehicle);
  FreeAndNil(FProduct);
  inherited;
end;
  
var
  LUser: TUser;
  LListErrors: TStrings;

procedure ReadUserData;
var
  LUserInput: String;
begin
  WriteLn('');
  WriteLn('Entre com o seu nome (obrigatório)');
  ReadLn(LUserInput);
  LUser.Name := LUserInput.Trim;

  WriteLn(''); 
  WriteLn('Entre com o seu CPF (obrigatório)');
  ReadLn(LUserInput);
  LUser.CPF := LUserInput.Trim;

  WriteLn('');
  WriteLn('Entre com o seu PIS');
  ReadLn(LUserInput);
  LUser.PIS := LUserInput.Trim;

  WriteLn('');
  WriteLn('Entre com a sua CNH');
  ReadLn(LUserInput);
  LUser.CNH := LUserInput.Trim;
  
  WriteLn(''); 
  WriteLn('Entre com o seu email (obrigatório)');
  ReadLn(LUserInput);
  LUser.Email := LUserInput.Trim;

  WriteLn(''); 
  WriteLn('Entre com o seu telefone (obrigatório)');
  ReadLn(LUserInput);
  LUser.Phone := TMyString.OnlyNumber(LUserInput.Trim);

  WriteLn('');
  WriteLn('Entre com a data de nascimento dd/mm/aaaa (obrigatório)');
  ReadLn(LUserInput);
  LUser.Birthday := StrToDateDef(LUserInput.Trim, TDate(0));

  WriteLn('');
  WriteLn('Entre com a sua altura (obrigatório)');
  ReadLn(LUserInput);
  LUser.Height := StrToFloatDef(LUserInput.Trim, 0);

  WriteLn(''); 
  WriteLn('Entre com o seu peso (obrigatório)');
  ReadLn(LUserInput);
  LUser.Weight := StrToFloatDef(LUserInput.Trim, 0);

  WriteLn('');
  WriteLn('Entre com o seu cartão de crédito (obrigatório)');
  ReadLn(LUserInput);
  LUser.Card := LUserInput.Trim;

  WriteLn(''); 
  WriteLn('Entre com o CEP do seu endereço (obrigatório)');
  ReadLn(LUserInput);
  LUser.CEP := LUserInput.Trim;

  WriteLn(''); 
  WriteLn('Entre com o seu endereço (obrigatório)');
  ReadLn(LUserInput);
  LUser.Address := LUserInput.Trim;

  WriteLn(''); 
  WriteLn('Entre com o seu bairro (obrigatório)');
  ReadLn(LUserInput);
  LUser.District := LUserInput.Trim;
  
  WriteLn(''); 
  WriteLn('Entre com a sua cidade (obrigatório)');
  ReadLn(LUserInput);
  LUser.City := LUserInput.Trim;

  WriteLn('');
  WriteLn('Entre com a sua UF (obrigatório)');
  ReadLn(LUserInput);
  LUser.UF := LUserInput.Trim;
end;

procedure ReadCompanyData;
var
  LUserInput: String;
begin
  ClrScr;
  WriteLn('Agora precisamos saber de alguns dados da sua empresa...');

  WriteLn('');
  WriteLn('Entre com o nome da sua empresa (obrigatório)');
  ReadLn(LUserInput);
  LUser.Company.Name := LUserInput.Trim;

  WriteLn(''); 
  WriteLn('Entre com o CNPJ da sua empresa (obrigatório)');
  ReadLn(LUserInput);
  LUser.Company.CNPJ := LUserInput.Trim;

  WriteLn('');
  WriteLn('Entre com a UF da sua empresa (obrigatório)');
  ReadLn(LUserInput);
  LUser.Company.UF := LUserInput.Trim;  

  WriteLn(''); 
  WriteLn('Entre com a inscrição estadual da sua empresa (obrigatório)');
  ReadLn(LUserInput);
  LUser.Company.IE := LUserInput.Trim;

  WriteLn(''); 
  WriteLn('Entre com o telefone da sua empresa (obrigatório)');
  ReadLn(LUserInput);
  LUser.Company.Phone := TMyString.OnlyNumber(LUserInput.Trim);

  WriteLn('');
  WriteLn('Entre com o suframa da sua empresa');
  ReadLn(LUserInput);
  LUser.Company.Suframa := LUserInput.Trim;
end;

procedure ReadVehicleData;
var
  LUserInput: String;
begin
  ClrScr;
  WriteLn('Agora precisamos saber de alguns dados do seu veículo...');

  WriteLn('');
  WriteLn('Entre com o renavam do seu veículo');
  ReadLn(LUserInput);
  LUser.Vehicle.Renavam  := LUserInput.Trim;

  WriteLn('');
  WriteLn('Entre com a placa do seu veículo');
  ReadLn(LUserInput);
  LUser.Vehicle.LicensePlate := LUserInput.Trim;
end;

procedure ReadProductData;
var
  LUserInput: String;
begin
  ClrScr;
  WriteLn('Agora precisamos saber de alguns dados de um produto...');

  WriteLn('');
  WriteLn('Entre com o nome do produto (obrigatório)');
  ReadLn(LUserInput);
  LUser.Product.Name := LUserInput.Trim;

  WriteLn('');
  WriteLn('Entre com o GTIN do produto (obrigatório)');
  ReadLn(LUserInput);
  LUser.Product.GTIN := LUserInput.Trim;

  WriteLn('');
  WriteLn('Entre com o preço do produto (obrigatório)');
  ReadLn(LUserInput);
  LUser.Product.Price := StrToCurrDef(LUserInput.Trim, 0);

  WriteLn('');
  WriteLn('Entre com o NCM do produto');
  ReadLn(LUserInput);
  LUser.Product.NCM := LUserInput.Trim;

  WriteLn('');
  WriteLn('Entre com o CEST do produto');
  ReadLn(LUserInput);
  LUser.Product.CEST := LUserInput.Trim;
end;

procedure ValidateUserData;
var  
  LDescriptionErrors: String;
begin
  if LUser.Name.Trim.IsEmpty then
    LListErrors.Add(' - ' + 'Nome não pode ser vazio.')
  else if LUser.Name.Trim.Length <= 2 then
    LListErrors.Add(' - ' + 'Nome deve possuir mais de 2 caracteres.');
  
  if not TMyType.IsCpf(LUser.CPF, LDescriptionErrors) then
    LListErrors.Add(' - ' + LDescriptionErrors);

  if not LUser.PIS.Trim.IsEmpty then
    if not TMyType.IsPis(LUser.PIS, LDescriptionErrors) then
      LListErrors.Add(' - ' + LDescriptionErrors);

  if not LUser.CNH.Trim.IsEmpty then
    if not TMyType.IsCnh(LUser.CNH, LDescriptionErrors) then
      LListErrors.Add(' - ' + LDescriptionErrors);

  if not TMyType.IsEmail(LUser.Email, LDescriptionErrors) then
    LListErrors.Add(' - ' + LDescriptionErrors);

  if TMyString.OnlyNumber(LUser.Phone).Length <= 10 then
  begin
    if not TMyType.IsTelephone(LUser.Phone, LDescriptionErrors) then
      LListErrors.Add(' - ' + LDescriptionErrors);
  end
  else
    if not TMyType.IsCellPhone(LUser.Phone, LDescriptionErrors) then
      LListErrors.Add(' - ' + LDescriptionErrors);  

  if not TMyType.IsDate(DateToStr(LUser.Birthday), '/', TDateFormat.ddmmyyyy, LDescriptionErrors) then
    LListErrors.Add(' - ' + LDescriptionErrors);

  if LUser.Height <= 0 then
    LListErrors.Add(' - ' + 'Altura não informada.');

  if LUser.Weight <= 0 then
    LListErrors.Add(' - ' + 'Peso não informado.');

  if not TMyType.IsCard(LUser.Card, LDescriptionErrors) then
    LListErrors.Add(' - ' + LDescriptionErrors);

  if not TMyType.IsCep(LUser.CEP, LDescriptionErrors, '') then
    LListErrors.Add(' - ' + LDescriptionErrors);

  if LUser.Address.Trim.IsEmpty then
    LListErrors.Add(' - ' + 'Endereço não pode ser vazio.')
  else if LUser.Address.Trim.Length <= 2 then
    LListErrors.Add(' - ' + 'Endereço deve possuir mais de 2 caracteres.');

  if LUser.District.Trim.IsEmpty then
    LListErrors.Add(' - ' + 'Bairro não pode ser vazio.')
  else if LUser.District.Trim.Length <= 2 then
    LListErrors.Add(' - ' + 'Bairro deve possuir mais de 2 caracteres.');
    
  if LUser.City.Trim.IsEmpty then
    LListErrors.Add(' - ' + 'Cidade não pode ser vazio.')
  else if LUser.City.Trim.Length <= 2 then
    LListErrors.Add(' - ' + 'Cidade deve possuir mais de 2 caracteres.');

  if not TMyType.IsUf(LUser.UF, LDescriptionErrors) then
    LListErrors.Add(' - ' + LDescriptionErrors);
end;

procedure ValidateCompanyData;
var  
  LDescriptionErrors: String;
begin
  if LUser.Name.Trim.IsEmpty then
    LListErrors.Add(' - ' + 'Nome da empresa não pode ser vazio.')
  else if LUser.Name.Trim.Length <= 2 then
    LListErrors.Add(' - ' + 'Nome da empresa deve possuir mais de 2 caracteres.');

  if not TMyType.IsCnpj(LUser.Company.CNPJ, LDescriptionErrors) then
    LListErrors.Add(' - ' + LDescriptionErrors);

  if not TMyType.IsUf(LUser.Company.UF, LDescriptionErrors) then
    LListErrors.Add(' - ' + LDescriptionErrors);
    
  if not TMyType.IsIe(LUser.Company.IE, LUser.Company.UF, LDescriptionErrors) then
    LListErrors.Add(' - ' + LDescriptionErrors);

  if TMyString.OnlyNumber(LUser.Company.Phone).Length <= 10 then
  begin
    if not TMyType.IsTelephone(LUser.Company.Phone, LDescriptionErrors) then
      LListErrors.Add(' - ' + LDescriptionErrors);
  end
  else
    if not TMyType.IsCellPhone(LUser.Company.Phone, LDescriptionErrors) then
      LListErrors.Add(' - ' + LDescriptionErrors);

  if not LUser.Company.Suframa.Trim.IsEmpty then
    if not TMyType.IsSuframa(LUser.Company.Suframa, LDescriptionErrors) then
      LListErrors.Add(' - ' + LDescriptionErrors);
end;

procedure ValidateVehicleData;
var
  LDescriptionErrors: String;
begin
  if not LUser.Vehicle.Renavam.Trim.IsEmpty then
    if not TMyType.IsRenavam(LUser.Vehicle.Renavam, LDescriptionErrors) then
      LListErrors.Add(' - ' + LDescriptionErrors);

  if not LUser.Vehicle.LicensePlate.Trim.IsEmpty then
    if not TMyType.IsLicensePlate(LUser.Vehicle.LicensePlate, LDescriptionErrors) then
      LListErrors.Add(' - ' + LDescriptionErrors);
end;

procedure ValidateProductData;
var
  LDescriptionErrors: String;
begin
  if LUser.Product.Name.Trim.IsEmpty then
    LListErrors.Add(' - ' + 'Nome do produto não pode ser vazio.')
  else if LUser.Product.Name.Trim.Length <= 2 then
    LListErrors.Add(' - ' + 'Nome do produto deve possuir mais de 2 caracteres.');

  if not TMyType.IsGtin(LUser.Product.GTIN, LDescriptionErrors) then
    LListErrors.Add(' - ' + LDescriptionErrors);

  if LUser.Product.Price <= 0 then
      LListErrors.Add(' - ' + 'Preço do produto não informado.');

  if not LUser.Product.NCM.Trim.IsEmpty then
    if LUser.Product.NCM.Trim.Length <> 8 then
      LListErrors.Add(' - ' + 'NCM deve possuir 8 dígitos.');

  if not LUser.Product.CEST.Trim.IsEmpty then
    if LUser.Product.CEST.Trim.Length <> 7 then
      LListErrors.Add(' - ' + 'CEST deve possuir 7 dígitos.');
end;

procedure SendData;
begin
  ClrScr;
  WriteLn(''); 
  WriteLn('Enviando seus dados...');
  WriteLn('');
  Sleep(1000);
  ClrScr;
end;

procedure ShowData;
begin
  if LListErrors.Count > 0 then
  begin
    WriteLn('Não foi possível realizar o seu cadastro...');   
    Writeln(LListErrors.Text);
  end
  else
  begin        
    WriteLn(''); 
    WriteLn('Cadastro concluído com sucesso.');   
    WriteLn('-----');
    WriteLn('Nome: ' + LUser.Name); 
    WriteLn('CPF: ' + TMyType.AsCpf(LUser.CPF));

    if not LUser.PIS.IsEmpty then
      WriteLn('PIS: ' + TMyType.AsPis(LUser.PIS));

    if not LUser.CNH.IsEmpty then
      WriteLn('CNH: ' + TMyType.AsCnh(LUser.CNH));

    WriteLn('Email: ' + LUser.Email);

    if LUser.Phone.Length <= 10 then
      WriteLn('Telefone: ' + TMyType.AsTelephone(LUser.Phone))
    else
      WriteLn('Telefone: ' + TMyType.AsCellPhone(LUser.Phone));

    WriteLn('Data de nascimento: ' + FormatDateTime('dd/mm/yyyy', LUser.Birthday));
    WriteLn('Altura: ' + FormatFloat('.0,00', LUser.Height));
    WriteLn('Peso: ' + FormatFloat('.0,00', LUser.Weight));
    WriteLn('Cartão de crédito: ' + TMyType.AsCard(LUser.Card));
    WriteLn('CEP: ' + TMyType.AsCep(LUser.CEP));
    WriteLn('Endereço: ' + LUser.Address);
    WriteLn('Bairro: ' + LUser.District);
    WriteLn('Cidade: ' + LUser.City);
    WriteLn('UF: ' + LUser.UF);

    WriteLn('');
    WriteLn('-----');
    WriteLn('Empresa: ' + LUser.Company.Name); 
    WriteLn('CNPJ: ' + TMyType.AsCnpj(LUser.Company.CNPJ));
    WriteLn('UF: ' + LUser.Company.UF);
    WriteLn('IE: ' + TMyType.AsIe(LUser.Company.IE, LUser.Company.UF));

    if LUser.Company.Phone.Length <= 10 then
      WriteLn('Telefone: ' + TMyType.AsTelephone(LUser.Company.Phone))
    else
      WriteLn('Telefone: ' + TMyType.AsCellPhone(LUser.Company.Phone));

    if not LUser.Company.Suframa.IsEmpty then
      WriteLn('Suframa: ' + TMyType.AsSuframa(LUser.Company.Suframa));

    WriteLn('');
    WriteLn('-----');
    if not LUser.Vehicle.Renavam.IsEmpty then
      WriteLn('Renavam: ' + TMyType.AsRenavam(LUser.Vehicle.Renavam));

    if not LUser.Vehicle.LicensePlate.IsEmpty then
      WriteLn('Placa: ' + TMyType.AsLicensePlate(LUser.Vehicle.LicensePlate));

    WriteLn('');
    WriteLn('-----');
    WriteLn('Produto: ' + LUser.Product.Name);
    WriteLn('GTIN: ' + TMyType.AsGtin(LUser.Product.GTIN));
    WriteLn('Preço: ' + FormatCurr('R$ .0,00', LUser.Product.Price));
    if not LUser.Product.NCM.IsEmpty then
      WriteLn('NCM: ' + TMyType.AsNcm(LUser.Product.NCM));
    if not LUser.Product.CEST.IsEmpty then
      WriteLn('CEST: ' + TMyType.AsCest(LUser.Product.CEST));
  end;
end;

//Main program

begin
  LUser := TUser.Create;
  LListErrors := TStringList.Create;
  try
    try
      WriteLn('Bem vindo ao seu cadastro...');
      ReadUserData;
      ReadCompanyData;
      ReadVehicleData;
      ReadProductData;

      ValidateUserData;
      ValidateCompanyData;
      ValidateVehicleData;
      ValidateProductData;

      SendData;
      ShowData;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    FreeAndNil(LUser);
    FreeAndNil(LListErrors);
  end;
end.
