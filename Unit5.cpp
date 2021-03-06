//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit5.h"
#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit6.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm5 *Form5;
int IDT, CLT, TX;
//---------------------------------------------------------------------------
__fastcall TForm5::TForm5(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm5::SpeedButton1Click(TObject *Sender)
{
TabSheet1->TabVisible=false;
TabSheet2->TabVisible=true;
SpeedButton8->Visible=false;
dm->Qelev->Close();
dm->Qelev->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm5::SpeedButton6Click(TObject *Sender)
{
TabSheet2->TabVisible=false;
TabSheet1->TabVisible=true;
Edit7->Visible=false;
Label6->Visible=false;
Edit2->Text=dm->Qelev->FieldByName("nume")->AsString;
Edit3->Text=dm->Qelev->FieldByName("prenume")->AsString;
Edit4->Text=dm->Qelev->FieldByName("nume_clasa")->AsString;

IDT=dm->Qelev->FieldByName("elev_id")->AsInteger;
CLT=dm->Qelev->FieldByName("clasa_id")->AsInteger;
}
//---------------------------------------------------------------------------
void __fastcall TForm5::SpeedButton10Click(TObject *Sender)
{
if((Edit2->Text!="")&&(Edit3->Text!="")&&(Edit4->Text!="")&&(Edit5->Text!="")&&(Edit6->Text!="")&&(ComboBox1->Text!=""))
{
	dm->Qlibtaxa->Close();
	dm->Qlibtaxa->SQL->Clear();
	dm->Qlibtaxa->SQL->Add("insert into taxa(clasa, nume, prenume, tip_achitare, suma, suma_depusa, suma_ramasa, data_achit) values( :clasa, :nume, :prenume, :tip_achitare, :suma, :suma_depusa, :suma_ramasa, :data_achit)");
	dm->Qlibtaxa->ParamByName("clasa")->AsString=Edit4->Text;
	dm->Qlibtaxa->ParamByName("nume")->AsString=Edit2->Text;
	dm->Qlibtaxa->ParamByName("prenume")->AsString=Edit3->Text;
	dm->Qlibtaxa->ParamByName("tip_achitare")->AsString=ComboBox1->Text;
	dm->Qlibtaxa->ParamByName("suma")->AsFloat=Edit6->Text.ToDouble();
	dm->Qlibtaxa->ParamByName("suma_depusa")->AsFloat =Edit5->Text.ToDouble();
	dm->Qlibtaxa->ParamByName("suma_ramasa")->AsInteger=Edit6->Text.ToDouble() - Edit5->Text.ToDouble();
	dm->Qlibtaxa->ParamByName("data_achit")->AsDate=DateTimePicker1->Date;
	dm->Qlibtaxa->ExecSQL();
	dm->Qtaxa->Close();
	dm->Qtaxa->Open();

	ShowMessage("Inregistrare cu succes");
	Edit2->Clear();
	Edit3->Clear();
	Edit4->Clear();
	Edit5->Clear();
	Edit6->Clear();
	ComboBox1->ItemIndex=-1;
}
else
{
	ShowMessage("Dvs nu ati completat toate cimpurile");
}
}
//---------------------------------------------------------------------------
void __fastcall TForm5::SpeedButton2Click(TObject *Sender)
{
dm->Qtaxa->Close();
dm->Qtaxa->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm5::DBGrid2CellClick(TColumn *Column)
{
Edit7->Visible=true;
Label6->Visible=true;
Edit2->Text=dm->Qtaxa->FieldByName("nume")->AsString;
Edit3->Text=dm->Qtaxa->FieldByName("prenume")->AsString;
Edit4->Text=dm->Qtaxa->FieldByName("clasa")->AsString;
ComboBox1->Text=dm->Qtaxa->FieldByName("tip_achitare")->AsString;
Edit6->Text=dm->Qtaxa->FieldByName("suma")->AsFloat;
Edit5->Text=dm->Qtaxa->FieldByName("suma_depusa")->AsFloat;
Edit7->Text=dm->Qtaxa->FieldByName("suma_ramasa")->AsFloat;
DateTimePicker1->Date=dm->Qtaxa->FieldByName("data_achit")->AsDateTime;
TX=dm->Qtaxa->FieldByName("taxa_id")->AsInteger;

//IDT=dm->Qelev->FieldByName("elev_id")->AsInteger;
//CLT=dm->Qelev->FieldByName("clasa_id")->AsInteger;
}
//---------------------------------------------------------------------------

void __fastcall TForm5::SpeedButton5Click(TObject *Sender)
{
  if((Edit2->Text!="")&&(Edit3->Text!="")&&(Edit4->Text!="")&&(Edit5->Text!="")&&(Edit6->Text!="")&&(ComboBox1->Text!=""))
{
	dm->Qeditt->Close();
	dm->Qeditt->SQL->Clear();
	dm->Qeditt->SQL->Add("insert into taxa(clasa, nume, prenume, tip_achitare, suma, suma_depusa, suma_ramasa, data_achit) values( :clasa, :nume, :prenume, :tip_achitare, :suma, :suma_depusa, :suma_ramasa, :data_achit)");
    //dm->Qeditt->ParamByName("taxa_id")->AsInteger=TX;
	dm->Qeditt->ParamByName("clasa")->AsString=Edit4->Text;
	dm->Qeditt->ParamByName("nume")->AsString=Edit2->Text;
	dm->Qeditt->ParamByName("prenume")->AsString=Edit3->Text;
	dm->Qeditt->ParamByName("tip_achitare")->AsString=ComboBox1->Text;
	dm->Qeditt->ParamByName("suma")->AsFloat=Edit6->Text.ToDouble();
	dm->Qeditt->ParamByName("suma_depusa")->AsFloat =Edit5->Text.ToDouble();
	dm->Qeditt->ParamByName("suma_ramasa")->AsFloat=Edit7->Text.ToDouble() - Edit5->Text.ToDouble();
	dm->Qeditt->ParamByName("data_achit")->AsDate=DateTimePicker1->Date;
	dm->Qeditt->ExecSQL();
	dm->Qtaxa->Close();
	dm->Qtaxa->Open();

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

void __fastcall TForm5::SpeedButton4Click(TObject *Sender)
{
dm->Qtaxa->Close();
dm->Qtaxa->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm5::SpeedButton9Click(TObject *Sender)
{
if (MessageDlg("Dvs intr-adevari doriti sa eliminati inregistararea?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo,0) == mrYes)
{
dm->Qdelete->Close();
dm->Qdelete->SQL->Clear();
dm->Qdelete->SQL->Add("update taxa set activ=0 where taxa_id=:taxa_id");
dm->Qdelete->ParamByName("taxa_id")->AsInteger=dm->Qtaxa->FieldByName("taxa_id")->AsInteger;
dm->Qdelete->ExecSQL();
dm->Qtaxa->Close();
dm->Qtaxa->Open();
MessageDlg("Eliminare cu succes!!!", mtInformation, TMsgDlgButtons()<<mbOK,0);
}
}
//---------------------------------------------------------------------------

void __fastcall TForm5::SpeedButton7Click(TObject *Sender)
{
TabSheet1->TabVisible=true;
TabSheet2->TabVisible=false;
Edit1->Clear();
dm->Qelev->Close();
dm->Qelev->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm5::FormShow(TObject *Sender)
{
TabSheet1->TabVisible=true;
TabSheet2->TabVisible=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm5::ComboBox1Change(TObject *Sender)
{
if(Edit6->Text!="")
{
	if(ComboBox1->Text=="Lunar")
	{
		Edit5->Text=Edit6->Text.ToDouble() / 12;
	}
	else if(ComboBox1->Text=="Trimestrial")
	{
		Edit5->Text=Edit6->Text.ToDouble() / 4;
	}
	else if(ComboBox1->Text=="Semestrial")
	{
		Edit5->Text=Edit6->Text.ToDouble() / 2;
	}
	else
	{
		Edit5->Text=Edit6->Text;
	}
}
else
{
    ShowMessage("Intruduceti Suma");
}
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit1Change(TObject *Sender)
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
	  s=s+" cl.nume_clasa like '"+Edit1->Text+"' ";
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

