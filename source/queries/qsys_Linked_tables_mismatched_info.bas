Operation =1
Option =0
Where ="(((MSysObjects.Type) In (4,6)) AND ((IIf([Type]=4,fxnParseConnectionStr([Connect"
    "]),fxnParseFileName([Database])))<>[tsys_Link_Tables].[Link_db])) OR (((MSysObje"
    "cts.Type) In (4,6)) AND ((IIf([Type]=4,fxnParseConnectionStr([Connect],'SERVER='"
    ")))<>[Server])) OR (((MSysObjects.Type) In (4,6)) AND ((MSysObjects.Database)<>["
    "File_path])) OR (((MSysObjects.Type)=4) AND ((tsys_Link_Dbs.Is_ODBC)=False)) OR "
    "(((MSysObjects.Type)=6) AND ((tsys_Link_Dbs.Is_ODBC)=True)) OR (((IIf([Type]=4,f"
    "xnParseConnectionStr([Connect],'SERVER='))) Is Null) AND ((tsys_Link_Dbs.Server)"
    " Is Not Null)) OR (((IIf([Type]=4,fxnParseConnectionStr([Connect],'SERVER='))) I"
    "s Not Null) AND ((tsys_Link_Dbs.Server) Is Null)) OR (((MSysObjects.Database) Is"
    " Null) AND ((tsys_Link_Dbs.File_path) Is Not Null)) OR (((MSysObjects.Database) "
    "Is Not Null) AND ((tsys_Link_Dbs.File_path) Is Null))"
Begin InputTables
    Name ="MSysObjects"
    Name ="tsys_Link_Tables"
    Name ="tsys_Link_Dbs"
End
Begin OutputColumns
    Alias ="CurrTable"
    Expression ="MSysObjects.Name"
    Expression ="tsys_Link_Tables.Link_table"
    Expression ="MSysObjects.Type"
    Expression ="tsys_Link_Dbs.Is_ODBC"
    Alias ="CurrDb"
    Expression ="IIf([Type]=4,fxnParseConnectionStr([Connect]),fxnParseFileName([Database]))"
    Expression ="tsys_Link_Tables.Link_db"
    Alias ="CurrServer"
    Expression ="IIf([Type]=4,fxnParseConnectionStr([Connect],'SERVER='))"
    Expression ="tsys_Link_Dbs.Server"
    Alias ="CurrPath"
    Expression ="MSysObjects.Database"
    Expression ="tsys_Link_Dbs.File_path"
End
Begin Joins
    LeftTable ="MSysObjects"
    RightTable ="tsys_Link_Tables"
    Expression ="MSysObjects.Name = tsys_Link_Tables.Link_table"
    Flag =1
    LeftTable ="tsys_Link_Dbs"
    RightTable ="tsys_Link_Tables"
    Expression ="tsys_Link_Dbs.Link_db = tsys_Link_Tables.Link_db"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Matches MSysObjects.Name with tsys_Link_Tables.Link_table, finds mismatches on d"
    "b name, server, file path, or where ODBC doesn't match the actual table link typ"
    "e"
dbBinary "GUID" = Begin
    0x4dd38f1c5abb3747b3ab6049667342e8
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="CurrDb"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MSysObjects.Type"
        dbInteger "ColumnWidth" ="795"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Tables.Link_db"
        dbInteger "ColumnWidth" ="3450"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CurrServer"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.File_path"
        dbInteger "ColumnWidth" ="8145"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Tables.Link_table"
        dbInteger "ColumnWidth" ="3255"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CurrTable"
        dbInteger "ColumnWidth" ="3255"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CurrPath"
        dbInteger "ColumnWidth" ="8805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Is_ODBC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Server"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =27
    Top =62
    Right =1138
    Bottom =629
    Left =-1
    Top =-1
    Right =1080
    Bottom =127
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="MSysObjects"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =334
        Bottom =113
        Top =0
        Name ="tsys_Link_Tables"
        Name =""
    End
    Begin
        Left =372
        Top =6
        Right =468
        Bottom =113
        Top =0
        Name ="tsys_Link_Dbs"
        Name =""
    End
End
