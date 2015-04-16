Operation =1
Option =0
Where ="(((tbl_Events.Is_excluded)=True))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Alias ="Sample_year"
    Expression ="CStr(Year([Start_date]))"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Locations].[Site_ID]),[tbl_Locations].[Park_code],[Site_code]) &"
        " '.' & [Location_code]"
    Expression ="tbl_Events.Start_date"
    Expression ="tbl_Events.Is_excluded"
    Expression ="tbl_Events.QA_notes"
    Expression ="tbl_Events.Event_notes"
    Alias ="varObject"
    Expression ="IIf([Location_type]='Incidental','frm_Rare_Bird_Obs','frm_Data_Entry')"
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [tbl_Events].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="CStr(Year([Start_date]))"
    Flag =1
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Events.Start_date"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Event records that are flagged to be excluded from data summary output among yea"
    "rs"
Begin
    Begin
        dbText "Name" ="tbl_Events.Event_notes"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =410
    Left =-1
    Top =-1
    Right =1083
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =225
        Top =9
        Right =321
        Bottom =116
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =381
        Top =10
        Right =477
        Bottom =117
        Top =1
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
