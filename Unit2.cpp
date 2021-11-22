//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Unit1.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit5.h"
#include "Unit6.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
int ID, CL;
AnsiString s;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton9Click(TObject *Sender)
{
dm->Qclasa->Close();
dm->Qclasa->Open();
Panel4->Visible=true;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::FormShow(TObject *Sender)
{
Panel4->Visible=false;
TabSheet1->TabVisible=true;
TabSheet2->TabVisible=false;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton10Click(TObject *Sender)
{
Edit7->Text=dm->Qclasa->FieldByName("nume_clasa")->AsString;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton5Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
SpeedButton6->Visible=false;
SpeedButton8->Visible=false;
dm->Qelev->Close();
dm->Qelev->SQL->Clear();
s="select e.*, cl.nume_clasa from elev e inner join clasa cl on e.clasa_id=cl.clasa_id where activ=1";
dm->Qelev->SQL->Add(s);
dm->Qelev->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton3Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
Edit1->Visible=true;
SpeedButton6->Visible=true;
SpeedButton7->Caption="ANULEAZA";
SpeedButton8->Visible=false;
RB1->Visible=true;
RB2->Visible=true;
GroupBox1->Visible=true;
dm->Qelev->Close();
dm->Qelev->SQL->Clear();
s="select e.*, cl.nume_clasa from elev e inner join clasa cl on e.clasa_id=cl.clasa_id where activ=1";
dm->Qelev->SQL->Add(s);
dm->Qelev->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton6Click(TObject *Sender)
{
TabSheet2->TabVisible=false;
TabSheet1->TabVisible=true;
Edit2->Text=dm->Qelev->FieldByName("nume")->AsString;
Edit3->Text=dm->Qelev->FieldByName("prenume")->AsString;
Edit7->Text=dm->Qelev->FieldByName("nume_clasa")->AsString;
ComboBox1->Text=dm->Qelev->FieldByName("gen")->AsString;
Edit4->Text=dm->Qelev->FieldByName("telefon")->AsString;
Edit5->Text=dm->Qelev->FieldByName("email")->AsString;
DateTimePicker1->Date=dm->Qelev->FieldByName("data_nast")->AsDateTime;
DateTimePicker2->Date=dm->Qelev->FieldByName("data_inreg")->AsDateTime;
Edit6->Text=dm->Qelev->FieldByName("adresa")->AsString;
ID=dm->Qelev->FieldByName("elev_id")->AsInteger;
CL=dm->Qelev->FieldByName("clasa_id")->AsInteger;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton2Click(TObject *Sender)
{
if((Edit2->Text!="")&&(Edit3->Text!="")&&(Edit4->Text!="")&&(Edit5->Text!="")&&(Edit6->Text!="")&&(ComboBox1->Text!="")&&(Edit7->Text!=""))
{
	dm->Qedit->Close();
	dm->Qedit->ParamByName("elev_id")->AsInteger=ID;
	dm->Qedit->ParamByName("nume")->AsString=Edit2->Text;
	dm->Qedit->ParamByName("prenume")->AsString=Edit3->Text;
	dm->Qedit->ParamByName("clasa_id")->AsInteger=CL;
	dm->Qedit->ParamByName("gen")->AsString=ComboBox1->Text;
	dm->Qedit->ParamByName("telefon")->AsString=Edit4->Text;
	dm->Qedit->ParamByName("email")->AsString=Edit5->Text;
	dm->Qedit->ParamByName("data_nast")->AsDate=DateTimePicker1->Date;
	dm->Qedit->ParamByName("data_inreg")->AsDate=DateTimePicker2->Date;
	dm->Qedit->ParamByName("adresa")->AsString=Edit6->Text;
	dm->Qedit->ExecSQL();
	dm->Qelev->Close();
	dm->Qelev->Open();

	ShowMessage("Actualizare cu succes");
	Edit2->Clear();
	Edit3->Clear();
	Edit4->Clear();
	Edit5->Clear();
	Edit6->Clear();
	Edit7->Clear();
	ComboBox1->ItemIndex=-1;
}
else
{
	ShowMessage("Dvs nu ati completat toate cimpurile");
}
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton1Click(TObject *Sender)
{
if((Edit2->Text!="")&&(Edit3->Text!="")&&(Edit4->Text!="")&&(Edit5->Text!="")&&(Edit6->Text!="")&&(ComboBox1->Text!="")&&(Edit7->Text!=""))
{
	dm->Qliber->Close();
	dm->Qliber->SQL->Clear();
	dm->Qliber->SQL->Add("insert into elev(clasa_id, nume, prenume, gen, telefon, email, data_nast, data_inreg, adresa) values(:clasa_id, :nume, :prenume, :gen, :telefon, :email, :data_nast, :data_inreg, :adresa)");
	dm->Qliber->ParamByName("nume")->AsString=Edit2->Text;
	dm->Qliber->ParamByName("prenume")->AsString=Edit3->Text;
	dm->Qliber->ParamByName("clasa_id")->AsString=dm->Qclasa->FieldByName("clasa_id")->AsInteger;
	dm->Qliber->ParamByName("gen")->AsString=ComboBox1->Text;
	dm->Qliber->ParamByName("telefon")->AsString=Edit4->Text;
	dm->Qliber->ParamByName("email")->AsString=Edit5->Text;
	dm->Qliber->ParamByName("data_nast")->AsDate=DateTimePicker1->Date;
	dm->Qliber->ParamByName("data_inreg")->AsDate=DateTimePicker2->Date;
	dm->Qliber->ParamByName("adresa")->AsString=Edit6->Text;
	dm->Qliber->ExecSQL();
	dm->Qelev->Close();
	dm->Qelev->Open();

	ShowMessage("Inregistrare cu succes");
	Edit2->Clear();
	Edit3->Clear();
	Edit4->Clear();
	Edit5->Clear();
	Edit6->Clear();
	Edit7->Clear();
	ComboBox1->Clear();
}
else
{
	ShowMessage("Dvs nu ati completat toate cimpurile");
}
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton4Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
SpeedButton6->Visible=false;
SpeedButton7->Caption="INAPOI";
SpeedButton8->Visible=true;
dm->Qelev->Close();
dm->Qelev->SQL->Clear();
s="select e.*, cl.nume_clasa from elev e inner join clasa cl on e.clasa_id=cl.clasa_id where activ=1";
dm->Qelev->SQL->Add(s);
dm->Qelev->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton8Click(TObject *Sender)
{
if (MessageDlg("Dvs intr-adevari doriti sa eliminati inregistararea?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo,0) == mrYes)
{
dm->Qdelete->Close();
dm->Qdelete->ParamByName("elev_id")->AsInteger=dm->Qelev->FieldByName("elev_id")->AsInteger;
dm->Qdelete->ExecSQL();
dm->Qelev->Close();
dm->Qelev->Open();
MessageDlg("Eliminare cu succes!!!", mtInformation, TMsgDlgButtons()<<mbOK,0);
}
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SpeedButton7Click(TObject *Sender)
{
TabSheet2->TabVisible=false;
TabSheet1->TabVisible=true;
SpeedButton7->Caption="ANULEAZA";
Edit1->Clear();
dm->Qelev->Close();
dm->Qelev->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Edit1Change(TObject *Sender)
{
 AnsiString s;
 if(Edit1->Text!="")
 {
   s="select e.*, cl.nume_clasa from elev e inner join clasa cl on e.clasa_id=cl.clasa_id where activ=1 and ";
   if(RB1->Checked)//cautarea dupa prenume
   {
	s=s+" nume like '"+Edit1->Text+"%' ";
   }
	 else
	 {
	  s=s+" cl.nume_clasa like '%"+Edit1->Text+"%' ";
	 }

	 //s=s+" order by clasa_id ";
	 dm->Qelev->Close();
	 dm->Qelev->SQL->Clear();
	 dm->Qelev->SQL->Add(s);
	 dm->Qelev->Open();
  }
  else
  {
   dm->Qelev->Close();
   dm->Qelev->SQL->Clear();
   s="select e.*, cl.nume_clasa from elev e inner join clasa cl on e.clasa_id=cl.clasa_id where activ=1";
   dm->Qelev->SQL->Add(s);
   dm->Qelev->Open();
  }
}
//---------------------------------------------------------------------------

