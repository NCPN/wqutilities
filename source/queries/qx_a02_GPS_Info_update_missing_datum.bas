Operation =4
Option =0
Where ="(((tbl_GPS_Info.GPS_datum) Is Null))"
Begin InputTables
    Name ="tbl_GPS_Info"
End
Begin OutputColumns
    Name ="tbl_GPS_Info.GPS_datum"
    Expression ="\"NAD83\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbText "Description" ="Update records missing GPS_datum to 'NAD83'"
Begin
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =448
    Left =-1
    Top =-1
    Right =1105
    Bottom =240
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =38
        Top =6
        Right =218
        Bottom =188
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
End
