Operation =5
Option =0
Begin InputTables
    Name ="tmp_Coordinate_GIS_Data"
End
Begin OutputColumns
    Expression ="tmp_Coordinate_GIS_Data.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbText "Description" ="Deletes records in the temporary table, to be run after updating tbl_Coordinates"
    " with the previous query"
dbBoolean "OrderByOn" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1658
    Bottom =374
    Left =-1
    Top =-1
    Right =1611
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =771
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tmp_Coordinate_GIS_Data"
        Name =""
    End
End
