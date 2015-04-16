Operation =6
Option =0
Where ="(((tbl_Sites.Park_code) In ('MORA','NOCA','OLYM')))"
Begin InputTables
    Name ="tbl_Strata"
    Name ="tbl_Sites"
    Name ="qsub_Surveyed_sites"
    Name ="tbl_Schedule"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Alias ="Stratum"
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    GroupLevel =2
    Expression ="tbl_Schedule.Calendar_year"
    GroupLevel =1
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
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Strata.Stratum_name"
    Flag =1
End
Begin Groups
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    GroupLevel =2
    Expression ="tbl_Strata.Stratum_name"
    GroupLevel =2
    Expression ="tbl_Schedule.Calendar_year"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Summary of transects completed up through the most recent year of data"
Begin
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =1154
    Bottom =750
    Left =-1
    Top =-1
    Right =1153
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =559
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
        Left =440
        Top =5
        Right =578
        Bottom =112
        Top =0
        Name ="qsub_Surveyed_sites"
        Name =""
    End
    Begin
        Left =307
        Top =8
        Right =403
        Bottom =100
        Top =0
        Name ="tbl_Schedule"
        Name =""
    End
End
