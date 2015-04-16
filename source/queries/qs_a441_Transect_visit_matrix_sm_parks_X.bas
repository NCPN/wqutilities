Operation =6
Option =0
Where ="(((tbl_Sites.Park_code) Not In ('MORA','NOCA','OLYM')))"
Begin InputTables
    Name ="qsub_Surveyed_points"
    Name ="tbl_Sites"
    Name ="tbl_Strata"
    Name ="tbl_Schedule"
End
Begin OutputColumns
    Expression ="tbl_Schedule.Calendar_year"
    GroupLevel =1
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Expression ="tbl_Sites.Panel_type"
    GroupLevel =2
    Alias ="Transect"
    Expression ="tbl_Sites.Site_code"
    GroupLevel =2
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
    Expression ="tbl_Schedule.Calendar_year"
    Flag =1
End
Begin Groups
    Expression ="tbl_Schedule.Calendar_year"
    GroupLevel =1
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Expression ="tbl_Sites.Panel_type"
    GroupLevel =2
    Expression ="tbl_Sites.Site_code"
    GroupLevel =2
End
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Survey history at the small parks, with number of point visited by unit and year"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =374
    Left =-1
    Top =-1
    Right =1083
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =477
        Top =1
        Right =631
        Bottom =108
        Top =0
        Name ="qsub_Surveyed_points"
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
        Right =401
        Bottom =106
        Top =0
        Name ="tbl_Schedule"
        Name =""
    End
End
