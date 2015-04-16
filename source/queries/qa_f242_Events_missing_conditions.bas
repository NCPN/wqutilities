Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Noise_level) Is Null) AND ((tbl_Locations.Location_"
    "type) Not In ('Origin','Incidental'))) OR (((qasub_Events_scope_filter.Wind_cond"
    ") Is Null) AND ((tbl_Locations.Location_type) Not In ('Origin','Incidental'))) O"
    "R (((qasub_Events_scope_filter.Precip_cond) Is Null) AND ((tbl_Locations.Locatio"
    "n_type) Not In ('Origin','Incidental'))) OR (((qasub_Events_scope_filter.Cloud_c"
    "over) Is Null) AND ((tbl_Locations.Location_type) Not In ('Origin','Incidental')"
    ")) OR (((qasub_Events_scope_filter.Temp_C) Is Null) AND ((tbl_Locations.Location"
    "_type) Not In ('Origin','Incidental')))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Locations"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.Start_time"
    Expression ="qasub_Events_scope_filter.Noise_level"
    Expression ="qasub_Events_scope_filter.Wind_cond"
    Expression ="qasub_Events_scope_filter.Precip_cond"
    Expression ="qasub_Events_scope_filter.Cloud_cover"
    Expression ="qasub_Events_scope_filter.Temp_C"
    Expression ="qasub_Events_scope_filter.Misc_obs"
    Expression ="qasub_Events_scope_filter.Event_notes"
    Alias ="varObject"
    Expression ="IIf([Location_type]='Incidental','frm_Rare_Bird_Obs','frm_Data_Entry')"
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Locations"
    Expression ="qasub_Events_scope_filter.Location_ID = tbl_Locations.Location_ID"
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
dbText "Description" ="Point count events with missing environmental conditions - noise level, wind_con"
    "d, precip_cond, cloud_cover, temperature"
dbBinary "GUID" = Begin
    0xb7d1477116623940939cca87cd75fc54
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Event_notes"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
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
        Left =382
        Top =9
        Right =478
        Bottom =116
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =198
        Top =7
        Right =318
        Bottom =144
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
End
