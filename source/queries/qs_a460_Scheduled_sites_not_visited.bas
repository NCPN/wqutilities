Operation =1
Option =0
Where ="(((tbl_Schedule.Calendar_year) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFi"
    "lterByYear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilter],Null),\"*\")) AND ((qs"
    "ub_Surveyed_sites.Site_ID) Is Null))"
Begin InputTables
    Name ="tbl_Strata"
    Name ="qsub_Site_filters"
    Name ="tbl_Schedule"
    Name ="qsub_Surveyed_sites"
End
Begin OutputColumns
    Expression ="tbl_Schedule.Calendar_year"
    Expression ="qsub_Site_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Alias ="Stratum"
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
End
Begin Joins
    LeftTable ="tbl_Schedule"
    RightTable ="qsub_Surveyed_sites"
    Expression ="tbl_Schedule.Site_ID = qsub_Surveyed_sites.Site_ID"
    Flag =2
    LeftTable ="tbl_Schedule"
    RightTable ="qsub_Surveyed_sites"
    Expression ="tbl_Schedule.Calendar_year = qsub_Surveyed_sites.Event_year"
    Flag =2
    LeftTable ="qsub_Site_filters"
    RightTable ="tbl_Schedule"
    Expression ="qsub_Site_filters.Site_ID = tbl_Schedule.Site_ID"
    Flag =1
    LeftTable ="tbl_Strata"
    RightTable ="qsub_Site_filters"
    Expression ="tbl_Strata.Stratum_ID = qsub_Site_filters.Stratum_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Schedule.Calendar_year"
    Flag =1
    Expression ="qsub_Site_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Scheduled sites that were not visted for a given year (Note: filters for locatio"
    "n, location type, location status, certification status, and date range do not a"
    "pply)"
Begin
End
Begin
    State =0
    Left =62
    Top =84
    Right =1130
    Bottom =396
    Left =-1
    Top =-1
    Right =1061
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
        Left =322
        Top =6
        Right =418
        Bottom =98
        Top =0
        Name ="tbl_Schedule"
        Name =""
    End
    Begin
        Left =456
        Top =6
        Right =598
        Bottom =113
        Top =0
        Name ="qsub_Surveyed_sites"
        Name =""
    End
End
