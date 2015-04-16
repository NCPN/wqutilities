Operation =1
Option =0
Having ="(((Count(tbl_Coordinates.Coord_ID))>1))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="qasub_Events_scope_filter.Start_date"
    Alias ="N_coord_recs"
    Expression ="Count(tbl_Coordinates.Coord_ID)"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Coordinates"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
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
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
Begin Groups
    Expression ="tbl_Locations.Park_code"
    GroupLevel =0
    Expression ="tbl_Sites.Site_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_type"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Start_date"
    GroupLevel =0
    Expression ="\"frm_Data_Browser\""
    GroupLevel =0
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    GroupLevel =0
    Expression ="\"Location_ID\""
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Locations with more than one coordinate record per sampling date"
Begin
End
Begin
    State =0
    Left =16
    Top =62
    Right =1106
    Bottom =468
    Left =-1
    Top =-1
    Right =1083
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =22
        Top =10
        Right =118
        Bottom =117
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =152
        Top =12
        Right =260
        Bottom =104
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =298
        Top =6
        Right =394
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =435
        Top =7
        Right =559
        Bottom =114
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
