Operation =1
Option =0
Begin InputTables
    Name ="tbl_Events"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Expression ="tbl_Events.Event_ID"
    Alias ="N_pt_count_recs"
    Expression ="Count(tbl_Point_Counts.Observation_ID)"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Point_Counts"
    Expression ="tbl_Events.Event_ID=tbl_Point_Counts.Event_ID"
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
dbText "Description" ="Number of point count observation records associated with each sampling event"
Begin
    Begin
        dbText "Name" ="tbl_Events.Event_ID"
        dbInteger "ColumnWidth" ="4185"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="N_pt_count_recs"
        dbBinary "GUID" = Begin
            0x357916909dad8642a5ba3de3adf08ff7
        End
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
    Bottom =162
    Left =288
    Top =0
    ColumnsShown =543
    Begin
        Left =106
        Top =13
        Right =202
        Bottom =120
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =277
        Top =21
        Right =373
        Bottom =128
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
