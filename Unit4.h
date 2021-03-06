//---------------------------------------------------------------------------

#ifndef Unit4H
#define Unit4H
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
class TForm4 : public TForm
{
__published:	// IDE-managed Components
	TPageControl *PageControl1;
	TTabSheet *TabSheet1;
	TTabSheet *TabSheet2;
	TPanel *Panel5;
	TSpeedButton *SpeedButton11;
	TSpeedButton *SpeedButton12;
	TSpeedButton *SpeedButton13;
	TSpeedButton *SpeedButton14;
	TSpeedButton *SpeedButton15;
	TPanel *Panel6;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label12;
	TLabel *Label13;
	TLabel *Label14;
	TLabel *Label15;
	TLabel *Label16;
	TLabel *Label17;
	TLabel *Label18;
	TSpeedButton *SpeedButton19;
	TEdit *Edit8;
	TEdit *Edit9;
	TEdit *Edit10;
	TEdit *Edit11;
	TEdit *Edit12;
	TDateTimePicker *DateTimePicker3;
	TDateTimePicker *DateTimePicker4;
	TComboBox *ComboBox2;
	TPanel *Panel8;
	TSpeedButton *SpeedButton20;
	TDBGrid *DBGrid4;
	TPanel *Panel7;
	TSpeedButton *SpeedButton16;
	TSpeedButton *SpeedButton17;
	TSpeedButton *SpeedButton18;
	TGroupBox *GroupBox2;
	TRadioButton *RB3;
	TRadioButton *RB4;
	TEdit *Edit13;
	TDBGrid *DBGrid3;
	TEdit *Edit14;
	TLabel *Label1;
	TEdit *Edit1;
	void __fastcall SpeedButton19Click(TObject *Sender);
	void __fastcall SpeedButton20Click(TObject *Sender);
	void __fastcall SpeedButton15Click(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall SpeedButton17Click(TObject *Sender);
	void __fastcall SpeedButton14Click(TObject *Sender);
	void __fastcall SpeedButton18Click(TObject *Sender);
	void __fastcall SpeedButton13Click(TObject *Sender);
	void __fastcall SpeedButton16Click(TObject *Sender);
	void __fastcall SpeedButton12Click(TObject *Sender);
	void __fastcall SpeedButton11Click(TObject *Sender);
	void __fastcall Edit13Change(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm4(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm4 *Form4;
//---------------------------------------------------------------------------
#endif
