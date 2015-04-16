Operation =1
Option =0
Where ="(((qsub_Scheduled_points.Calendar_year) Like Nz(IIf(Abs([Forms]![frm_Summary_Too"
    "l]![togFilterByYear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilter],Null),\"*\"))"
    " AND ((qsub_Loc_filters.Location_status)='Active') AND ((Year([Loc_established])"
    ")<=Nz(CInt([Calendar_year]))) AND ((Year([Loc_discontinued])) Is Null Or (Year(["
    "Loc_discontinued]))>Nz(CInt([Calendar_year]))) AND ((qsub_Event_years.Location_I"
    "D) Is Null)) OR (((qsub_Scheduled_points.Calendar_year) Like Nz(IIf(Abs([Forms]!"
    "[frm_Summary_Tool]![togFilterByYear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilte"
    "r],Null),\"*\")) AND ((qsub_Loc_filters.Location_status)='Retired' Or (qsub_Loc_"
    "filters.Location_status)='Rejected') AND ((Year([Loc_established])) Is Null Or ("
    "Year([Loc_established]))<=Nz(CInt([Calendar_year]))) AND ((Year([Loc_discontinue"
    "d]))>Nz(CInt([Calendar_year]))) AND ((qsub_Event_years.Location_ID) Is Null)) OR"
    " (((qsub_Scheduled_points.Calendar_year) Like Nz(IIf(Abs([Forms]![frm_Summary_To"
    "ol]![togFilterByYear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilter],Null),\"*\")"
    ") AND ((qsub_Loc_filters.Location_status)='Proposed') AND ((qsub_Event_years.Loc"
    "ation_ID) Is Null)) OR (((qsub_Scheduled_points.Calendar_year) Like Nz(IIf(Abs(["
    "Forms]![frm_Summary_Tool]![togFilterByYear])=1,[Forms]![frm_Summary_Tool]![cmbYe"
    "arFilter],Null),\"*\")) AND ((qsub_Event_years.Location_ID) Is Null) AND ((qsub_"
    "Loc_filters.Loc_established) Is Null) AND ((qsub_Loc_filters.Loc_discontinued) I"
    "s Null)) OR (((qsub_Scheduled_points.Calendar_year) Like Nz(IIf(Abs([Forms]![frm"
    "_Summary_Tool]![togFilterByYear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilter],N"
    "ull),\"*\")) AND ((qsub_Loc_filters.Location_type) Not In ('Incidental','Origin'"
    ")) AND ((qsub_Event_years.N_obs_recs)=0) AND ((qsub_Event_years.Location_ID) Is "
    "Not Null))"
Begin InputTables
    Name ="tbl_Strata"
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Scheduled_points"
    Name ="qsub_Event_years"
End
Begin OutputColumns
    Expression ="qsub_Scheduled_points.Calendar_year"
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
    Expression ="qsub_Event_years.N_obs_recs"
End
Begin Joins
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Scheduled_points"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Scheduled_points.Location_ID"
    Flag =1
    LeftTable ="qsub_Scheduled_points"
    RightTable ="qsub_Event_years"
    Expression ="qsub_Scheduled_points.Location_ID = qsub_Event_years.Location_ID"
    Flag =2
    LeftTable ="qsub_Scheduled_points"
    RightTable ="qsub_Event_years"
    Expression ="qsub_Scheduled_points.Calendar_year = qsub_Event_years.Event_year"
    Flag =2
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
    Expression ="qsub_Scheduled_points.Calendar_year"
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
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Active points associated with scheduled sites that were not sampled in a given y"
    "ear (Note: filters for certification status and date range do not apply)"
Begin
    Begin
        dbText "Name" ="Year_established"
        dbInteger "ColumnWidth" ="1635"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Year_discontinued"
        dbInteger "ColumnWidth" ="1635"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1149
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
        Left =448
        Top =8
        Right =599
        Bottom =85
        Top =0
        Name ="qsub_Scheduled_points"
        Name =""
    End
    Begin
        Left =638
        Top =8
        Right =760
        Bottom =115
        Top =0
        Name ="qsub_Event_years"
        Name =""
    End
End
