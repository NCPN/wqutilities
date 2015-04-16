Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Species_code)<>'None') AND ((tlu_Project_Taxa.IBP_number) Is"
    " Null))"
Begin InputTables
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tlu_Project_Taxa.Species_code"
    Expression ="tlu_Project_Taxa.Scientific_name"
    Expression ="tlu_Project_Taxa.Pref_com_name"
    Expression ="tlu_Project_Taxa.IBP_number"
    Expression ="tlu_Project_Taxa.Taxon_type"
    Expression ="tlu_Project_Taxa.Taxon_is_active"
    Alias ="varObject"
    Expression ="\"fsub_Project_Taxa\""
    Alias ="varFilter"
    Expression ="\"Taxon_ID='\" & [tlu_Project_taxa].[Taxon_ID] & \"'\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Taxon records missing IBP number"
dbBinary "GUID" = Begin
    0x9884e0993b5a6248942ac07b099077cb
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tlu_Project_Taxa.Scientific_name"
        dbInteger "ColumnWidth" ="1500"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Pref_com_name"
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.IBP_number"
        dbInteger "ColumnWidth" ="1440"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Species_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-4
    Top =-30
    Right =795
    Bottom =692
    Left =-1
    Top =-1
    Right =775
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =7
        Right =168
        Bottom =144
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
