//---------------------------------------------------------------------------

#ifndef Unit6H
#define Unit6H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
class TForm6 : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TPanel *Panel2;
	TDBGrid *DBGrid1;
	TPanel *Panel3;
	TLabel *Label1;
	TEdit *Edit1;
	TPanel *Panel8;
	TSpeedButton *SpeedButton20;
	TDBGrid *DBGrid4;
	TLabel *Label2;
	TEdit *Edit2;
	TPanel *Panel4;
	TSpeedButton *SpeedButton10;
	TDBGrid *DBGrid2;
	TLabel *Label3;
	TEdit *Edit3;
	TLabel *Label4;
	TEdit *Edit4;
	TLabel *Label5;
	TDateTimePicker *DateTimePicker1;
	TLabel *Label6;
	TEdit *Edit5;
	TComboBox *ComboBox1;
	TLabel *Label7;
	TSpeedButton *SpeedButton1;
	TPanel *Panel5;
	TLabel *Label8;
	TEdit *Edit6;
	TSpeedButton *SpeedButton2;
	void __fastcall SpeedButton20Click(TObject *Sender);
	void __fastcall SpeedButton10Click(TObject *Sender);
	void __fastcall DBGrid4CellClick(TColumn *Column);
	void __fastcall DBGrid2CellClick(TColumn *Column);
	void __fastcall DBGrid1CellClick(TColumn *Column);
	void __fastcall SpeedButton1Click(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall SpeedButton2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm6(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm6 *Form6;
//---------------------------------------------------------------------------
#endif
