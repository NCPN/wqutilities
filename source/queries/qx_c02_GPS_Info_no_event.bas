Operation =1
Option =0
Where ="(((qxsub_Events_by_year.Event_ID) Is Null) AND ((qxsub_GPS_Info_by_year.Location"
    "_ID) Is Not Null))"
Begin InputTables
    Name ="qxsub_GPS_Info_by_year"
    Name ="qxsub_Events_by_year"
End
Begin OutputColumns
    Expression ="qxsub_GPS_Info_by_year.*"
End
Begin Joins
    LeftTable ="qxsub_GPS_Info_by_year"
    RightTable ="qxsub_Events_by_year"
    Expression ="qxsub_GPS_Info_by_year.GPS_year = qxsub_Events_by_year.Calendar_year"
    Flag =2
    LeftTable ="qxsub_GPS_Info_by_year"
    RightTable ="qxsub_Events_by_year"
    Expression ="qxsub_GPS_Info_by_year.Location_ID = qxsub_Events_by_year.Location_ID"
    Flag =2
End
Begin OrderBy
    Expression ="qxsub_GPS_Info_by_year.GPS_year"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Shows records matched on Location_ID without any sampling event records from the"
    " same year - notify project staff to confirm no event for these (can't proceed w"
    "ithout event)"
Begin
End
Begin
    State =0
    Left =84
    Top =106
    Right =1658
    Bottom =418
    Left =-1
    Top =-1
    Right =1567
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =207
        Bottom =113
        Top =0
        Name ="qxsub_GPS_Info_by_year"
        Name =""
    End
    Begin
        Left =285
        Top =10
        Right =458
        Bottom =117
        Top =0
        Name ="qxsub_Events_by_year"
        Name =""
    End
End
