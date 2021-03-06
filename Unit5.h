//---------------------------------------------------------------------------

#ifndef Unit5H
#define Unit5H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TForm5 : public TForm
{
__published:	// IDE-managed Components
	TPageControl *PageControl1;
	TTabSheet *TabSheet1;
	TTabSheet *TabSheet2;
	TPanel *Panel2;
	TSpeedButton *SpeedButton2;
	TSpeedButton *SpeedButton4;
	TSpeedButton *SpeedButton1;
	TPanel *Panel1;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label11;
	TLabel *Label5;
	TLabel *Label7;
	TEdit *Edit2;
	TEdit *Edit3;
	TDateTimePicker *DateTimePicker1;
	TComboBox *ComboBox1;
	TPanel *Panel4;
	TSpeedButton *SpeedButton10;
	TDBGrid *DBGrid2;
	TEdit *Edit4;
	TEdit *Edit5;
	TEdit *Edit6;
	TPanel *Panel3;
	TSpeedButton *SpeedButton6;
	TSpeedButton *SpeedButton7;
	TSpeedButton *SpeedButton8;
	TGroupBox *GroupBox1;
	TRadioButton *RB1;
	TRadioButton *RB2;
	TEdit *Edit1;
	TDBGrid *DBGrid1;
	TSpeedButton *SpeedButton5;
	TEdit *Edit7;
	TLabel *Label6;
	TSpeedButton *SpeedButton9;
	void __fastcall SpeedButton1Click(TObject *Sender);
	void __fastcall SpeedButton6Click(TObject *Sender);
	void __fastcall SpeedButton10Click(TObject *Sender);
	void __fastcall SpeedButton2Click(TObject *Sender);
	void __fastcall DBGrid2CellClick(TColumn *Column);
	void __fastcall SpeedButton5Click(TObject *Sender);
	void __fastcall SpeedButton4Click(TObject *Sender);
	void __fastcall SpeedButton9Click(TObject *Sender);
	void __fastcall SpeedButton7Click(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall ComboBox1Change(TObject *Sender);
	void __fastcall Edit1Change(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm5(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm5 *Form5;
//---------------------------------------------------------------------------
#endif
