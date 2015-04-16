Operation =1
Option =0
Where ="(((MSysQueries.Attribute)=8) AND ((MSysObjects.Name) Like \"q*\") AND ((MSysObje"
    "cts.Type)=5))"
Begin InputTables
    Name ="MSysObjects"
    Name ="MSysQueries"
End
Begin OutputColumns
    Expression ="MSysQueries.Attribute"
    Expression ="MSysQueries.Expression"
    Expression ="MSysObjects.Name"
    Expression ="MSysQueries.Order"
End
Begin Joins
    LeftTable ="MSysObjects"
    RightTable ="MSysQueries"
    Expression ="MSysObjects.Id = MSysQueries.ObjectId"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x59aba187bc359d48bd1d42d3537d28c4
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="MSysQueries.Attribute"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MSysQueries.Expression"
        dbInteger "ColumnWidth" ="9120"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MSysObjects.Name"
        dbInteger "ColumnWidth" ="3480"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MSysQueries.Order"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =196
    Right =957
    Bottom =804
    Left =-1
    Top =-1
    Right =734
    Bottom =254
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="MSysObjects"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="MSysQueries"
        Name =""
    End
End
