unit uAppDataSet;

interface

uses
  Data.Win.ADODB, System.Classes;

type
  TAppDataSet = class(TADOQuery)

  public
    constructor Create(AOwner : TComponent);override;
    destructor Destroy; override;



end;

implementation

{ TAppDataSet }

constructor TAppDataSet.Create(AOwner: TComponent);
begin
  inherited;
end;

destructor TAppDataSet.Destroy;
begin
  inherited;
end;

end.
