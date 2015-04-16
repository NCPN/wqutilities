Operation =1
Option =0
Where ="(((tbl_GPS_Info.Feat_type) Is Null)) OR (((tbl_GPS_Info.GPS_datum) Is Null)) OR "
    "(((tbl_GPS_Info.UTM_zone) Is Null)) OR (((tbl_GPS_Info.GPS_date) Is Null))"
Begin InputTables
    Name ="tbl_GPS_Info"
End
Begin OutputColumns
    Expression ="tbl_GPS_Info.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Shows records where Feat_type, GPS_datum, GPS_date or UTM_zone are null"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
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
