Operation =1
Option =0
Begin InputTables
    Name ="qrsub_Navigation_report_base"
    Name ="qrsub_Nav_events"
    Name ="qrsub_Scheduled_sites"
    Name ="qrpt_Navigation_target_coordinates_all"
End
Begin OutputColumns
    Expression ="qrsub_Navigation_report_base.*"
    Expression ="qrsub_Nav_events.Start_date"
    Expression ="qrsub_Nav_events.Start_time"
    Expression ="qrsub_Nav_events.Event_notes"
    Expression ="qrsub_Scheduled_sites.Calendar_year"
    Expression ="qrpt_Navigation_target_coordinates_all.UTME"
    Expression ="qrpt_Navigation_target_coordinates_all.UTMN"
    Alias ="Source"
    Expression ="IIf(IsNull([Coord_type]),[Nav_source],[Coord_type])"
    Expression ="qrpt_Navigation_target_coordinates_all.Est_horiz_error"
    Expression ="qrpt_Navigation_target_coordinates_all.Elevation_m"
    Expression ="qrpt_Navigation_target_coordinates_all.Slope_deg"
    Expression ="qrpt_Navigation_target_coordinates_all.Aspect_deg"
    Expression ="qrpt_Navigation_target_coordinates_all.Nav_datum"
End
Begin Joins
    LeftTable ="qrsub_Navigation_report_base"
    RightTable ="qrsub_Nav_events"
    Expression ="qrsub_Navigation_report_base.Location_ID = qrsub_Nav_events.Location_ID"
    Flag =2
    LeftTable ="qrsub_Scheduled_sites"
    RightTable ="qrsub_Navigation_report_base"
    Expression ="qrsub_Scheduled_sites.Site_ID = qrsub_Navigation_report_base.Site_ID"
    Flag =1
    LeftTable ="qrsub_Navigation_report_base"
    RightTable ="qrpt_Navigation_target_coordinates_all"
    Expression ="qrsub_Navigation_report_base.Location_ID = qrpt_Navigation_target_coordinates_al"
        "l.Location_ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Primary query underlying the navigation report"
Begin
End
Begin
    State =0
    Left =84
    Top =106
    Right =1130
    Bottom =454
    Left =-1
    Top =-1
    Right =1035
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =197
        Top =7
        Right =421
        Bottom =144
        Top =0
        Name ="qrsub_Navigation_report_base"
        Name =""
    End
    Begin
        Left =459
        Top =37
        Right =607
        Bottom =144
        Top =0
        Name ="qrsub_Nav_events"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =83
        Top =0
        Name ="qrsub_Scheduled_sites"
        Name =""
    End
    Begin
        Left =645
        Top =6
        Right =741
        Bottom =113
        Top =0
        Name ="qrpt_Navigation_target_coordinates_all"
        Name =""
    End
End
