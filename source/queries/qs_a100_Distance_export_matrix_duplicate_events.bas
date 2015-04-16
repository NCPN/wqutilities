Operation =1
Option =0
Having ="(((Count(qsub_Duplicate_point_count_events.Start_date))>1))"
Begin InputTables
    Name ="qsub_Duplicate_point_count_events"
End
Begin OutputColumns
    Expression ="qsub_Duplicate_point_count_events.Event_year"
    Expression ="qsub_Duplicate_point_count_events.Park_code"
    Expression ="qsub_Duplicate_point_count_events.Site_code"
    Expression ="qsub_Duplicate_point_count_events.Location_code"
    Expression ="qsub_Duplicate_point_count_events.Location_type"
    Alias ="N_events"
    Expression ="Count(qsub_Duplicate_point_count_events.Start_date)"
End
Begin OrderBy
    Expression ="qsub_Duplicate_point_count_events.Event_year"
    Flag =1
    Expression ="qsub_Duplicate_point_count_events.Site_code"
    Flag =0
    Expression ="qsub_Duplicate_point_count_events.Location_code"
    Flag =0
    Expression ="qsub_Duplicate_point_count_events.Location_type"
    Flag =0
End
Begin Groups
    Expression ="qsub_Duplicate_point_count_events.Event_year"
    GroupLevel =0
    Expression ="qsub_Duplicate_point_count_events.Park_code"
    GroupLevel =0
    Expression ="qsub_Duplicate_point_count_events.Site_code"
    GroupLevel =0
    Expression ="qsub_Duplicate_point_count_events.Location_code"
    GroupLevel =0
    Expression ="qsub_Duplicate_point_count_events.Location_type"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Returns locations where more than one point count sampling event occurred at the"
    " same point in a given year, potentially leading to inflated point count data in"
    " subsequent query output"
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
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =283
        Bottom =113
        Top =0
        Name ="qsub_Duplicate_point_count_events"
        Name =""
    End
End
