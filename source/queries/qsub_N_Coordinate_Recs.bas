Operation =1
Option =0
Begin InputTables
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Expression ="tbl_Events.Event_ID"
    Alias ="N_coord_recs"
    Expression ="Count(tbl_Coordinates.Coord_ID)"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID=tbl_Coordinates.Event_ID"
    Flag =2
End
Begin Groups
    Expression ="tbl_Events.Event_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Number of coordinate records associated with each sampling event"
Begin
    Begin
        dbText "Name" ="tbl_Events.Event_ID"
        dbInteger "ColumnWidth" ="4185"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="N_coord_recs"
        dbBinary "GUID" = Begin
            0xde6eba0429f5c141912ec17575ddeea7
        End
    End
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =484
    Left =-1
    Top =-1
    Right =1105
    Bottom =276
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =394
        Top =13
        Right =490
        Bottom =120
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =574
        Top =6
        Right =670
        Bottom =113
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
