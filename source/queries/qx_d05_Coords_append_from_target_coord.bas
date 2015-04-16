Operation =3
Name ="tbl_Coordinates"
Option =0
Begin InputTables
    Name ="qxsub_d01_most_recent_date"
    Name ="tbl_Events"
    Name ="tbl_Target_Coords"
    Name ="qxsub_Locations_without_coordinates_across_years"
End
Begin OutputColumns
    Name ="Event_ID"
    Expression ="tbl_Events.Event_ID"
    Alias ="Best"
    Name ="Is_best"
    Expression ="True"
    Name ="UTM_east"
    Expression ="tbl_Target_Coords.Target_UTME"
    Name ="UTM_north"
    Expression ="tbl_Target_Coords.Target_UTMN"
    Alias ="Type"
    Name ="Coord_type"
    Expression ="\"Target\""
    Name ="Datum"
    Expression ="tbl_Target_Coords.Target_datum"
    Alias ="Updated_by"
    Name ="Coord_updated_by"
    Expression ="fxnUserName()"
    Alias ="Updated"
    Name ="Coord_updated"
    Expression ="Now()"
End
Begin Joins
    LeftTable ="qxsub_d01_most_recent_date"
    RightTable ="tbl_Events"
    Expression ="qxsub_d01_most_recent_date.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="qxsub_d01_most_recent_date"
    RightTable ="tbl_Events"
    Expression ="qxsub_d01_most_recent_date.Most_recent_date = tbl_Events.Start_date"
    Flag =1
    LeftTable ="qxsub_d01_most_recent_date"
    RightTable ="tbl_Target_Coords"
    Expression ="qxsub_d01_most_recent_date.Location_ID = tbl_Target_Coords.Location_ID"
    Flag =1
    LeftTable ="qxsub_d01_most_recent_date"
    RightTable ="qxsub_Locations_without_coordinates_across_years"
    Expression ="qxsub_d01_most_recent_date.Location_ID = qxsub_Locations_without_coordinates_acr"
        "oss_years.Location_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbText "Description" ="For locations with no coordinate records across years, appends target coordinate"
    "s to tbl_Coordinates based on matches to the most recent sampling event, and ass"
    "igns these new records as Is_best=TRUE"
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
    Bottom =156
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =366
        Top =6
        Right =589
        Bottom =83
        Top =0
        Name ="qxsub_d01_most_recent_date"
        Name =""
    End
    Begin
        Left =636
        Top =10
        Right =732
        Bottom =117
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =780
        Top =11
        Right =876
        Bottom =118
        Top =0
        Name ="tbl_Target_Coords"
        Name =""
    End
    Begin
        Left =12
        Top =8
        Right =332
        Bottom =70
        Top =0
        Name ="qxsub_Locations_without_coordinates_across_years"
        Name =""
    End
End
