Operation =1
Option =0
Where ="(((qsub_Event_years.Event_year) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togF"
    "ilterByYear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilter],Null),\"*\")) AND ((q"
    "sub_Loc_filters.Location_type)<>'Incidental') AND ((qsub_Event_years.Start_date)"
    ">[Loc_discontinued]) AND ((qsub_Scheduled_points.Location_ID) Is Null)) OR (((qs"
    "ub_Event_years.Event_year) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFilter"
    "ByYear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilter],Null),\"*\")) AND ((qsub_L"
    "oc_filters.Location_type)<>'Incidental') AND ((qsub_Loc_filters.Loc_discontinued"
    ") Is Null) AND ((qsub_Scheduled_points.Location_ID) Is Null))"
Begin InputTables
    Name ="tbl_Strata"
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Scheduled_points"
    Name ="qsub_Event_years"
End
Begin OutputColumns
    Expression ="qsub_Event_years.Event_year"
    Expression ="qsub_Site_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Alias ="Stratum"
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    Expression ="qsub_Loc_filters.Location_type"
    Expression ="qsub_Loc_filters.Location_status"
    Alias ="Year_established"
    Expression ="Year([Loc_established])"
    Alias ="Year_discontinued"
    Expression ="Year([Loc_discontinued])"
    Expression ="qsub_Loc_filters.Loc_discontinued"
    Expression ="qsub_Event_years.Start_date"
    Expression ="qsub_Event_years.N_obs_recs"
End
Begin Joins
    LeftTable ="qsub_Scheduled_points"
    RightTable ="qsub_Event_years"
    Expression ="qsub_Scheduled_points.Calendar_year = qsub_Event_years.Event_year"
    Flag =3
    LeftTable ="qsub_Scheduled_points"
    RightTable ="qsub_Event_years"
    Expression ="qsub_Scheduled_points.Location_ID = qsub_Event_years.Location_ID"
    Flag =3
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Event_years"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Event_years.Location_ID"
    Flag =1
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =1
    LeftTable ="tbl_Strata"
    RightTable ="qsub_Site_filters"
    Expression ="tbl_Strata.Stratum_ID = qsub_Site_filters.Stratum_ID"
    Flag =1
End
Begin OrderBy
    Expression ="qsub_Event_years.Event_year"
    Flag =1
    Expression ="qsub_Site_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
    Expression ="qsub_Loc_filters.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="List of points that were visited even though they were not on the schedule (may "
    "include rejected or retired locations missing discontinued dates or sampled afte"
    "r they were discontinued) - Note: filters for certification status and date rang"
    "e do not apply"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =436
    Left =-1
    Top =-1
    Right =1083
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =52
        Top =5
        Right =148
        Bottom =112
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
    Begin
        Left =186
        Top =6
        Right =282
        Bottom =113
        Top =0
        Name ="qsub_Site_filters"
        Name =""
    End
    Begin
        Left =320
        Top =6
        Right =416
        Bottom =113
        Top =0
        Name ="qsub_Loc_filters"
        Name =""
    End
    Begin
        Left =633
        Top =5
        Right =789
        Bottom =82
        Top =0
        Name ="qsub_Scheduled_points"
        Name =""
    End
    Begin
        Left =453
        Top =5
        Right =584
        Bottom =112
        Top =0
        Name ="qsub_Event_years"
        Name =""
    End
End
