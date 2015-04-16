Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Coordinates_updated)=True) AND ((tbl_Coordinates.Ev"
    "ent_ID) Is Null)) OR (((qasub_Events_scope_filter.Coordinates_updated)=False) AN"
    "D ((tbl_Coordinates.Event_ID) Is Not Null))"
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
    Expression ="qasub_Events_scope_filter.Coordinates_updated"
    Expression ="tbl_Coordinates.Field_UTME"
    Expression ="tbl_Coordinates.Field_UTMN"
    Expression ="tbl_Coordinates.Field_coord_source"
    Expression ="tbl_Coordinates.GPS_file_name"
    Expression ="tbl_Coordinates.GPS_model"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
    Alias ="varAutoFix"
    Expression ="\"qasub_Update_events_inconsistent_coord_info\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Coordinates"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Coordinates.Event_ID"
    Flag =2
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
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Events where coordinates_updated = True but missing event coordinate records, or"
    " having event coordinate records where coordinate_updated = False"
dbBinary "GUID" = Begin
    0xc654f7556c555b4cb467d7abb00319c3
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Coordinates_updated"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varFilter"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varAutoFix"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.GPS_model"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-4
    Top =-30
    Right =795
    Bottom =692
    Left =-1
    Top =-1
    Right =775
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =170
        Top =8
        Right =260
        Bottom =115
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =285
        Top =6
        Right =381
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =419
        Top =6
        Right =515
        Bottom =113
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
