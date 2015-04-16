Operation =1
Option =0
Where ="(((tbl_GPS_Info.Coord_ID) Is Null) AND ((tbl_GPS_Info.Location_ID) Is Not Null))"
Begin InputTables
    Name ="tbl_GPS_Info"
End
Begin OutputColumns
    Alias ="GPS_year"
    Expression ="CStr(Year([GPS_date]))"
    Expression ="tbl_GPS_Info.*"
End
Begin OrderBy
    Expression ="CStr(Year([GPS_date]))"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Shows records already matched on Location_ID where Coord_ID is null"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =1154
    Bottom =750
    Left =-1
    Top =-1
    Right =1079
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =201
        Top =11
        Right =297
        Bottom =118
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
End
