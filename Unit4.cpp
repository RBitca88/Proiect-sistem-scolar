//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit4.h"
#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit5.h"
#include "Unit6.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;
int IDP, CLP;
//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton19Click(TObject *Sender)
{
 Panel8->Visible=true;
 dm->Qexperienta->Close();
 dm->Qexperienta->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton20Click(TObject *Sender)
{
Edit14->Text=dm->Qexperienta->FieldByName("denumire_exp")->AsString;
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton15Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
SpeedButton16->Visible=false;
SpeedButton18->Visible=false;
dm->Qprofesor->Close();
dm->Qprofesor->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm4::FormShow(TObject *Sender)
{
Panel8->Visible=false;
TabSheet1->TabVisible=true;
TabSheet2->TabVisible=false;
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton17Click(TObject *Sender)
{
TabSheet2->TabVisible=false;
TabSheet1->TabVisible=true;
SpeedButton17->Caption="ANULEAZA";
Edit13->Clear();
dm->Qprofesor->Close();
dm->Qprofesor->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton14Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
SpeedButton16->Visible=false;
SpeedButton17->Caption="INAPOI";
SpeedButton18->Visible=true;
dm->Qprofesor->Close();
dm->Qprofesor->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton18Click(TObject *Sender)
{
if (MessageDlg("Dvs intr-adevari doriti sa eliminati inregistararea?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo,0) == mrYes)
{
dm->Qdelete->Close();
dm->Qdelete->SQL->Clear();
dm->Qdelete->SQL->Add("update profesor set activ=0 where profesor_id=:profesor_id");
dm->Qdelete->ParamByName("profesor_id")->AsInteger=dm->Qprofesor->FieldByName("profesor_id")->AsInteger;
dm->Qdelete->ExecSQL();
dm->Qprofesor->Close();
dm->Qprofesor->Open();
MessageDlg("Eliminare cu succes!!!", mtInformation, TMsgDlgButtons()<<mbOK,0);
}
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton13Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
Edit13->Visible=true;
SpeedButton16->Visible=true;
SpeedButton17->Caption="ANULEAZA";
SpeedButton18->Visible=false;
RB3->Visible=true;
RB4->Visible=true;
GroupBox2->Visible=true;
dm->Qprofesor->Close();
dm->Qprofesor->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton16Click(TObject *Sender)
{
TabSheet2->TabVisible=false;
TabSheet1->TabVisible=true;
Edit8->Text=dm->Qprofesor->FieldByName("nume")->AsString;
Edit9->Text=dm->Qprofesor->FieldByName("prenume")->AsString;
Edit14->Text=dm->Qprofesor->FieldByName("denumire_exp")->AsString;
ComboBox2->Text=dm->Qprofesor->FieldByName("gen")->AsString;
Edit10->Text=dm->Qprofesor->FieldByName("telefon")->AsString;
Edit11->Text=dm->Qprofesor->FieldByName("email")->AsString;
DateTimePicker3->Date=dm->Qprofesor->FieldByName("data_nast")->AsDateTime;
DateTimePicker4->Date=dm->Qprofesor->FieldByName("data_inreg")->AsDateTime;
Edit12->Text=dm->Qprofesor->FieldByName("adresa")->AsString;
Edit1->Text=dm->Qprofesor->FieldByName("id")->AsString;
IDP=dm->Qprofesor->FieldByName("profesor_id")->AsInteger;
CLP=dm->Qprofesor->FieldByName("experienta_id")->AsInteger;
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton12Click(TObject *Sender)
{
if((Edit8->Text!="")&&(Edit9->Text!="")&&(Edit10->Text!="")&&(Edit11->Text!="")&&(Edit12->Text!="")&&(ComboBox2->Text!="")&&(Edit14->Text!=""))
{
	dm->Qeditp->Close();
	dm->Qeditp->ParamByName("profesor_id")->AsInteger=IDP;
	dm->Qeditp->ParamByName("nume")->AsString=Edit8->Text;
	dm->Qeditp->ParamByName("prenume")->AsString=Edit9->Text;
	dm->Qeditp->ParamByName("experienta_id")->AsInteger=CLP;
	dm->Qeditp->ParamByName("gen")->AsString=ComboBox2->Text;
	dm->Qeditp->ParamByName("telefon")->AsString=Edit10->Text;
	dm->Qeditp->ParamByName("email")->AsString=Edit11->Text;
	dm->Qeditp->ParamByName("data_nast")->AsDate=DateTimePicker3->Date;
	dm->Qeditp->ParamByName("data_inreg")->AsDate=DateTimePicker4->Date;
	dm->Qeditp->ParamByName("adresa")->AsString=Edit12->Text;
	dm->Qeditp->ParamByName("id")->AsString=Edit1->Text;
	dm->Qeditp->ExecSQL();
	dm->Qprofesor->Close();
	dm->Qprofesor->Open();

	ShowMessage("Actualizare cu succes");
	Edit1->Clear();
	Edit8->Clear();
	Edit9->Clear();
	Edit10->Clear();
	Edit11->Clear();
	Edit12->Clear();
	Edit14->Clear();
	ComboBox2->ItemIndex=-1;
}
else
{
	ShowMessage("Dvs nu ati completat toate cimpurile");
}
}
//---------------------------------------------------------------------------
void __fastcall TForm4::SpeedButton11Click(TObject *Sender)
{
if((Edit8->Text!="")&&(Edit9->Text!="")&&(Edit10->Text!="")&&(Edit11->Text!="")&&(Edit12->Text!="")&&(ComboBox2->Text!="")&&(Edit14->Text!=""))
{
	dm->Qliber->Close();
	dm->Qliber->SQL->Clear();
	dm->Qliber->SQL->Add("insert into profesor(experienta_id, nume, prenume, gen, telefon, email, data_nast, data_inreg, adresa, id) values(:experienta_id, :nume, :prenume, :gen, :telefon, :email, :data_nast, :data_inreg, :adresa, :id)");
	dm->Qliber->ParamByName("nume")->AsString=Edit8->Text;
	dm->Qliber->ParamByName("prenume")->AsString=Edit9->Text;
	dm->Qliber->ParamByName("experienta_id")->AsString=dm->Qexperienta->FieldByName("experienta_id")->AsInteger;
	dm->Qliber->ParamByName("gen")->AsString=ComboBox2->Text;
	dm->Qliber->ParamByName("telefon")->AsString=Edit10->Text;
	dm->Qliber->ParamByName("email")->AsString=Edit11->Text;
	dm->Qliber->ParamByName("data_nast")->AsDate=DateTimePicker3->Date;
	dm->Qliber->ParamByName("data_inreg")->AsDate=DateTimePicker4->Date;
	dm->Qliber->ParamByName("adresa")->AsString=Edit12->Text;
	dm->Qliber->ParamByName("id")->AsString=Edit1->Text;
	dm->Qliber->ExecSQL();
	dm->Qprofesor->Close();
	dm->Qprofesor->Open();

	ShowMessage("Inregistrare cu succes");
    Edit1->Clear();
	Edit8->Clear();
	Edit9->Clear();
	Edit10->Clear();
	Edit11->Clear();
	Edit12->Clear();
	Edit14->Clear();
	ComboBox2->ItemIndex=-1;
}
else
{
	ShowMessage("Dvs nu ati completat toate cimpurile");
}
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Edit13Change(TObject *Sender)
{
 AnsiString s;
 if(Edit13->Text!="")
 {
   s="select p.*, ex.denumire_exp from profesor p inner join experienta ex on p.experienta_id=ex.experienta_id where activ=1 and";
   if(RB3->Checked)
   {
	s=s+" nume like '"+Edit13->Text+"%' ";
   }
	 else
	 {
	  s=s+" denumire_exp like '"+Edit13->Text+"%' ";
	 }

	 s=s+" order by p.nume ";
	 dm->Qprofesor->Close();
	 dm->Qprofesor->SQL->Clear();
	 dm->Qprofesor->SQL->Add(s);
	 dm->Qprofesor->Open();
  }
  else
  {
   dm->Qprofesor->Close();
   dm->Qprofesor->SQL->Clear();
   s="select p.*, ex.denumire_exp from profesor p inner join experienta ex on p.experienta_id=ex.experienta_id where activ=1";
   dm->Qprofesor->SQL->Add(s);
   dm->Qprofesor->Open();
  }
}
//---------------------------------------------------------------------------

