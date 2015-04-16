Operation =4
Option =0
Where ="(((tbl_Coordinates.UTM_east) Is Null) AND ((tbl_Coordinates.UTM_north) Is Null) "
    "AND ((tbl_Coordinates.Field_UTME) Is Null) AND ((tbl_Coordinates.Field_UTMN) Is "
    "Null))"
Begin InputTables
    Name ="tbl_Target_Coords"
    Name ="tbl_Coordinates"
    Name ="tbl_Events"
End
Begin OutputColumns
    Name ="tbl_Coordinates.UTM_east"
    Expression ="[Target_UTME]"
    Name ="tbl_Coordinates.UTM_north"
    Expression ="[Target_UTMN]"
    Name ="tbl_Coordinates.Datum"
    Expression ="[Target_Datum]"
    Name ="tbl_Coordinates.Coord_type"
    Expression ="\"Target\""
    Name ="tbl_Coordinates.Coord_updated"
    Expression ="Now()"
    Name ="tbl_Coordinates.Coord_updated_by"
    Expression ="fxnUserName()"
End
Begin Joins
    LeftTable ="tbl_Coordinates"
    RightTable ="tbl_Events"
    Expression ="tbl_Coordinates.Event_ID = tbl_Events.Event_ID"
    Flag =1
    LeftTable ="tbl_Target_Coords"
    RightTable ="tbl_Events"
    Expression ="tbl_Target_Coords.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbText "Description" ="Update final coordinates with target coordinates if still blank following GPS up"
    "dates in previous steps"
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
    Bottom =270
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =594
        Top =72
        Right =905
        Bottom =239
        Top =0
        Name ="tbl_Target_Coords"
        Name =""
    End
    Begin
        Left =37
        Top =9
        Right =207
        Bottom =266
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =325
        Top =6
        Right =497
        Bottom =188
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
