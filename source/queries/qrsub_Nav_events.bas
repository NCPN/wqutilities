Operation =1
Option =0
Where ="(((tbl_Events.Event_notes) Is Not Null) AND ((qrsub_Navigation_report_base.Locat"
    "ion_type)='Origin'))"
Begin InputTables
    Name ="qrsub_Navigation_report_base"
    Name ="qrsub_Nav_most_recent_events"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Events.Location_ID"
    Expression ="tbl_Events.Start_date"
    Expression ="tbl_Events.Start_time"
    Expression ="tbl_Events.Event_notes"
End
Begin Joins
    LeftTable ="qrsub_Navigation_report_base"
    RightTable ="qrsub_Nav_most_recent_events"
    Expression ="qrsub_Navigation_report_base.Location_ID = qrsub_Nav_most_recent_events.Location"
        "_ID"
    Flag =1
    LeftTable ="qrsub_Navigation_report_base"
    RightTable ="qrsub_Nav_most_recent_events"
    Expression ="qrsub_Navigation_report_base.Site_ID = qrsub_Nav_most_recent_events.Site_ID"
    Flag =1
    LeftTable ="qrsub_Nav_most_recent_events"
    RightTable ="tbl_Events"
    Expression ="qrsub_Nav_most_recent_events.MaxOfStart_date = tbl_Events.Start_date"
    Flag =1
    LeftTable ="qrsub_Nav_most_recent_events"
    RightTable ="tbl_Events"
    Expression ="qrsub_Nav_most_recent_events.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Subquery showing event data associated with the most recent transect visit for t"
    "he navigation report"
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
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =177
        Bottom =113
        Top =0
        Name ="qrsub_Navigation_report_base"
        Name =""
    End
    Begin
        Left =216
        Top =7
        Right =416
        Bottom =99
        Top =0
        Name ="qrsub_Nav_most_recent_events"
        Name =""
    End
    Begin
        Left =477
        Top =9
        Right =597
        Bottom =146
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
