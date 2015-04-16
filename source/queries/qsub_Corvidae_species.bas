Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Family)=\"Corvidae\"))"
Begin InputTables
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tlu_Project_Taxa.Species_code"
    Expression ="tlu_Project_Taxa.Scientific_name"
    Expression ="tlu_Project_Taxa.Common_name"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x3c5f25020e138c4d9bcbfd9ff720ec74
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tlu_Project_Taxa.Species_code"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5e96138c01257141bc9009807b51c319
        End
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Scientific_name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x29c81d6e6685de41baaff88ed32fd5f7
        End
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Common_name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x065e76fa5b0e0c45a9e75905d3dabc78
        End
    End
End
Begin
    State =0
    Left =34
    Top =29
    Right =1492
    Bottom =940
    Left =-1
    Top =-1
    Right =1426
    Bottom =628
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =382
        Bottom =489
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
