Operation =1
Option =0
Where ="(((tbl_Coordinates.Is_best)=True))"
Begin InputTables
    Name ="tbl_Coordinates"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Events.Location_ID"
    Expression ="tbl_Coordinates.*"
End
Begin Joins
    LeftTable ="tbl_Coordinates"
    RightTable ="tbl_Events"
    Expression ="tbl_Coordinates.Event_ID=tbl_Events.Event_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Data for best coordinates by location"
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
        Name ="tbl_Events"
        Name =""
    End
End
