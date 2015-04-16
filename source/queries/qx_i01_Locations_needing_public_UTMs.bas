Operation =1
Option =0
Where ="(((tbl_Locations.UTME_public) Is Null)) OR (((tbl_Locations.UTMN_public) Is Null"
    "))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Sites"
    Name ="qxsub_Best_coordinates"
    Name ="tbl_Target_Coords"
End
Begin OutputColumns
    Expression ="tbl_Locations.Location_ID"
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="[tbl_Sites].[Site_code] & '.' & [Location_code]"
    Expression ="tbl_Locations.Rare_trans_pt"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_Locations.UTME_public"
    Expression ="tbl_Locations.UTMN_public"
    Expression ="tbl_Target_Coords.Target_UTME"
    Expression ="tbl_Target_Coords.Target_UTMN"
    Expression ="tbl_Target_Coords.Target_datum"
    Expression ="qxsub_Best_coordinates.Is_best"
    Expression ="qxsub_Best_coordinates.UTM_east"
    Expression ="qxsub_Best_coordinates.UTM_north"
    Expression ="qxsub_Best_coordinates.Datum"
    Expression ="qxsub_Best_coordinates.Coord_type"
    Expression ="tbl_Locations.Loc_updated"
    Expression ="tbl_Locations.Loc_updated_by"
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="qxsub_Best_coordinates"
    Expression ="tbl_Locations.Location_ID = qxsub_Best_coordinates.Location_ID"
    Flag =2
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Target_Coords"
    Expression ="tbl_Locations.Location_ID = tbl_Target_Coords.Location_ID"
    Flag =2
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Locations missing public coordinates - all locations that have sampling events s"
    "hould have public coordinates and the public offset descriptor field populated"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xacd2884b03c2584fa5a13205565d7b8b
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Rare_trans_pt"
        dbInteger "ColumnWidth" ="1365"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_type"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-30
    Right =1453
    Bottom =1005
    Left =-1
    Top =-1
    Right =1429
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =189
        Top =7
        Right =324
        Bottom =157
        Top =0
        Name ="tbl_Locations"
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
    Begin
        Left =413
        Top =15
        Right =557
        Bottom =159
        Top =0
        Name ="qxsub_Best_coordinates"
        Name =""
    End
    Begin
        Left =624
        Top =12
        Right =768
        Bottom =156
        Top =0
        Name ="tbl_Target_Coords"
        Name =""
    End
End
