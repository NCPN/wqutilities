Operation =1
Option =0
Where ="(((qsub_Surveyed_sites.Site_ID) Is Null))"
Begin InputTables
    Name ="tbl_Strata"
    Name ="tbl_Sites"
    Name ="tbl_Schedule"
    Name ="qsub_Surveyed_sites"
End
Begin OutputColumns
    Expression ="tbl_Schedule.Calendar_year"
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Alias ="Stratum"
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    Alias ="varObject"
    Expression ="\"frm_Data_Gateway\""
End
Begin Joins
    LeftTable ="tbl_Schedule"
    RightTable ="qsub_Surveyed_sites"
    Expression ="tbl_Schedule.Calendar_year = qsub_Surveyed_sites.Event_year"
    Flag =2
    LeftTable ="tbl_Schedule"
    RightTable ="qsub_Surveyed_sites"
    Expression ="tbl_Schedule.Site_ID = qsub_Surveyed_sites.Site_ID"
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
    Expression ="tbl_Schedule.Calendar_year"
    Flag =1
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Scheduled sites that were not visted for a given year"
Begin
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
        Left =185
        Top =5
        Right =281
        Bottom =112
        Top =0
        Name ="tbl_Sites"
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
