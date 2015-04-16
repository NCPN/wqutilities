Operation =1
Option =0
Having ="(((Count(qsub_Duplicate_point_count_observers.Contact_ID))>1))"
Begin InputTables
    Name ="qsub_Duplicate_point_count_observers"
End
Begin OutputColumns
    Expression ="qsub_Duplicate_point_count_observers.Event_year"
    Expression ="qsub_Duplicate_point_count_observers.Park_code"
    Expression ="qsub_Duplicate_point_count_observers.Site_code"
    Expression ="qsub_Duplicate_point_count_observers.Location_code"
    Expression ="qsub_Duplicate_point_count_observers.Location_type"
    Alias ="N_observers"
    Expression ="Count(qsub_Duplicate_point_count_observers.Contact_ID)"
End
Begin OrderBy
    Expression ="qsub_Duplicate_point_count_observers.Event_year"
    Flag =1
    Expression ="qsub_Duplicate_point_count_observers.Site_code"
    Flag =0
    Expression ="qsub_Duplicate_point_count_observers.Location_code"
    Flag =0
    Expression ="qsub_Duplicate_point_count_observers.Location_type"
    Flag =0
End
Begin Groups
    Expression ="qsub_Duplicate_point_count_observers.Event_year"
    GroupLevel =0
    Expression ="qsub_Duplicate_point_count_observers.Park_code"
    GroupLevel =0
    Expression ="qsub_Duplicate_point_count_observers.Site_code"
    GroupLevel =0
    Expression ="qsub_Duplicate_point_count_observers.Location_code"
    GroupLevel =0
    Expression ="qsub_Duplicate_point_count_observers.Location_type"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Returns locations where more than one point count observer is associated with an"
    "y given point count event"
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
        Right =134
        Bottom =113
        Top =0
        Name ="qsub_Duplicate_point_count_observers"
        Name =""
    End
End
