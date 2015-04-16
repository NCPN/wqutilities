Operation =1
Option =0
Where ="(((Msysobjects.Name) Like \"qa_*\" And (Msysobjects.Name) Like \"*\" & [Enter th"
    "e search string] & \"*\") AND ((Msysobjects.Type)=5))"
Begin InputTables
    Name ="Msysobjects"
End
Begin OutputColumns
    Expression ="Msysobjects.Name"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="QA query set revision tool - shows QA queries with names containing a user-defin"
    "ed search string"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
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
    Bottom =589
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
