﻿Operation =1
Option =0
Where ="(((tbl_Sites.Evaluation_code) Is Null) AND ((tbl_Sites.Site_status)='Rejected'))"
    " OR (((tbl_Sites.Evaluation_code) Is Null) AND ((tbl_Sites.Evaluation_notes) Is "
    "Not Null)) OR (((tbl_Sites.Evaluation_code) Is Null) AND ((tbl_Sites.Site_establ"
    "ished) Is Not Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Strata"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Alias ="Stratum"
    Expression ="[tbl_Strata].[Park_code] & \" - \" & [Stratum_name]"
    Expression ="tbl_Sites.Evaluation_code"
    Expression ="tbl_Sites.Evaluation_notes"
    Expression ="tbl_Sites.Site_status"
    Expression ="tbl_Sites.Site_notes"
    Expression ="tbl_Sites.Site_established"
    Expression ="tbl_Sites.Site_discontinued"
    Alias ="varObject"
    Expression ="\"fsub_Sites_Browser\""
    Alias ="varFilter"
    Expression ="\"Site_ID='\" & [Site_ID] & \"'\""
End
Begin Joins
    LeftTable ="tbl_Strata"
    RightTable ="tbl_Sites"
    Expression ="tbl_Strata.Stratum_ID = tbl_Sites.Stratum_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Established or rejected sites without evaluation codes, or missing evaluation co"
    "des but having evaluation notes"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="tbl_Sites.Evaluation_code"
        dbInteger "ColumnWidth" ="1572"
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
    Bottom =156
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =190
        Top =10
        Right =310
        Bottom =117
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
End
