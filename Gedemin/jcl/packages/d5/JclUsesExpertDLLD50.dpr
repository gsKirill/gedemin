Library JclUsesExpertDLLD50;
{
-----------------------------------------------------------------------------
     DO NOT EDIT THIS FILE, IT IS GENERATED BY THE PACKAGE GENERATOR
            ALWAYS EDIT THE RELATED XML FILE (JclUsesExpertDLL-L.xml)

     Last generated: 27-02-2006  20:07:09 UTC
-----------------------------------------------------------------------------
}

{$R *.res}
{$ALIGN ON}
{$ASSERTIONS ON}
{$BOOLEVAL OFF}
{$DEBUGINFO OFF}
{$EXTENDEDSYNTAX ON}
{$IMPORTEDDATA ON}
{$IOCHECKS ON}
{$LOCALSYMBOLS OFF}
{$LONGSTRINGS ON}
{$OPENSTRINGS ON}
{$OPTIMIZATION ON}
{$OVERFLOWCHECKS OFF}
{$RANGECHECKS OFF}
{$REFERENCEINFO OFF}
{$SAFEDIVIDE OFF}
{$STACKFRAMES OFF}
{$TYPEDADDRESS OFF}
{$VARSTRINGCHECKS ON}
{$WRITEABLECONST OFF}
{$MINENUMSIZE 1}
{$IMAGEBASE $580C0000}
{$DESCRIPTION 'JCL Uses Wizard'}
{$IMPLICITBUILD OFF}

uses
  ToolsAPI,
  JCLUsesWizard in '..\..\experts\useswizard\JCLUsesWizard.pas' ,
  JCLOptionsFrame in '..\..\experts\useswizard\JCLOptionsFrame.pas' {FrameJclOptions: TFrame},
  JclUsesDialog in '..\..\experts\useswizard\JclUsesDialog.pas' {FormUsesConfirm},
  JclParseUses in '..\..\experts\useswizard\JclParseUses.pas' 
  ;

exports
  JCLWizardInit name WizardEntryPoint;

end.
