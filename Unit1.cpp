//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit5.h"
#include "Unit6.h"
#include "Unit7.h"
#include "Unit8.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SpeedButton1Click(TObject *Sender)
{
	Form2->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SpeedButton2Click(TObject *Sender)
{
Form4->ShowModal();

}
//---------------------------------------------------------------------------
void __fastcall TForm1::SpeedButton3Click(TObject *Sender)
{
Form5->ShowModal();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::SpeedButton6Click(TObject *Sender)
{
Form7->ShowModal();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::FormShow(TObject *Sender)
{
	SpeedButton1->Enabled=false;
	SpeedButton2->Enabled=false;
	SpeedButton3->Enabled=false;
	SpeedButton5->Enabled=false;
    SpeedButton7->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SpeedButton5Click(TObject *Sender)
{
Form8->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SpeedButton7Click(TObject *Sender)
{
Form7->Edit1->Clear();
Form7->Edit2->Clear();
Form7->ShowModal();
}
//---------------------------------------------------------------------------


