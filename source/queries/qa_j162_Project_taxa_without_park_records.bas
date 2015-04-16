Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Taxon_type)='Specific') AND ((tlu_Park_Taxa.Taxon_ID) Is Nul"
    "l))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tlu_Park_Taxa"
End
Begin OutputColumns
    Expression ="tlu_Project_Taxa.Species_code"
    Expression ="tlu_Project_Taxa.Scientific_name"
    Expression ="tlu_Project_Taxa.Pref_com_name"
    Expression ="tlu_Project_Taxa.Category"
    Expression ="tlu_Project_Taxa.Taxon_type"
    Expression ="tlu_Project_Taxa.Taxon_is_active"
    Expression ="tlu_Project_Taxa.Record_status"
    Expression ="tlu_Project_Taxa.Rec_status_notes"
    Expression ="tlu_Project_Taxa.Project_taxon_notes"
    Alias ="varObject"
    Expression ="\"fsub_Project_Taxa\""
    Alias ="varFilter"
    Expression ="\"Taxon_ID='\" & [tlu_Project_taxa].[Taxon_ID] & \"'\""
End
Begin Joins
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tlu_Park_Taxa"
    Expression ="tlu_Project_Taxa.Taxon_ID = tlu_Park_Taxa.Taxon_ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Taxon records (excluding temporary and grouped taxa) that do not have an associa"
    "ted park record"
dbBinary "GUID" = Begin
    0x8353e7152672104fb343b475a20b2572
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tlu_Project_Taxa.Scientific_name"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Pref_com_name"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Species_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Taxon_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Category"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Taxon_is_active"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Record_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Rec_status_notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa.Project_taxon_notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varFilter"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-30
    Top =60
    Right =1051
    Bottom =408
    Left =-1
    Top =-1
    Right =1057
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
    Begin
        Left =216
        Top =7
        Right =336
        Bottom =144
        Top =0
        Name ="tlu_Park_Taxa"
        Name =""
    End
End
