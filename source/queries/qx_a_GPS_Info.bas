Operation =1
Option =0
Where ="(((tbl_GPS_Info.Feat_name) Like Nz([Enter the feature name (or blank to show all"
    "):],\"*\")) AND ((tbl_GPS_Info.GPS_date)>=Nz([Enter the date (or blank to show a"
    "ll):],#1/1/1800#) And (tbl_GPS_Info.GPS_date)<=Nz([Enter the date (or blank to s"
    "how all):],#12/31/2200#)))"
Begin InputTables
    Name ="tbl_GPS_Info"
End
Begin OutputColumns
    Expression ="tbl_GPS_Info.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Search for records within the GPS Info table"
Begin
End
Begin
    State =0
    Left =18
    Top =40
    Right =1122
    Bottom =352
    Left =-1
    Top =-1
    Right =1097
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =4
        Name ="tbl_GPS_Info"
        Name =""
    End
End
