Operation =6
Option =0
Where ="(((tbl_Schedule.Calendar_year)>\"2006\"))"
Begin InputTables
    Name ="tbl_Schedule"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Expression ="tbl_Sites.Panel_type"
    GroupLevel =2
    Expression ="tbl_Sites.Panel_name"
    GroupLevel =2
    Expression ="tbl_Sites.Site_status"
    GroupLevel =2
    Expression ="tbl_Schedule.Calendar_year"
    GroupLevel =1
    Alias ="CountOfSite_ID"
    Expression ="Count(tbl_Sites.Site_ID)"
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Schedule"
    Expression ="tbl_Sites.Site_ID = tbl_Schedule.Site_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Sites.Panel_type"
    Flag =1
    Expression ="tbl_Sites.Panel_name"
    Flag =0
    Expression ="tbl_Sites.Site_status"
    Flag =0
    Expression ="tbl_Schedule.Calendar_year"
    Flag =1
End
Begin Groups
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Expression ="tbl_Sites.Panel_type"
    GroupLevel =2
    Expression ="tbl_Sites.Panel_name"
    GroupLevel =2
    Expression ="tbl_Sites.Site_status"
    GroupLevel =2
    Expression ="tbl_Schedule.Calendar_year"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Matrix of the number of sites per panel per park that are currently in the sched"
    "ule table"
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
    ColumnsShown =559
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =98
        Top =0
        Name ="tbl_Schedule"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
