Operation =3
Name ="tbl_Coordinates"
Option =0
Where ="(((Year([Start_date]))=Year([GPS_date])) AND ((qxsub_Locations_without_coordinat"
    "es.Calendar_year)=CStr(Year([Start_date]))) AND ((tbl_GPS_Info.Flag)=True) AND ("
    "(tbl_GPS_Info.Coord_ID) Is Null) AND ((qxsub_Locations_visited_multiple_times_in"
    "_a_year.Location_ID) Is Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_GPS_Info"
    Name ="qxsub_Locations_without_coordinates"
    Name ="qxsub_Locations_visited_multiple_times_in_a_year"
End
Begin OutputColumns
    Name ="Event_ID"
    Expression ="tbl_Events.Event_ID"
    Alias ="Best"
    Name ="Is_best"
    Expression ="True"
    Name ="UTM_east"
    Expression ="tbl_GPS_Info.GPS_UTME"
    Name ="UTM_north"
    Expression ="tbl_GPS_Info.GPS_UTMN"
    Name ="Coord_type"
    Expression ="tbl_GPS_Info.Corr_type"
    Name ="Datum"
    Expression ="tbl_GPS_Info.GPS_datum"
    Name ="Est_horiz_error"
    Expression ="tbl_GPS_Info.H_err_m"
    Alias ="Updated_by"
    Name ="Coord_updated_by"
    Expression ="fxnUserName()"
    Alias ="Updated"
    Name ="Coord_updated"
    Expression ="Now()"
    Name ="Coord_ID"
    Expression ="tbl_GPS_Info.GPS_ID"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_GPS_Info"
    Expression ="tbl_Events.Location_ID = tbl_GPS_Info.Location_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="qxsub_Locations_without_coordinates"
    Expression ="tbl_Locations.Location_ID = qxsub_Locations_without_coordinates.Location_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
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
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbText "Description" ="Appends tbl_GPS_Info records (if any) to tbl_Coordinates based on the matching e"
    "vent from the same year, and assigns these new records as Is_best=TRUE"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1658
    Bottom =504
    Left =-1
    Top =-1
    Right =1611
    Bottom =274
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =78
        Top =9
        Right =192
        Bottom =146
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =247
        Top =13
        Right =351
        Bottom =225
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =396
        Top =69
        Right =488
        Bottom =251
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
    Begin
        Left =518
        Top =10
        Right =765
        Bottom =87
        Top =0
        Name ="qxsub_Locations_without_coordinates"
        Name =""
    End
    Begin
        Left =803
        Top =6
        Right =899
        Bottom =98
        Top =0
        Name ="qxsub_Locations_visited_multiple_times_in_a_year"
        Name =""
    End
End
