Operation =1
Option =0
Having ="(((tbl_Schedule.Calendar_year) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFi"
    "lterByYear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilter],Null),\"*\")))"
Begin InputTables
    Name ="qsub_Surveyed_points"
    Name ="tbl_Strata"
    Name ="tbl_Schedule"
    Name ="qsub_Site_filters"
End
Begin OutputColumns
    Expression ="tbl_Schedule.Calendar_year"
    Expression ="qsub_Site_filters.Park_code"
    Expression ="qsub_Site_filters.Panel_type"
    Expression ="qsub_Site_filters.Panel_name"
    Alias ="Stratum"
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    Alias ="Transect"
    Expression ="qsub_Site_filters.Site_code"
    Alias ="N_points"
    Expression ="Count(qsub_Surveyed_points.Location_code)"
End
Begin Joins
    LeftTable ="qsub_Surveyed_points"
    RightTable ="tbl_Schedule"
    Expression ="qsub_Surveyed_points.Event_year = tbl_Schedule.Calendar_year"
    Flag =3
    LeftTable ="tbl_Schedule"
    RightTable ="qsub_Surveyed_points"
    Expression ="tbl_Schedule.Site_ID = qsub_Surveyed_points.Site_ID"
    Flag =2
    LeftTable ="tbl_Strata"
    RightTable ="qsub_Site_filters"
    Expression ="tbl_Strata.Stratum_ID = qsub_Site_filters.Stratum_ID"
    Flag =1
    LeftTable ="qsub_Site_filters"
    RightTable ="tbl_Schedule"
    Expression ="qsub_Site_filters.Site_ID = tbl_Schedule.Site_ID"
    Flag =1
End
Begin OrderBy
    Expression ="qsub_Site_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Panel_name"
    Flag =0
    Expression ="tbl_Strata.Stratum_name"
    Flag =1
End
Begin Groups
    Expression ="tbl_Schedule.Calendar_year"
    GroupLevel =0
    Expression ="qsub_Site_filters.Park_code"
    GroupLevel =0
    Expression ="qsub_Site_filters.Panel_type"
    GroupLevel =0
    Expression ="qsub_Site_filters.Panel_name"
    GroupLevel =0
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    GroupLevel =0
    Expression ="qsub_Site_filters.Site_code"
    GroupLevel =0
    Expression ="tbl_Strata.Stratum_name"
    GroupLevel =0
End
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Transects completed in a user-specified year (Note: filters for location, locati"
    "on type, location status, certification status, and date range do not apply)"
dbBinary "GUID" = Begin
    0xc2a20a9c37031148a5f388e05ed92370
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Schedule.Calendar_year"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =404
    Left =-1
    Top =-1
    Right =1058
    Bottom =157
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =547
        Top =14
        Right =701
        Bottom =121
        Top =0
        Name ="qsub_Surveyed_points"
        Name =""
    End
    Begin
        Left =27
        Top =5
        Right =127
        Bottom =112
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
    Begin
        Left =305
        Top =14
        Right =432
        Bottom =140
        Top =0
        Name ="tbl_Schedule"
        Name =""
    End
    Begin
        Left =176
        Top =15
        Right =273
        Bottom =129
        Top =0
        Name ="qsub_Site_filters"
        Name =""
    End
End
