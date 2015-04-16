Operation =1
Option =0
Where ="(((tbl_Observers.Observer_role)=\"Point count\"))"
Begin InputTables
    Name ="tbl_Observers"
End
Begin OutputColumns
    Expression ="tbl_Observers.Event_ID"
    Alias ="Observer"
    Expression ="First(tbl_Observers.Contact_ID)"
End
Begin Groups
    Expression ="tbl_Observers.Event_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x907d7df8c4fe4049b6863d88cf1f9cdd
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "Description" ="Shows point count observers (where Observer_role='Point count'); where there is "
    "more than one point count observer, the first of these only is returned to avoid"
    " duplicate records in the output matrix"
Begin
    Begin
        dbText "Name" ="tbl_Observers.Event_ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Observer"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x003e0d06f8d11a00e4d11a002091c803
        End
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1496
    Bottom =980
    Left =-1
    Top =-1
    Right =1426
    Bottom =560
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="tbl_Observers"
        Name =""
    End
End
