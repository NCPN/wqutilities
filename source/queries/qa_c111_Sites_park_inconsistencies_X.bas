Operation =1
Option =0
Where ="(((tbl_Sites.Park_code)<>[tbl_Strata].[Park_code]))"
Begin InputTables
    Name ="tbl_Strata"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Sites.Site_name"
    Expression ="tbl_Sites.Park_code"
    Alias ="Stratum"
    Expression ="[tbl_Strata].[Park_code] & \" - \" & [Stratum_name]"
    Expression ="tbl_Sites.Site_updated"
    Expression ="tbl_Sites.Site_updated_by"
    Alias ="varObject"
    Expression ="\"fsub_Sites_Browser\""
    Alias ="varFilter"
    Expression ="\"Site_ID='\" & [Site_ID] & \"'\""
End
Begin Joins
    LeftTable ="tbl_Strata"
    RightTable ="tbl_Sites"
    Expression ="tbl_Strata.Stratum_ID = tbl_Sites.Stratum_ID"
    Flag =3
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Park code inconsistent with strata table"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="tbl_Sites.Park_code"
        dbInteger "ColumnWidth" ="1065"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Stratum"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_updated"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_updated_by"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="varObject"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="varFilter"
        dbInteger "ColumnWidth" ="1050"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1149
    Bottom =178
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =216
        Top =7
        Right =336
        Bottom =114
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
    Begin
        Left =48
        Top =7
        Right =168
        Bottom =114
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
