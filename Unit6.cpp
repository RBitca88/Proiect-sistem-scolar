//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit6.h"
#include "Unit3.h"
#include "Unit2.h"
#include "Unit1.h"
#include "Unit4.h"
#include "Unit5.h"
#include "Unit7.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm6 *Form6;
int ID_elev;
//---------------------------------------------------------------------------
__fastcall TForm6::TForm6(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm6::SpeedButton20Click(TObject *Sender)
{
if(Edit6->Text!="")
{
	dm->Qexperienta->Close();
	dm->Qexperienta->SQL->Clear();
	dm->Qexperienta->SQL->Add("select * from experienta e inner join profesor p on p.experienta_id=e.experienta_id where id=:id and activ=1");
	dm->Qexperienta->ParamByName("id")->AsString=Edit6->Text;
	dm->Qexperienta->Open();
	Edit1->Text=dm->Qexperienta->FieldByName("denumire_exp")->AsString;
	Edit5->Text=dm->Qexperienta->FieldByName("denumire_exp")->AsString;
}
else
{
    ShowMessage("Dvs nu ati introdus ID-ul");
}
}
//---------------------------------------------------------------------------
void __fastcall TForm6::SpeedButton10Click(TObject *Sender)
{
if(Edit6->Text!="")
{
	dm->Qclasa->Close();
	dm->Qclasa->Open();
	Edit2->Text=dm->Qclasa->FieldByName("nume_clasa")->AsString;
	int z;
	AnsiString S;

	Edit2->Text=dm->Qclasa->FieldByName("nume_clasa")->AsString;
	z=dm->Qclasa->FieldByName("clasa_id")->AsInteger;
	S="select  cl.*,e.* from clasa cl inner join elev e on e.clasa_id=cl.clasa_id where cl.clasa_id= "+IntToStr(z)+"";
	dm->Qnota->Close();
	dm->Qnota->SQL->Clear();
	dm->Qnota->SQL->Add(S);
 	dm->Qnota->Open();

}
else
{
    ShowMessage("Dvs nu ati introdus ID-ul");
}
}
//---------------------------------------------------------------------------
void __fastcall TForm6::DBGrid4CellClick(TColumn *Column)
{
Edit1->Text=dm->Qexperienta->FieldByName("denumire_exp")->AsString;
Edit5->Text=dm->Qexperienta->FieldByName("denumire_exp")->AsString;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::DBGrid2CellClick(TColumn *Column)
{
 int z;
 AnsiString S;

 Edit2->Text=dm->Qclasa->FieldByName("nume_clasa")->AsString;
 z=dm->Qclasa->FieldByName("clasa_id")->AsInteger;
 S="select  cl.*,e.* from clasa cl inner join elev e on e.clasa_id=cl.clasa_id where cl.clasa_id= "+IntToStr(z)+"";
 dm->Qnota->Close();
 dm->Qnota->SQL->Clear();
 dm->Qnota->SQL->Add(S);
 dm->Qnota->Open();

}
//---------------------------------------------------------------------------

void __fastcall TForm6::DBGrid1CellClick(TColumn *Column)
{
Edit3->Text=dm->Qnota->FieldByName("nume")->AsString;
Edit4->Text=dm->Qnota->FieldByName("prenume")->AsString;
Edit5->Text=dm->Qexperienta->FieldByName("denumire_exp")->AsString;
ID_elev=dm->Qnota->FieldByName("elev_id")->AsInteger;
}
//---------------------------------------------------------------------------


void __fastcall TForm6::SpeedButton1Click(TObject *Sender)
{
if((Edit3->Text!="")&&(Edit4->Text!="")&&(Edit5->Text!="")&&(ComboBox1->Text!=""))
{
	dm->Qliber->Close();
	dm->Qliber->SQL->Clear();
	dm->Qliber->SQL->Add("insert into note(elev_id, clasa_id, nota, disciplina, data) values(:elev_id, :clasa_id, :nota, :disciplina, :data)");
	dm->Qliber->ParamByName("elev_id")->AsInteger=dm->Qnota->FieldByName("elev_id")->AsInteger;
	dm->Qliber->ParamByName("clasa_id")->AsInteger=dm->Qnota->FieldByName("clasa_id")->AsInteger;
	dm->Qliber->ParamByName("nota")->AsString=ComboBox1->Text;
	dm->Qliber->ParamByName("disciplina")->AsString=Edit1->Text;
	dm->Qliber->ParamByName("data")->AsDate=DateTimePicker1->Date;
	dm->Qliber->ExecSQL();
	dm->Qprofesor->Close();
	dm->Qprofesor->Open();

	ShowMessage("Inregistrare cu succes");
	Edit3->Clear();
	Edit4->Clear();
	Edit5->Clear();
	ComboBox1->ItemIndex=-1;
}
else
{
	ShowMessage("Dvs nu ati completat toate cimpurile");
}
}
//---------------------------------------------------------------------------

void __fastcall TForm6::FormClose(TObject *Sender, TCloseAction &Action)
{
Application->Terminate();
}
//---------------------------------------------------------------------------

void __fastcall TForm6::SpeedButton2Click(TObject *Sender)
{
dm->Qraport->Close();
dm->Qraport->ParamByName("elev_id")->AsInteger=ID_elev;
dm->Qraport->ParamByName("disciplina")->AsString=Edit5->Text;
dm->Qraport->Open();
dm->Qmedia->Close();
dm->Qmedia->ParamByName("elev_id")->AsInteger=ID_elev;
dm->Qmedia->ParamByName("disciplina")->AsString=Edit5->Text;
dm->Qmedia->Open();
if(!dm->Qraport->IsEmpty())
{
	dm->R1->ShowReport(true);
}
else
{
	ShowMessage("Nu sunt note inregistrate pentru a face raport");
}
}
//---------------------------------------------------------------------------

