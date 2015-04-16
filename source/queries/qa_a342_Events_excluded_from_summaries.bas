Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Is_excluded)=True))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="qasub_Events_scope_filter.Sample_year"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Locations].[Site_ID]),[tbl_Locations].[Park_code],[Site_code]) &"
        " '.' & [Location_code]"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.Is_excluded"
    Expression ="qasub_Events_scope_filter.QA_notes"
    Expression ="qasub_Events_scope_filter.Event_notes"
    Alias ="varObject"
    Expression ="IIf([Location_type]='Incidental','frm_Rare_Bird_Obs','frm_Data_Entry')"
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
End
Begin OrderBy
    Expression ="qasub_Events_scope_filter.Sample_year"
    Flag =1
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="qasub_Events_scope_filter.Start_date"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Uncertified event records that are flagged to be excluded from data summary outp"
    "ut"
Begin
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Event_notes"
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
        Left =208
        Top =12
        Right =304
        Bottom =119
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =342
        Top =15
        Right =438
        Bottom =122
        Top =0
        Name ="qasub_Events_scope_filter"
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
