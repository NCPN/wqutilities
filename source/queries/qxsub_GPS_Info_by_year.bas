Operation =1
Option =0
Where ="(((tbl_GPS_Info.GPS_date) Is Not Null))"
Begin InputTables
    Name ="tbl_GPS_Info"
End
Begin OutputColumns
    Alias ="GPS_year"
    Expression ="CStr(Year([GPS_date]))"
    Expression ="tbl_GPS_Info.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="GPS records grouped by year (on GPS date)"
Begin
    Begin
        dbText "Name" ="GPS_year"
        dbBinary "GUID" = Begin
            0xd6fc3e14079c9643823ba6bd26936222
        End
    End
End
Begin
    State =0
    Left =62
    Top =84
    Right =1658
    Bottom =396
    Left =-1
    Top =-1
    Right =1589
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
End
