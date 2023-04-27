unit uUtils;

interface
uses
  System.RegularExpressions, System.SysUtils;

type
  TAppUtils = class public
    public
      class function FormataFloatToSQL(const Valor : Extended ; out Str : string) : Boolean;static;
  end;

implementation

{ TAppUtils }


class function TAppUtils.FormataFloatToSQL(const Valor : Extended ;out Str : string): Boolean;
begin

  Result := True;

  try
    Str := Format('%2f',[Valor],TFormatSettings.Create('en_US'));
  except
    Result := False;
    Str := EmptyStr;
  end;


end;

end.
