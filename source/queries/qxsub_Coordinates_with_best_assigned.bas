Operation =1
Option =0
Where ="(((tbl_Coordinates.Is_best)=Yes))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Coordinates"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Locations.Location_ID"
End
Begin Joins
    LeftTable ="tbl_Coordinates"
    RightTable ="tbl_Events"
    Expression ="tbl_Coordinates.Event_ID=tbl_Events.Event_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID=tbl_Events.Location_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Locations with best coordinates"
Begin
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =388
    Left =-1
    Top =-1
    Right =1105
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =79
        Top =13
        Right =199
        Bottom =150
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =398
        Top =7
        Right =538
        Bottom =144
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =237
        Top =6
        Right =333
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
