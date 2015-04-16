Operation =1
Option =0
Where ="(((tbl_Coordinates.Is_best)=True))"
Begin InputTables
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Alias ="Coord_date"
    Expression ="tbl_Events.Start_date"
    Expression ="tbl_Coordinates.Coord_label"
    Expression ="tbl_Coordinates.Is_best"
    Expression ="tbl_Coordinates.UTM_east"
    Expression ="tbl_Coordinates.UTM_north"
    Expression ="tbl_Coordinates.Coord_type"
    Expression ="tbl_Coordinates.Datum"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Subquery showing best navigation coordinates for the navigation report"
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
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =206
        Top =6
        Right =302
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =48
        Top =7
        Right =168
        Bottom =144
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
