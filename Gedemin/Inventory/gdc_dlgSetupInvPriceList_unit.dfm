inherited dlgSetupInvPriceList: TdlgSetupInvPriceList
  Left = 523
  Top = 182
  Caption = '��������� �����-�����'
  ClientHeight = 423
  ClientWidth = 532
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnAccess: TButton
    Left = 4
    Top = 395
    TabOrder = 3
  end
  inherited btnNew: TButton
    Left = 76
    Top = 395
    TabOrder = 4
  end
  inherited btnHelp: TButton
    Left = 148
    Top = 395
    TabOrder = 5
  end
  inherited btnOK: TButton
    Left = 384
    Top = 395
    TabOrder = 1
  end
  inherited btnCancel: TButton
    Left = 459
    Top = 395
    TabOrder = 2
  end
  object pnlMain: TPanel [5]
    Left = 0
    Top = 0
    Width = 532
    Height = 391
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    object pcMain: TPageControl
      Left = 4
      Top = 4
      Width = 523
      Height = 385
      ActivePage = tsCommon
      TabOrder = 0
      OnChange = pcMainChange
      OnChanging = pcMainChanging
      object tsCommon: TTabSheet
        Caption = '��������'
        object lblDocumentName: TLabel
          Left = 8
          Top = 11
          Width = 135
          Height = 13
          Caption = '������������ ���������:'
          FocusControl = edDocumentName
        end
        object lblComment: TLabel
          Left = 8
          Top = 59
          Width = 71
          Height = 13
          Caption = '�����������:'
        end
        object Label1: TLabel
          Left = 8
          Top = 174
          Width = 103
          Height = 13
          Caption = '����� �����-�����:'
          FocusControl = iblcHeaderTable
        end
        object Label2: TLabel
          Left = 8
          Top = 198
          Width = 111
          Height = 13
          Caption = '������� �����-�����:'
          FocusControl = iblcLineTable
        end
        object lblExplorer: TLabel
          Left = 8
          Top = 150
          Width = 123
          Height = 13
          Caption = '����� � �������������:'
        end
        object lblParent: TLabel
          Left = 8
          Top = 35
          Width = 80
          Height = 13
          Caption = '���������� ��:'
        end
        object lbEnglishName: TLabel
          Left = 8
          Top = 126
          Width = 124
          Height = 13
          Caption = '������������ �������:'
          FocusControl = edEnglishName
          WordWrap = True
        end
        object edDocumentName: TDBEdit
          Left = 157
          Top = 7
          Width = 352
          Height = 21
          DataField = 'NAME'
          DataSource = dsgdcBase
          TabOrder = 0
        end
        object edDescription: TDBMemo
          Left = 157
          Top = 55
          Width = 352
          Height = 64
          DataField = 'DESCRIPTION'
          DataSource = dsgdcBase
          TabOrder = 2
        end
        object iblcHeaderTable: TgsIBLookupComboBox
          Left = 157
          Top = 170
          Width = 352
          Height = 21
          HelpContext = 1
          Database = dmDatabase.ibdbGAdmin
          Transaction = ibtrCommon
          DataSource = dsgdcBase
          DataField = 'HEADERRELKEY'
          Fields = 'relationname'
          ListTable = 'AT_RELATIONS'
          ListField = 'LNAME'
          KeyField = 'ID'
          Condition = 
            '(AT_RELATIONS.id IN (SELECT d.relationkey FROM at_relation_field' +
            's d WHERE d.fieldname = '#39'DOCUMENTKEY'#39')) AND (AT_RELATIONS.id NOT' +
            ' IN (SELECT d.relationkey FROM at_relation_fields d WHERE d.fiel' +
            'dname = '#39'MASTERKEY'#39')) AND (AT_RELATIONS.relationname NOT IN ('#39'IN' +
            'V_CARD'#39', '#39'INV_MOVEMENT'#39', '#39'AC_RECORD'#39', '#39'AC_ENTRY'#39')) AND (AT_RELAT' +
            'IONS.relationname NOT LIKE '#39'%LINE'#39')'
          gdClassName = 'TgdcDocumentTable'
          OnCreateNewObject = iblcHeaderTableCreateNewObject
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object iblcLineTable: TgsIBLookupComboBox
          Left = 157
          Top = 194
          Width = 352
          Height = 21
          HelpContext = 1
          Database = dmDatabase.ibdbGAdmin
          Transaction = ibtrCommon
          DataSource = dsgdcBase
          DataField = 'LINERELKEY'
          Fields = 'relationname'
          ListTable = 'AT_RELATIONS'
          ListField = 'lname'
          KeyField = 'id'
          Condition = 
            'AT_RELATIONS.id IN (SELECT d.relationkey FROM at_relation_fields' +
            ' d WHERE d.fieldname = '#39'DOCUMENTKEY'#39') AND AT_RELATIONS.relationn' +
            'ame LIKE '#39'%LINE'#39
          gdClassName = 'TgdcDocumentLineTable'
          OnCreateNewObject = iblcLineTableCreateNewObject
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object ibcmbExplorer: TgsIBLookupComboBox
          Left = 157
          Top = 146
          Width = 352
          Height = 21
          HelpContext = 1
          Database = dmDatabase.ibdbGAdmin
          Transaction = ibtrCommon
          ListTable = 'GD_COMMAND'
          ListField = 'NAME'
          KeyField = 'ID'
          Condition = '(ClassName is Null) or (ClassName = '#39#39')'
          gdClassName = 'TgdcExplorer'
          ViewType = vtTree
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object dbcbIsCommon: TDBCheckBox
          Left = 6
          Top = 219
          Width = 163
          Height = 17
          Alignment = taLeftJustify
          Caption = '����� ��������:'
          DataField = 'iscommon'
          DataSource = dsgdcBase
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object edParentName: TEdit
          Left = 157
          Top = 31
          Width = 352
          Height = 21
          ParentColor = True
          ReadOnly = True
          TabOrder = 1
          Text = 'edParentName'
        end
        object edEnglishName: TEdit
          Left = 157
          Top = 122
          Width = 352
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnChange = edEnglishNameChange
        end
      end
      object tsHeader: TTabSheet
        Caption = '����� �����-�����'
        ImageIndex = 1
        object lvMasterAvailable: TListView
          Left = 7
          Top = 12
          Width = 224
          Height = 209
          Columns = <
            item
              AutoSize = True
              Caption = '������������ ����'
            end>
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          SortType = stText
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = actSelectMasterFieldExecute
        end
        object lvMasterUsed: TListView
          Left = 282
          Top = 12
          Width = 224
          Height = 209
          Columns = <
            item
              AutoSize = True
              Caption = '������������ ����'
            end>
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          SortType = stText
          TabOrder = 1
          ViewStyle = vsReport
          OnDblClick = actDeselectMasterFieldExecute
          OnDeletion = lvDetailUsedDeletion
          OnSelectItem = lvMasterUsedSelectItem
        end
        object btnMasterAdd: TButton
          Left = 241
          Top = 55
          Width = 32
          Height = 21
          Action = actSelectMasterField
          TabOrder = 2
        end
        object btnMasterAddAll: TButton
          Left = 241
          Top = 90
          Width = 32
          Height = 21
          Action = actSelectMasterAllFields
          TabOrder = 3
        end
        object btnMasterRemove: TButton
          Left = 241
          Top = 124
          Width = 32
          Height = 21
          Action = actDeselectMasterField
          TabOrder = 4
        end
        object btnMasterRemoveAll: TButton
          Left = 241
          Top = 159
          Width = 32
          Height = 21
          Action = actDeselectMasterAllFields
          TabOrder = 5
        end
        object memoHeaderInfo: TMemo
          Left = 282
          Top = 230
          Width = 224
          Height = 122
          TabStop = False
          ScrollBars = ssVertical
          TabOrder = 6
          WantReturns = False
        end
      end
      object tsLine: TTabSheet
        Caption = '������� �����-�����'
        ImageIndex = 2
        object lblCurrency: TLabel
          Left = 7
          Top = 229
          Width = 173
          Height = 13
          Caption = '������, � ������� ������� ����:'
        end
        object lblContact: TLabel
          Left = 7
          Top = 279
          Width = 131
          Height = 13
          Caption = '����������� �� �������:'
        end
        object lvDetailAvailable: TListView
          Left = 7
          Top = 12
          Width = 224
          Height = 209
          Columns = <
            item
              AutoSize = True
              Caption = '������������ ����'
            end>
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          SortType = stText
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = actSelectDetailFieldExecute
          OnDeletion = lvDetailAvailableDeletion
          OnSelectItem = lvDetailAvailableSelectItem
        end
        object lvDetailUsed: TListView
          Left = 282
          Top = 12
          Width = 224
          Height = 209
          Columns = <
            item
              AutoSize = True
              Caption = '������������ ����'
            end>
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          SortType = stText
          TabOrder = 1
          ViewStyle = vsReport
          OnDblClick = actDeselectDetailFieldExecute
          OnDeletion = lvDetailUsedDeletion
          OnSelectItem = lvMasterUsedSelectItem
        end
        object btnDetailAdd: TButton
          Left = 241
          Top = 55
          Width = 32
          Height = 21
          Action = actSelectDetailField
          TabOrder = 2
        end
        object btnDetailAddAll: TButton
          Left = 241
          Top = 90
          Width = 32
          Height = 21
          Action = actSelectDetailAllFields
          TabOrder = 3
        end
        object btnDetailRemove: TButton
          Left = 241
          Top = 124
          Width = 32
          Height = 21
          Action = actDeselectDetailField
          TabOrder = 4
        end
        object btnDetailRemoveAll: TButton
          Left = 241
          Top = 159
          Width = 32
          Height = 21
          Action = actDeselectDetailAllFields
          TabOrder = 5
        end
        object memoLineInfo: TMemo
          Left = 282
          Top = 230
          Width = 224
          Height = 121
          TabStop = False
          ScrollBars = ssVertical
          TabOrder = 6
          WantReturns = False
        end
        object luCurrency: TgsIBLookupComboBox
          Left = 7
          Top = 244
          Width = 224
          Height = 21
          HelpContext = 1
          Database = dmDatabase.ibdbGAdmin
          Transaction = ibtrCommon
          ListTable = 'gd_curr'
          ListField = 'name'
          KeyField = 'id'
          gdClassName = 'TgdcCurr'
          ItemHeight = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object luContact: TgsIBLookupComboBox
          Left = 7
          Top = 294
          Width = 224
          Height = 21
          HelpContext = 1
          Database = dmDatabase.ibdbGAdmin
          Transaction = ibtrCommon
          ListTable = 'gd_contact'
          ListField = 'name'
          KeyField = 'id'
          Condition = 'contacttype=2'
          gdClassName = 'TgdcContact'
          ItemHeight = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
      end
    end
  end
  inherited alBase: TActionList
    Left = 430
    Top = 195
    object actAddMasterField: TAction
      Category = 'Master'
      Caption = '�������� ����'
      ImageIndex = 0
    end
    object actEditMasterField: TAction
      Category = 'Master'
      Caption = '������������� ����'
      ImageIndex = 1
    end
    object actDeleteMasterField: TAction
      Category = 'Master'
      Caption = '������� ����'
      ImageIndex = 2
    end
    object actSelectMasterField: TAction
      Category = 'MasterFieldUsage'
      Caption = '>'
      Hint = '������������'
      OnExecute = actSelectMasterFieldExecute
      OnUpdate = actSelectMasterFieldUpdate
    end
    object actSelectMasterAllFields: TAction
      Category = 'MasterFieldUsage'
      Caption = '>>'
      Hint = '������������ ���'
      OnExecute = actSelectMasterAllFieldsExecute
      OnUpdate = actSelectMasterAllFieldsUpdate
    end
    object actDeselectMasterField: TAction
      Category = 'MasterFieldUsage'
      Caption = '<'
      Hint = '������'
      OnExecute = actDeselectMasterFieldExecute
      OnUpdate = actDeselectMasterFieldUpdate
    end
    object actDeselectMasterAllFields: TAction
      Category = 'MasterFieldUsage'
      Caption = '<<'
      Hint = '������ ���'
      OnExecute = actDeselectMasterAllFieldsExecute
      OnUpdate = actDeselectMasterAllFieldsUpdate
    end
    object actSelectDetailField: TAction
      Category = 'DetailFieldUsage'
      Caption = '>'
      Hint = '������������'
      OnExecute = actSelectDetailFieldExecute
      OnUpdate = actSelectDetailFieldUpdate
    end
    object actSelectDetailAllFields: TAction
      Category = 'DetailFieldUsage'
      Caption = '>>'
      Hint = '������������ ���'
      OnExecute = actSelectMasterAllFieldsExecute
      OnUpdate = actSelectMasterAllFieldsUpdate
    end
    object actDeselectDetailField: TAction
      Category = 'DetailFieldUsage'
      Caption = '<'
      Hint = '������'
      OnExecute = actDeselectDetailFieldExecute
      OnUpdate = actDeselectMasterFieldUpdate
    end
    object actDeselectDetailAllFields: TAction
      Category = 'DetailFieldUsage'
      Caption = '<<'
      Hint = '������ ���'
      OnExecute = actDeselectMasterAllFieldsExecute
      OnUpdate = actDeselectMasterAllFieldsUpdate
    end
    object actAddDetailField: TAction
      Category = 'Detail'
      Caption = '�������� ����'
      ImageIndex = 0
    end
    object actEditDetailField: TAction
      Category = 'Detail'
      Caption = '������������� ����'
      ImageIndex = 1
    end
    object actDeleteDetailField: TAction
      Category = 'Detail'
      Caption = '������� ����'
      ImageIndex = 2
    end
  end
  inherited dsgdcBase: TDataSource
    Left = 400
    Top = 195
  end
  inherited pm_dlgG: TPopupMenu
    Left = 176
    Top = 296
  end
  inherited ibtrCommon: TIBTransaction
    Left = 370
    Top = 195
  end
  object dsDetailRelationField: TDataSource
    Left = 460
    Top = 165
  end
  object dsMasterRelationField: TDataSource
    Left = 430
    Top = 165
  end
end
