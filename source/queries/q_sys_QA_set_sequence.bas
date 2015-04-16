Operation =1
Option =0
Where ="(((Msysobjects.Type)=5) AND ((Msysobjects.Name) Like \"qa_*\"))"
Begin InputTables
    Name ="Msysobjects"
End
Begin OutputColumns
    Expression ="Msysobjects.Name"
    Alias ="Seq1"
    Expression ="Mid([Name],4,1)"
    Alias ="Seq2"
    Expression ="CInt(Mid([Name],5,2))"
End
Begin OrderBy
    Expression ="Mid([Name],4,1)"
    Flag =0
    Expression ="CInt(Mid([Name],5,2))"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "Description" ="QA query set revision tool - shows the sequence of QA queries to help look for g"
    "aps and duplicates when renumbering"
Begin
    Begin
        dbText "Name" ="Seq2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb6871c0380bf34498b2828bd957da9ea
        End
    End
    Begin
        dbText "Name" ="Seq1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x66ece3dd0b50114d9b89c3f9541f2038
        End
    End
    Begin
        dbText "Name" ="Msysobjects.Name"
        dbInteger "ColumnWidth" ="5565"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc8b9fe4ca71a5145abdf7d2f1109f03f
        End
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1483
    Bottom =997
    Left =-1
    Top =-1
    Right =1451
    Bottom =657
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =204
        Bottom =389
        Top =0
        Name ="Msysobjects"
        Name =""
    End
End
