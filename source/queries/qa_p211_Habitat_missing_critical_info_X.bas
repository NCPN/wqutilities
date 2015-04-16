Operation =1
Option =0
Where ="(((tbl_Habitat.Event_ID) Is Null)) OR (((tbl_Habitat.Habitat_num) Is Null))"
Begin InputTables
    Name ="tbl_Habitat"
End
Begin OutputColumns
    Expression ="tbl_Habitat.Event_ID"
    Expression ="tbl_Habitat.Habitat_num"
    Expression ="tbl_Habitat.PMR_code"
    Expression ="tbl_Habitat.Canopy_cover"
    Expression ="tbl_Habitat.Tree_size_class"
    Expression ="tbl_Habitat.Habitat_notes"
    Alias ="varObject"
    Expression ="\"tbl_Habitat\""
End
Begin OrderBy
    Expression ="tbl_Habitat.Event_ID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing event ID or habitat num"
Begin
    Begin
        dbText "Name" ="tbl_Habitat.Habitat_notes"
        dbInteger "ColumnWidth" ="1440"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =36
    Top =42
    Right =1130
    Bottom =390
    Left =-1
    Top =-1
    Right =1087
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =173
        Top =8
        Right =293
        Bottom =145
        Top =0
        Name ="tbl_Habitat"
        Name =""
    End
End
