Operation =1
Option =0
Where ="(((tbl_GPS_Info.Location_ID) Is Null))"
Begin InputTables
    Name ="tbl_GPS_Info"
End
Begin OutputColumns
    Expression ="tbl_GPS_Info.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Shows records where Location_ID is null"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =374
    Left =-1
    Top =-1
    Right =1083
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =11
        Name ="tbl_GPS_Info"
        Name =""
    End
End
