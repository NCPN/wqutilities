Operation =1
Option =0
Where ="(((tbl_Point_Counts.Int_0_3)=False) AND ((tbl_Point_Counts.Int_3_5)=False Or (tb"
    "l_Point_Counts.Int_3_5)=0) AND ((tbl_Point_Counts.Int_5_7)=False Or (tbl_Point_C"
    "ounts.Int_5_7)=0) AND ((tlu_Project_Taxa.Species_code)<>'NONE')) OR (((tbl_Point"
    "_Counts.Int_0_3)=False) AND ((tbl_Point_Counts.Int_3_5) Is Null) AND ((tbl_Point"
    "_Counts.Int_5_7) Is Null))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc"
    Expression ="[Site_code] & '.' & [Location_code]"
    Expression ="qasub_Events_scope_filter.Start_date"
    Alias ="Species"
    Expression ="IIf([Taxon_is_active]=False,'x ','') & [Species_code] & \" - \" & [Pref_com_name"
        "]"
    Expression ="tbl_Point_Counts.Int_0_3"
    Expression ="tbl_Point_Counts.Int_3_5"
    Expression ="tbl_Point_Counts.Int_5_7"
    Expression ="tbl_Point_Counts.Obs_distance_m"
    Expression ="tbl_Point_Counts.Seen_first"
    Expression ="tbl_Point_Counts.Ever_sang"
    Expression ="tbl_Point_Counts.Prev_observed"
    Expression ="tbl_Point_Counts.Flyover"
    Expression ="tbl_Point_Counts.Group_size"
    Expression ="tbl_Point_Counts.Obs_notes"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Point_Counts"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Point_Counts.Event_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Point_Counts"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Point_Counts.Taxon_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="[Site_code] & '.' & [Location_code]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="All three time intervals are False or Null where species code <> 'NONE' -- at le"
    "ast one observation time interval should have been specified"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x4b4d83b9a85a384087b6c97157149e44
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Point_Counts.Obs_distance_m"
        dbInteger "ColumnWidth" ="1596"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Species"
        dbInteger "ColumnWidth" ="2730"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbInteger "ColumnWidth" ="1065"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Loc"
        dbInteger "ColumnWidth" ="1215"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Int_0_3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Int_3_5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Int_5_7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Start_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Flyover"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Group_size"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Obs_notes"
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
        dbText "Name" ="tbl_Point_Counts.Seen_first"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Ever_sang"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Prev_observed"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =976
    Bottom =863
    Left =-1
    Top =-1
    Right =957
    Bottom =213
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =640
        Top =6
        Right =736
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
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
    Begin
        Left =175
        Top =6
        Right =271
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =309
        Top =6
        Right =405
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =453
        Top =0
        Right =557
        Bottom =201
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
