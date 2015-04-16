Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)<>'Incidental' And (tbl_Locations.Location_type)<"
    ">'Origin'))"
Having ="(((tbl_Sites.Park_code)='OLYM' Or (tbl_Sites.Park_code)='NOCA' Or (tbl_Sites.Par"
    "k_code)='MORA'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Alias ="N"
    Expression ="Count(qasub_Events_scope_filter.Event_ID)"
    Alias ="varObject"
    Expression ="\"frm_Data_Gateway\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
Begin Groups
    Expression ="tbl_Sites.Park_code"
    GroupLevel =0
    Expression ="tbl_Sites.Site_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_type"
    GroupLevel =0
    Expression ="\"frm_Data_Gateway\""
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Full list of transects points visited at each park"
Begin
    Begin
        dbText "Name" ="tbl_Sites.Site_code"
        dbInteger "ColumnWidth" ="924"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_code"
        dbInteger "ColumnWidth" ="1284"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Sites.Park_code"
        dbInteger "ColumnWidth" ="984"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="N"
        dbBinary "GUID" = Begin
            0x0eb69b756c18e8418e1473cb2a9c3b45
        End
    End
    Begin
        dbText "Name" ="varObject"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =1154
    Bottom =750
    Left =-1
    Top =-1
    Right =1079
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =7
        Right =168
        Bottom =144
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =216
        Top =7
        Right =336
        Bottom =144
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =374
        Top =6
        Right =470
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
End
