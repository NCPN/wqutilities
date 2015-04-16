Operation =1
Option =0
Where ="(((tbl_Locations.Park_code) Not In ('SAJH','LEWI')) AND ((tbl_Locations.Location"
    "_code) Like '*1*') AND ((tbl_Locations.Location_type)<>'Incidental' And (tbl_Loc"
    "ations.Location_type)<>'Additional') AND ((tbl_Locations.Location_status)<>'Reje"
    "cted' And (tbl_Locations.Location_status)<>'Retired') AND ((qasub_Events_scope_f"
    "ilter.Start_date) Is Not Null) AND ((qasub_Markers_N_active_recs_per_loc.Locatio"
    "n_ID) Is Null)) OR (((tbl_Locations.Park_code) Not In ('SAJH','LEWI')) AND ((tbl"
    "_Locations.Location_code) Like '*1*') AND ((tbl_Locations.Location_type)<>'Incid"
    "ental' And (tbl_Locations.Location_type)<>'Additional') AND ((tbl_Locations.Loca"
    "tion_status)<>'Rejected' And (tbl_Locations.Location_status)<>'Retired') AND ((q"
    "asub_Events_scope_filter.Start_date) Is Not Null) AND ((qasub_Markers_N_active_r"
    "ecs_per_loc.N_active_markers)>1)) OR (((tbl_Locations.Park_code) Not In ('SAJH',"
    "'LEWI')) AND ((tbl_Locations.Location_type)='Origin') AND ((tbl_Locations.Locati"
    "on_status)<>'Rejected' And (tbl_Locations.Location_status)<>'Retired') AND ((qas"
    "ub_Events_scope_filter.Start_date) Is Not Null) AND ((qasub_Markers_N_active_rec"
    "s_per_loc.Location_ID) Is Null)) OR (((tbl_Locations.Park_code) Not In ('SAJH','"
    "LEWI')) AND ((tbl_Locations.Location_type)='Origin') AND ((tbl_Locations.Locatio"
    "n_status)<>'Rejected' And (tbl_Locations.Location_status)<>'Retired') AND ((qasu"
    "b_Events_scope_filter.Start_date) Is Not Null) AND ((qasub_Markers_N_active_recs"
    "_per_loc.N_active_markers)>1))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="qasub_Markers_N_active_recs_per_loc"
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
    Expression ="qasub_Markers_N_active_recs_per_loc.N_active_markers"
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
    RightTable ="qasub_Markers_N_active_recs_per_loc"
    Expression ="tbl_Locations.Location_ID = qasub_Markers_N_active_recs_per_loc.Location_ID"
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
dbText "Description" ="Sampled locations that have no active marker records (including marker code='Non"
    "e'), or that have multiple markers; excluding records from small parks, records "
    "with loc type='Incidental' or 'Additional', and records with status='Rejected' o"
    "r 'Retired'"
dbBinary "GUID" = Begin
    0xd532ed89dfd9ce44afc6020282dfac4c
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
        dbText "Name" ="tbl_Locations.Trail_or_road"
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
        dbText "Name" ="qasub_Markers_N_active_recs_per_loc.N_active_markers"
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
End
Begin
    State =0
    Left =0
    Top =40
    Right =1043
    Bottom =688
    Left =-1
    Top =-1
    Right =1019
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
        Left =450
        Top =7
        Right =546
        Bottom =84
        Top =0
        Name ="qasub_Markers_N_active_recs_per_loc"
        Name =""
    End
End
