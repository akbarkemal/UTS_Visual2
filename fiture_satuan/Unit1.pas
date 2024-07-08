unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a :string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('Nama Satuan tidak boleh kosong!');
  Exit;
  end else
  if DataModule2.zqsatuan.Locate('nama', edt1.Text,[])then
  begin
    ShowMessage('Nama Satuan'+edt1.Text+' sudah ada didalam sistem');
    end;
  if edt2.Text = '' then
  begin
    ShowMessage('Diskripsi tidak boleh kosong!');
    exit;
  end;
    begin // simpan
    with DataModule2.zqsatuan do
    begin
      SQL.Clear;
      SQL.Add('insert into satuan values(null,"'+edt1.Text+'","'+edt2.Text+'")');
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Disimpan!');
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('Nama Satuan tidak boleh kosong!');
  Exit;
  end;

  begin
    with DataModule2.zqsatuan do
    begin
      SQL.Clear;
      SQL.Add('update satuan set nama="'+edt1.Text+'", diskripsi="'+edt2.Text+'" where id = "'+a+'"');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil diubah');
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
  with DataModule2.zqsatuan do
  begin
    SQL.Clear;
    SQL.Add('delete from satuan where id = "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
  end;
  ShowMessage('Data berhasil dihapus');
end else
begin
  ShowMessage('Data berhasil dihapus!');
end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
end;

procedure TForm1.edt3Change(Sender: TObject);
begin
with DataModule2.zqsatuan do
  begin
    SQL.Clear;
    SQL.Add('select * from satuan where id ="'+edt3.Text+'"');
    Open;
  end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule2.zqsatuan.Fields[1].AsString;
edt2.Text:= DataModule2.zqsatuan.Fields[2].AsString;
a:= DataModule2.zqsatuan.Fields[0].AsString;
end;

end.
