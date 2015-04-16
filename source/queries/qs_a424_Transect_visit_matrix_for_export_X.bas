Operation =1
Option =0
Begin InputTables
    Name ="tbl_Strata"
    Name ="tbl_Sites"
    Name ="qsub_Surveyed_sites"
    Name ="tbl_Schedule"
End
Begin OutputColumns
    Expression ="tbl_Schedule.Calendar_year"
    Expression ="tbl_Sites.Park_code"
    Alias ="Stratum"
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    Alias ="N_transects"
    Expression ="Count(tbl_Sites.Site_code)"
End
Begin Joins
    LeftTable ="qsub_Surveyed_sites"
    RightTable ="tbl_Schedule"
    Expression ="qsub_Surveyed_sites.Event_year = tbl_Schedule.Calendar_year"
    Flag =1
    LeftTable ="qsub_Surveyed_sites"
    RightTable ="tbl_Schedule"
    Expression ="qsub_Surveyed_sites.Site_ID = tbl_Schedule.Site_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Schedule"
    Expression ="tbl_Sites.Site_ID = tbl_Schedule.Site_ID"
    Flag =1
    LeftTable ="tbl_Strata"
    RightTable ="tbl_Sites"
    Expression ="tbl_Strata.Stratum_ID = tbl_Sites.Stratum_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Schedule.Calendar_year"
    Flag =1
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Strata.Stratum_name"
    Flag =1
End
Begin Groups
    Expression ="tbl_Schedule.Calendar_year"
    GroupLevel =0
    Expression ="tbl_Sites.Park_code"
    GroupLevel =0
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    GroupLevel =0
    Expression ="tbl_Strata.Stratum_name"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "OrderByOn" ="0"
dbText "Description" ="Export query for transects completed up through the most recent year of data - f"
    "or pivot table output to get totals for each year"
dbBinary "GUID" = Begin
    0x6eace9ddef78e343bd99ac6c82365b5a
End
Begin
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =352
    Left =-1
    Top =-1
    Right =1105
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
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
        Left =172
        Top =7
        Right =268
        Bottom =114
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =446
        Top =9
        Right =583
        Bottom =116
        Top =0
        Name ="qsub_Surveyed_sites"
        Name =""
    End
    Begin
        Left =305
        Top =14
        Right =401
        Bottom =106
        Top =0
        Name ="tbl_Schedule"
        Name =""
    End
End
