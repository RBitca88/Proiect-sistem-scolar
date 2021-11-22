//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit7.h"
#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit5.h"
#include "Unit6.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm7 *Form7;
//---------------------------------------------------------------------------
__fastcall TForm7::TForm7(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm7::SpeedButton1Click(TObject *Sender)
{
if((Edit1!="")&&(Edit2!=""))
{
	dm->Qliber->Close();
	dm->Qliber->SQL->Clear();
	dm->Qliber->SQL->Add("select * from utilizator where username=:username and pass=:pass");
	dm->Qliber->ParamByName("username")->AsString=Edit1->Text;
	dm->Qliber->ParamByName("pass")->AsString=Edit2->Text;
	dm->Qliber->Open();
	if(!dm->Qliber->IsEmpty())
	{
		switch(dm->Qliber->FieldByName("tip_acces")->AsInteger)
		{
			case 1:
			{
				Close();
				Form6->ShowModal();
				break;
			}
			case 2:
			{
				Close();
				Form1->SpeedButton1->Enabled=true;
				Form1->SpeedButton2->Enabled=true;
				Form1->SpeedButton3->Enabled=true;
				Form1->SpeedButton5->Enabled=false;
				break;
			}
			case 3:
			{
				Close();
				Form1->SpeedButton1->Enabled=true;
				Form1->SpeedButton2->Enabled=true;
				Form1->SpeedButton3->Enabled=true;
				Form1->SpeedButton5->Enabled=true;
                break;
            }
		}
		Form1->SpeedButton6->Enabled=false;
        Form1->SpeedButton7->Enabled=true;
	}
	else
	{
		ShowMessage("Autentificare esuata");
        Edit2->Clear();
    }
}
else
{
	ShowMessage("Completati ambele cimpuri");
}
}
//---------------------------------------------------------------------------
void __fastcall TForm7::SpeedButton2Click(TObject *Sender)
{
Application->Terminate();
}
//---------------------------------------------------------------------------

