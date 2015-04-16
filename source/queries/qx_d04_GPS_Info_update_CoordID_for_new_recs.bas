Operation =4
Option =0
Where ="(((tbl_GPS_Info.Coord_ID) Is Null))"
Begin InputTables
    Name ="tbl_Coordinates"
    Name ="tbl_GPS_Info"
End
Begin OutputColumns
    Name ="tbl_GPS_Info.Coord_ID"
    Expression ="tbl_Coordinates.Coord_ID"
End
Begin Joins
    LeftTable ="tbl_Coordinates"
    RightTable ="tbl_GPS_Info"
    Expression ="tbl_Coordinates.Coord_ID = tbl_GPS_Info.GPS_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbText "Description" ="Populates Coord_ID in tbl_GPS_Info for record(s) just appended in the previous s"
    "tep - note that GPS_ID was appended to Coord_ID as a shortcut"
Begin
End
Begin
    State =0
    Left =42
    Top =59
    Right =1121
    Bottom =371
    Left =-1
    Top =-1
    Right =1072
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
End
