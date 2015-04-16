Operation =1
Option =0
Having ="(((tbl_Coordinates.UTM_east) Is Not Null) AND ((Count(tbl_Coordinates.Coord_ID))"
    ">1))"
Begin InputTables
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Expression ="tbl_Coordinates.UTM_east"
    Expression ="tbl_Coordinates.UTM_north"
End
Begin Groups
    Expression ="tbl_Coordinates.UTM_east"
    GroupLevel =0
    Expression ="tbl_Coordinates.UTM_north"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Final coordinates that are duplicated in the data set"
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
    Right =1153
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
