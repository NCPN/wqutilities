Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)='Incidental'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="qasub_Events_scope_filter"
    Name ="qasub_Coordinates_duplicate_field_UTMs"
    Name ="tbl_Coordinates"
    Name ="tbl_Locations"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tbl_Coordinates.Field_UTME"
    Expression ="tbl_Coordinates.Field_UTMN"
    Expression ="tbl_Locations.Park_code"
    Alias ="Feat_name"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([tb"
        "l_Locations].[Location_type]<>'Incidental',[Location_code],IIf(IsNull([Site_code"
        "]),[Location_code],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])) & IIf([tbl"
        "_Locations].[Location_type]='Incidental','.' & [Species_code],''))"
    Alias ="Date_sampled"
    Expression ="Format([Start_date],\"yyyy mmm dd\")"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Coordinates.Field_datum"
    Expression ="tbl_Coordinates.Field_horiz_error"
    Expression ="tbl_Coordinates.Field_coord_source"
    Expression ="tbl_Coordinates.GPS_file_name"
    Expression ="tbl_Coordinates.GPS_model"
    Alias ="varObject"
    Expression ="IIf([tbl_Locations].[Location_type]='Incidental','frm_Rare_Bird_Obs','frm_Data_E"
        "ntry')"
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="qasub_Coordinates_duplicate_field_UTMs"
    RightTable ="tbl_Coordinates"
    Expression ="qasub_Coordinates_duplicate_field_UTMs.Field_UTMN = tbl_Coordinates.Field_UTMN"
    Flag =1
    LeftTable ="qasub_Coordinates_duplicate_field_UTMs"
    RightTable ="tbl_Coordinates"
    Expression ="qasub_Coordinates_duplicate_field_UTMs.Field_UTME = tbl_Coordinates.Field_UTME"
    Flag =1
    LeftTable ="qasub_Coordinates_duplicate_field_UTMs"
    RightTable ="tbl_Locations"
    Expression ="qasub_Coordinates_duplicate_field_UTMs.Location_type = tbl_Locations.Location_ty"
        "pe"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Locations"
    Expression ="qasub_Events_scope_filter.Location_ID = tbl_Locations.Location_ID"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Coordinates"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="qasub_Coordinates_duplicate_field_UTMs"
    Expression ="qasub_Events_scope_filter.Sample_year = qasub_Coordinates_duplicate_field_UTMs.S"
        "ample_year"
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
    Expression ="tbl_Coordinates.Field_UTME"
    Flag =0
    Expression ="tbl_Coordinates.Field_UTMN"
    Flag =0
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
dbText "Description" ="Rare bird obs locations sharing the same field UTMs in the same sample year (may"
    " indicate multiple species obs at a single point)"
dbBinary "GUID" = Begin
    0x145e2fdd025b3e458c78aad4747d8668
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Coordinates.Field_UTME"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Field_datum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Field_horiz_error"
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
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varFilter"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Feat_name"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbInteger "ColumnWidth" ="1410"
        dbBoolean "ColumnHidden" ="0"
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
    Right =1673
    Bottom =187
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
        Left =353
        Top =9
        Right =449
        Bottom =116
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =712
        Top =15
        Right =808
        Bottom =122
        Top =0
        Name ="qasub_Coordinates_duplicate_field_UTMs"
        Name =""
    End
    Begin
        Left =517
        Top =15
        Right =637
        Bottom =122
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =204
        Top =8
        Right =300
        Bottom =115
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =846
        Top =6
        Right =942
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =1114
        Top =6
        Right =1210
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
