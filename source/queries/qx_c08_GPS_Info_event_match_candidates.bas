Operation =1
Option =0
Where ="(((qxsub_GPS_Info_by_year.Location_ID) Is Not Null) AND ((qxsub_GPS_Info_by_year"
    ".Coord_ID) Is Null))"
Begin InputTables
    Name ="qxsub_GPS_Info_by_year"
    Name ="qxsub_Events_by_year"
    Name ="tbl_Locations"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qxsub_GPS_Info_by_year.Feat_name"
    Expression ="tbl_Locations.Location_type"
    Expression ="qxsub_Events_by_year.Event_ID"
    Expression ="qxsub_Events_by_year.Start_date"
    Expression ="qxsub_GPS_Info_by_year.GPS_date"
    Alias ="Days_apart"
    Expression ="Abs(DateDiff(\"d\",[Start_date],[GPS_date]))"
    Expression ="qxsub_GPS_Info_by_year.GPS_ID"
    Expression ="qxsub_GPS_Info_by_year.Location_ID"
    Expression ="qxsub_GPS_Info_by_year.Coord_ID"
    Expression ="qxsub_GPS_Info_by_year.GPS_file"
    Expression ="qxsub_GPS_Info_by_year.GPS_process_notes"
    Expression ="qxsub_GPS_Info_by_year.Flag"
    Expression ="qxsub_GPS_Info_by_year.Is_better"
    Expression ="qxsub_GPS_Info_by_year.Is_replacement"
End
Begin Joins
    LeftTable ="qxsub_GPS_Info_by_year"
    RightTable ="qxsub_Events_by_year"
    Expression ="qxsub_GPS_Info_by_year.Location_ID = qxsub_Events_by_year.Location_ID"
    Flag =1
    LeftTable ="qxsub_GPS_Info_by_year"
    RightTable ="qxsub_Events_by_year"
    Expression ="qxsub_GPS_Info_by_year.GPS_year = qxsub_Events_by_year.Calendar_year"
    Flag =1
    LeftTable ="qxsub_GPS_Info_by_year"
    RightTable ="tbl_Locations"
    Expression ="qxsub_GPS_Info_by_year.Location_ID = tbl_Locations.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Shows records matched on Location_ID and the potential event records to be used "
    "to create coordinate records"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
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
        Left =168
        Top =7
        Right =264
        Bottom =114
        Top =0
        Name ="qxsub_GPS_Info_by_year"
        Name =""
    End
    Begin
        Left =314
        Top =4
        Right =410
        Bottom =111
        Top =0
        Name ="qxsub_Events_by_year"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
End
