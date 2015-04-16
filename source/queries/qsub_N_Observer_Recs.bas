Operation =1
Option =0
Begin InputTables
    Name ="tbl_Events"
    Name ="tbl_Observers"
End
Begin OutputColumns
    Expression ="tbl_Events.Event_ID"
    Alias ="N_observers"
    Expression ="Count(tbl_Observers.Contact_ID)"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Observers"
    Expression ="tbl_Events.Event_ID=tbl_Observers.Event_ID"
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
dbText "Description" ="Number of observers associated with each sampling event"
Begin
    Begin
        dbText "Name" ="tbl_Events.Event_ID"
        dbInteger "ColumnWidth" ="4185"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="N_observers"
        dbBinary "GUID" = Begin
            0x2c52ba1a0e02aa4691400d10762fbb7c
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
        Left =976
        Top =6
        Right =1072
        Bottom =113
        Top =0
        Name ="tbl_Observers"
        Name =""
    End
End
