//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Phys.MSSQL.hpp>
#include <FireDAC.Phys.MSSQLDef.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include "frxClass.hpp"
#include "frxDBSet.hpp"
//---------------------------------------------------------------------------
class Tdm : public TDataModule
{
__published:	// IDE-managed Components
	TFDConnection *FDConnection1;
	TFDQuery *Qclasa;
	TDataSource *DSQclasa;
	TFDQuery *Qelev;
	TDataSource *DSQelev;
	TFDQuery *Qedit;
	TFDQuery *Qliber;
	TFDQuery *Qdelete;
	TFDQuery *Qexperienta;
	TDataSource *DSQexperienta;
	TFDQuery *Qprofesor;
	TDataSource *DSQprofesor;
	TFDQuery *Qeditp;
	TFDQuery *Qtaxa;
	TFDQuery *Qlibtaxa;
	TDataSource *DSQtaxa;
	TFDQuery *Qeditt;
	TFDQuery *Qnota;
	TDataSource *DSQnota;
	TFDQuery *Qutilizator;
	TDataSource *DSQutilizator;
	TfrxReport *R1;
	TfrxDBDataset *frxDBDataset1;
	TFDQuery *Qraport;
	TFDQuery *Qmedia;
	TDataSource *DDSQmedia;
	TfrxDBDataset *frxDBDataset2;
private:	// User declarations
public:		// User declarations
	__fastcall Tdm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tdm *dm;
//---------------------------------------------------------------------------
#endif
