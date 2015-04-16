Operation =4
Option =0
Where ="(((tbl_Coordinates.UTM_east) Is Null) AND ((tbl_Coordinates.UTM_north) Is Null) "
    "AND ((tbl_GPS_Info.Coord_ID) Is Null) AND ((tbl_GPS_Info.Flag)=True) AND ((Year("
    "[GPS_date]))=Year([Start_date])))"
Begin InputTables
    Name ="tbl_GPS_Info"
    Name ="tbl_Coordinates"
    Name ="tbl_Events"
End
Begin OutputColumns
    Name ="tbl_Coordinates.UTM_east"
    Expression ="[GPS_UTME]"
    Name ="tbl_Coordinates.UTM_north"
    Expression ="[GPS_UTMN]"
    Name ="tbl_Coordinates.Datum"
    Expression ="[GPS_datum]"
    Name ="tbl_Coordinates.Coord_type"
    Expression ="[Corr_type]"
    Name ="tbl_Coordinates.Est_horiz_error"
    Expression ="[H_err_m]"
    Name ="tbl_Coordinates.Coord_updated"
    Expression ="Now()"
    Name ="tbl_Coordinates.Coord_updated_by"
    Expression ="fxnUserName()"
    Name ="tbl_GPS_Info.Coord_ID"
    Expression ="tbl_Coordinates.Coord_ID"
End
Begin Joins
    LeftTable ="tbl_GPS_Info"
    RightTable ="tbl_Events"
    Expression ="tbl_GPS_Info.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbText "Description" ="Updates tbl_GPS_Info with matched Coord_ID, and updates tbl_Coordinates with fin"
    "al coordinates from flagged GPS records where Coord_ID is null based on matches "
    "for GPS year and event year"
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
    Bottom =233
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =140
        Top =7
        Right =272
        Bottom =204
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
    Begin
        Left =520
        Top =8
        Right =662
        Bottom =205
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =342
        Top =8
        Right =477
        Bottom =205
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
