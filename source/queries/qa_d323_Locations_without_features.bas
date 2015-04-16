Operation =1
Option =0
Where ="(((tbl_Locations.Park_code) Not In ('SAJH','LEWI')) AND ((tbl_Locations.Location"
    "_type)<>'Incidental') AND ((tbl_Locations.Location_status)<>'Rejected' And (tbl_"
    "Locations.Location_status)<>'Retired') AND ((qasub_Events_scope_filter.Start_dat"
    "e) Is Not Null) AND ((qasub_Features_N_active_recs_per_loc.Location_ID) Is Null)"
    ")"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="qasub_Features_N_active_recs_per_loc"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Trail_or_road"
    Expression ="tbl_Locations.Location_status"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="tbl_Locations.Loc_established"
    Expression ="tbl_Locations.Loc_discontinued"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =2
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Features_N_active_recs_per_loc"
    Expression ="tbl_Locations.Location_ID = qasub_Features_N_active_recs_per_loc.Location_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Locations.Location_type"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Sampled locations that have no active navigation feature records (excluding reco"
    "rds from small parks, records with loc type='Incidental', and records with statu"
    "s='Rejected' or 'Retired')"
dbBinary "GUID" = Begin
    0xf82abea6acbcdf4f82bd68bace063170
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Start_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_established"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_discontinued"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varFilter"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varArgs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Trail_or_road"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =376
    Left =-1
    Top =-1
    Right =1083
    Bottom =146
    Left =0
    Top =2
    ColumnsShown =539
    Begin
        Left =21
        Top =3
        Right =117
        Bottom =110
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =161
        Top =6
        Right =265
        Bottom =143
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =303
        Top =4
        Right =399
        Bottom =111
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =454
        Top =11
        Right =787
        Bottom =88
        Top =0
        Name ="qasub_Features_N_active_recs_per_loc"
        Name =""
    End
End
