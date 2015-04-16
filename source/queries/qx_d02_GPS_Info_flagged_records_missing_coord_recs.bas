Operation =1
Option =0
Where ="(((qxsub_Locations_without_coordinates.Calendar_year)=CStr(Year([GPS_date]))) AN"
    "D ((tbl_GPS_Info.Coord_ID) Is Null) AND ((tbl_GPS_Info.Flag)=True) AND ((tbl_GPS"
    "_Info.Location_ID) Is Not Null) AND ((qxsub_Locations_visited_multiple_times_in_"
    "a_year.Location_ID) Is Null))"
Begin InputTables
    Name ="qxsub_Locations_without_coordinates"
    Name ="tbl_GPS_Info"
    Name ="qxsub_Locations_visited_multiple_times_in_a_year"
End
Begin OutputColumns
    Expression ="qxsub_Locations_without_coordinates.Calendar_year"
    Expression ="tbl_GPS_Info.*"
End
Begin Joins
    LeftTable ="qxsub_Locations_without_coordinates"
    RightTable ="tbl_GPS_Info"
    Expression ="qxsub_Locations_without_coordinates.Location_ID = tbl_GPS_Info.Location_ID"
    Flag =1
    LeftTable ="qxsub_Locations_without_coordinates"
    RightTable ="qxsub_Locations_visited_multiple_times_in_a_year"
    Expression ="qxsub_Locations_without_coordinates.Calendar_year = qxsub_Locations_visited_mult"
        "iple_times_in_a_year.Calendar_year"
    Flag =2
    LeftTable ="qxsub_Locations_without_coordinates"
    RightTable ="qxsub_Locations_visited_multiple_times_in_a_year"
    Expression ="qxsub_Locations_without_coordinates.Location_ID = qxsub_Locations_visited_multip"
        "le_times_in_a_year.Location_ID"
    Flag =2
End
Begin OrderBy
    Expression ="qxsub_Locations_without_coordinates.Calendar_year"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Flagged records to be used to update tbl_Coordinates - where Loc ID is populated"
    " but missing Coord ID"
Begin
End
Begin
    State =0
    Left =18
    Top =40
    Right =1381
    Bottom =352
    Left =-1
    Top =-1
    Right =1356
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =211
        Top =9
        Right =490
        Bottom =86
        Top =0
        Name ="qxsub_Locations_without_coordinates"
        Name =""
    End
    Begin
        Left =75
        Top =4
        Right =171
        Bottom =111
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
    Begin
        Left =528
        Top =6
        Right =624
        Bottom =98
        Top =0
        Name ="qxsub_Locations_visited_multiple_times_in_a_year"
        Name =""
    End
End
