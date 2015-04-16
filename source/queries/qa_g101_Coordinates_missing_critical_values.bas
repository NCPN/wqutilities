Operation =1
Option =0
Where ="(((tbl_Coordinates.Event_ID) Is Null)) OR (((tbl_Coordinates.Coord_created_date)"
    " Is Null))"
Begin InputTables
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Expression ="tbl_Coordinates.Event_ID"
    Expression ="tbl_Coordinates.Coord_label"
    Expression ="tbl_Coordinates.Coordinate_notes"
    Expression ="tbl_Coordinates.Coord_created_date"
    Expression ="tbl_Coordinates.Coord_updated"
    Expression ="tbl_Coordinates.Coord_updated_by"
    Expression ="tbl_Coordinates.Coord_ID"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Records missing event ID or coord creation date"
Begin
    Begin
        dbText "Name" ="tbl_Coordinates.Coord_created_date"
        dbInteger "ColumnWidth" ="1932"
        dbBoolean "ColumnHidden" ="0"
    End
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
        Left =48
        Top =7
        Right =172
        Bottom =144
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
