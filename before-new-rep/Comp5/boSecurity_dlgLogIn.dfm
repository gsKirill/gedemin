�
 TDLGLOGIN 0b  TPF0	TdlgLogIndlgLogInLeft� Top� ActiveControl
edPasswordBorderIconsbiSystemMenu BorderStylebsDialogCaption���� � �������ClientHeight� ClientWidthBColor��� Font.CharsetRUSSIAN_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OldCreateOrderPositionpoDesktopCenterOnCreate
FormCreate	OnDestroyFormDestroyPixelsPerInch`
TextHeight TImageimgSecurityLeftTop(Width Height AutoSize	Picture.Data
  TIcon           �     (       @         �                        �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ���                  DDDDDDH        Dwww��D�       Gw�wwxx�@  �@   G�ww��D@ ��   G�wwxx�@ ���   G�ww���@ ���   G�wwxxD@ ���   G�ww���@ ���D  G�wwxx�@ ����  G�ww��D@ ���   G�wwxx�@ ���D  G�ww���@ ����  G�wwxxD@ ���   G�ww���@ ���D  Hw�wwxx�@ ����  ��ww���� ����  DDDDDDH  ���    O� x@  ���    O� x@  �x�    O�H �x� ����   ��xD�x� ����x   �wwx  ����w�   ���� ����@   �DH  ���w@         ���@         �D�w�          ��Hx�          ��wx           �wx�            DH                  ����� ?�� �� � � � � � � � � � � � � � � <�x|�x|�0x� p� ���������������������������  TxLabellblInfoLeftTopWidth,HeightCaption ������� ������������ � ������Font.CharsetRUSSIAN_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.Style 	FromColor׈1 ToColor���   TPanelpnlLoginParamsLeft8Top(Width� Heighti
BevelOuterbvNoneBorderStylebsSingleCtl3DParentColor	ParentCtl3DTabOrder  TLabellblUserLeftTop!WidthLHeightCaption��&����������:FocusControledUser  TLabellblPasswordLeftTop8Width)HeightCaption�&�����:FocusControl
edPassword  TLabellblSubSystemLeftTop
Width@HeightCaption��&��������:FocusControledSubSystem  TEdit
edPasswordLeftXTop6Width� HeightCtl3DParentCtl3DPasswordChar*TabOrder  TEditedSubSystemLeftXTopWidth� HeightCtl3DParentCtl3DTabOrder   TEditedUserLeftXTopWidth� HeightCtl3DParentCtl3DTabOrder  TmmCheckBoxExchbxShowLoginParamsLeftWTopPWidth� HeightCaption�������� ��������� &�����TabOrder   TmBitButtonmbbOkLeft� Top� Caption&OkActionactLoginDefault	Font.CharsetRUSSIAN_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTahoma
Font.Style ParentColor
ParentFontTabOrder  TmBitButton	mbbCancelLeft� Top� Caption�&�����ModalResultFont.CharsetRUSSIAN_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTahoma
Font.Style ParentColor
ParentFontTabOrderOnClickmbbCancelClick  TmBitButtonmbbEditDataLeftTop� Caption
&���������Font.CharsetRUSSIAN_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTahoma
Font.Style ParentColor
ParentFontTabOrderOnClickmbbEditDataClick  TActionList
ActionListLeft� Top TActionactLoginCaptionOk	OnExecuteactLoginExecuteOnUpdateactLoginUpdate   TgsMultilingualSupportgsMultilingualSupportEnabled	LanguagerusContext	TdlgLogInLeftTop  TIBTabletblUserTransactionibtSecurityCachedUpdates	FieldDefsNameUSERKEY
Attributes
faRequired DataType	ftInteger NameNAME
Attributes
faRequired DataTypeftStringSize NamePASSW
Attributes
faRequired DataTypeftStringSize NameFULLNAMEDataTypeftStringSize�  NameDESCRIPTIONDataTypeftStringSize�  NameIBNAME
Attributes
faRequired DataTypeftStringSize NameIBPASSW
Attributes
faRequired DataTypeftStringSize NameEXTERNALKEYDataType	ftInteger NameDISABLEDDataType
ftSmallint Name	LOCKEDOUTDataType
ftSmallint Name
MUSTCHANGEDataType
ftSmallint NameCANTCHANGEPASSWDataType
ftSmallint NamePASSWNEVEREXPDataType
ftSmallint NameEXPDATEDataType
ftDateTime Name	WORKSTARTDataType
ftDateTime NameWORKENDDataType
ftDateTime NameICONDataType	ftInteger NameRESERVEDDataType	ftInteger Name	PEOPLEKEYDataType	ftInteger  	IndexDefsNameRDB$PRIMARY4FieldsUSERKEYOptions	ixPrimaryixUnique  NameFIN_XUSERNAMEFieldsNAMEOptionsixUnique  NameRDB$FOREIGN329Fields	PEOPLEKEY  	StoreDefs		TableNamefin_userLeft� Top  TIBStoredProcspUserLoginTransactionibtSecurityStoredProcNameFIN_P_SEC_LOGINUSERParamsDataType	ftIntegerNameRESULT	ParamTypeptOutput DataType	ftIntegerNameUSERKEY	ParamTypeptOutput DataTypeftStringNameIBNAME	ParamTypeptOutput DataTypeftStringNameIBPASSW	ParamTypeptOutput DataType	ftIntegerNameSESSION	ParamTypeptOutput DataType	ftIntegerNameSUBSYSTEMKEY	ParamTypeptOutput DataTypeftStringName	SUBSYSTEM	ParamTypeptInput DataTypeftStringNameUSERNAME	ParamTypeptInput DataTypeftStringNamePASSW	ParamTypeptInput  Left� Top	ParamDataDataType	ftIntegerNameRESULT	ParamTypeptOutput DataType	ftIntegerNameUSERKEY	ParamTypeptOutput DataTypeftStringNameIBNAME	ParamTypeptOutput DataTypeftStringNameIBPASSW	ParamTypeptOutput DataType	ftIntegerNameSESSION	ParamTypeptOutput DataType	ftIntegerNameSUBSYSTEMKEY	ParamTypeptOutput DataTypeftStringName	SUBSYSTEM	ParamTypeptInput DataTypeftStringNameUSERNAME	ParamTypeptInput DataTypeftStringNamePASSW	ParamTypeptInput    TIBTransactionibtSecurityActiveLeft� Top   