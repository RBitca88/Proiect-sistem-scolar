//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit8.h"
#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit5.h"
#include "Unit6.h"
#include "Unit7.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm8 *Form8;
int UT;
//---------------------------------------------------------------------------
__fastcall TForm8::TForm8(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm8::SpeedButton5Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
SpeedButton16->Visible=false;
SpeedButton18->Visible=false;
dm->Qutilizator->Close();
dm->Qutilizator->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm8::FormShow(TObject *Sender)
{
TabSheet1->TabVisible=true;
TabSheet2->TabVisible=false;
}
//---------------------------------------------------------------------------
void __fastcall TForm8::SpeedButton1Click(TObject *Sender)
{
if((Edit1->Text!="")&&(Edit2->Text!="")&&(Edit3->Text!="")&&(Edit4->Text!="")&&(Edit5->Text!="")&&(Edit6->Text!=""))
{
dm->Qliber->Close();
dm->Qliber->SQL->Clear();
dm->Qliber->SQL->Add("insert into utilizator(nume, prenume, functia, username, pass, tip_acces) values(:nume, :prenume, :functia, :username, :pass, :tip_acces)");
dm->Qliber->ParamByName("nume")->AsString=Edit1->Text;
dm->Qliber->ParamByName("prenume")->AsString=Edit2->Text;
dm->Qliber->ParamByName("functia")->AsString=Edit3->Text;
dm->Qliber->ParamByName("username")->AsString=Edit4->Text;
dm->Qliber->ParamByName("pass")->AsString=Edit5->Text;
dm->Qliber->ParamByName("tip_acces")->AsString=Edit6->Text;
dm->Qliber->ExecSQL();
dm->Qutilizator->Close();
dm->Qutilizator->Open();

ShowMessage("Inregistrare cu succes");
Edit1->Clear();
Edit2->Clear();
Edit3->Clear();
Edit4->Clear();
Edit5->Clear();
Edit6->Clear();
}
else
{
	ShowMessage("Dvs nu ati completat toate cimpurile");
}
}
//---------------------------------------------------------------------------

void __fastcall TForm8::SpeedButton4Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
SpeedButton16->Visible=false;
SpeedButton17->Caption="INAPOI";
SpeedButton18->Visible=true;
dm->Qutilizator->Close();
dm->Qutilizator->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm8::SpeedButton18Click(TObject *Sender)
{
if (MessageDlg("Dvs intr-adevari doriti sa eliminati inregistararea?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo,0) == mrYes)
{
dm->Qdelete->Close();
dm->Qdelete->SQL->Clear();
dm->Qdelete->SQL->Add("update utilizator set activ=0 where utilizator_id=:utilizator_id");
dm->Qdelete->ParamByName("utilizator_id")->AsInteger=dm->Qutilizator->FieldByName("utilizator_id")->AsInteger;
dm->Qdelete->ExecSQL();
dm->Qutilizator->Close();
dm->Qutilizator->Open();
MessageDlg("Eliminare cu succes!!!", mtInformation, TMsgDlgButtons()<<mbOK,0);
}
}
//---------------------------------------------------------------------------

void __fastcall TForm8::SpeedButton17Click(TObject *Sender)
{
TabSheet2->TabVisible=false;
TabSheet1->TabVisible=true;
SpeedButton17->Caption="ANULEAZA";
}
//---------------------------------------------------------------------------

void __fastcall TForm8::SpeedButton16Click(TObject *Sender)
{
TabSheet2->TabVisible=false;
TabSheet1->TabVisible=true;
Edit1->Text=dm->Qutilizator->FieldByName("nume")->AsString;
Edit2->Text=dm->Qutilizator->FieldByName("prenume")->AsString;
Edit3->Text=dm->Qutilizator->FieldByName("functia")->AsString;
Edit4->Text=dm->Qutilizator->FieldByName("username")->AsString;
Edit5->Text=dm->Qutilizator->FieldByName("pass")->AsString;
Edit6->Text=dm->Qutilizator->FieldByName("tip_acces")->AsString;
UT=dm->Qutilizator->FieldByName("utilizator_id")->AsInteger;
}
//---------------------------------------------------------------------------

void __fastcall TForm8::SpeedButton3Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
SpeedButton16->Visible=true;
SpeedButton17->Caption="ANULEAZA";
SpeedButton18->Visible=false;
dm->Qutilizator->Close();
dm->Qutilizator->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm8::SpeedButton2Click(TObject *Sender)
{
if((Edit1->Text!="")&&(Edit2->Text!="")&&(Edit3->Text!="")&&(Edit4->Text!="")&&(Edit5->Text!="")&&(Edit6->Text!=""))
{
dm->Qliber->Close();
dm->Qliber->SQL->Clear();
dm->Qliber->SQL->Add("update utilizator set nume= :nume, prenume= :prenume, functia= :functia, username= :username, pass= :pass, tip_acces= :tip_acces where utilizator_id= :utilizator_id ");
dm->Qliber->ParamByName("utilizator_id")->AsInteger=UT;
dm->Qliber->ParamByName("nume")->AsString=Edit1->Text;
dm->Qliber->ParamByName("prenume")->AsString=Edit2->Text;
dm->Qliber->ParamByName("functia")->AsString=Edit3->Text;
dm->Qliber->ParamByName("username")->AsString=Edit4->Text;
dm->Qliber->ParamByName("pass")->AsString=Edit5->Text;
dm->Qliber->ParamByName("tip_acces")->AsString=Edit6->Text;
dm->Qliber->ExecSQL();
dm->Qutilizator->Close();
dm->Qutilizator->Open();

ShowMessage("Actualizare cu succes");
Edit1->Clear();
Edit2->Clear();
Edit3->Clear();
Edit4->Clear();
Edit5->Clear();
Edit6->Clear();
}
else
{
	ShowMessage("Dvs nu ati completat toate cimpurile");
}
}
//---------------------------------------------------------------------------

