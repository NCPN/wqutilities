Operation =1
Option =0
Where ="(((tbl_Coordinates.Field_UTME) Is Null) AND ((tbl_Coordinates.GPS_file_name) Is "
    "Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Coordinates"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Alias ="Feat_name"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([Lo"
        "cation_type]<>'Incidental',[Location_code],IIf(IsNull([Site_code]),[Location_cod"
        "e],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])) & IIf([Location_type]='Inc"
        "idental','.' & [Species_code],''))"
    Alias ="Date_sampled"
    Expression ="Format([Start_date],\"yyyy mmm dd\")"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Coordinates.Field_UTME"
    Expression ="tbl_Coordinates.Field_UTMN"
    Expression ="tbl_Coordinates.Field_coord_source"
    Expression ="tbl_Coordinates.GPS_file_name"
    Expression ="tbl_Coordinates.GPS_model"
    Expression ="tbl_Coordinates.Coord_label"
    Expression ="tbl_Coordinates.Field_horiz_error"
    Expression ="tbl_Coordinates.Field_offset_m"
    Expression ="tbl_Coordinates.Field_offset_azimuth"
    Alias ="varObject"
    Expression ="IIf([Location_type]='Incidental','frm_Rare_Bird_Obs','frm_Data_Entry')"
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [tbl_Events].[Event_ID] & \"'\""
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
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =3
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =2
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
dbText "Description" ="Field UTMs and GPS file name is missing"
dbBinary "GUID" = Begin
    0x6bf7da9ac49aec47960331fde4b8f49c
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
        dbText "Name" ="tbl_Sites.Site_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Field_UTME"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Field_UTMN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Field_coord_source"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.GPS_file_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.GPS_model"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Coord_label"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Field_horiz_error"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Field_offset_m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Field_offset_azimuth"
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
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1680
    Bottom =931
    Left =-1
    Top =-1
    Right =1677
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =100
        Top =8
        Right =196
        Bottom =115
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =236
        Top =7
        Right =356
        Bottom =144
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =394
        Top =6
        Right =490
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =537
        Top =7
        Right =655
        Bottom =144
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =693
        Top =6
        Right =789
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =827
        Top =6
        Right =923
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
