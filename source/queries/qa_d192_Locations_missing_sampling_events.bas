Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)<>'Origin') AND ((tbl_Locations.Location_status)<"
    ">'Rejected') AND ((tbl_Events.Event_ID) Is Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_name"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_Locations.Loc_established"
    Expression ="tbl_Locations.Loc_discontinued"
    Expression ="tbl_Locations.Loc_created_date"
    Expression ="tbl_Locations.Loc_updated"
    Expression ="tbl_Locations.Loc_updated_by"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =2
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Locations.Location_status"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Location type <> 'Origin' and status <> 'Rejected' and missing an event; confirm"
    " correct data entry and delete unneeded records"
dbBinary "GUID" = Begin
    0xac6e44dce5037440a1e183d4cd137ee3
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_name"
        dbInteger "ColumnWidth" ="3150"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_established"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_discontinued"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_created_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_updated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_updated_by"
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
    Begin
        dbText "Name" ="varArgs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =393
    Left =-1
    Top =-1
    Right =1083
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =197
        Top =10
        Right =325
        Bottom =147
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =377
        Top =8
        Right =497
        Bottom =145
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
