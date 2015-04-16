Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)<>'Origin') AND ((tbl_Locations.Location_status)<"
    ">'Rejected') AND ((tbl_Coordinates.Coord_ID) Is Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Coordinates"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Alias ="Feat_name"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([Lo"
        "cation_type]<>'Incidental',[Location_code],IIf(IsNull([Site_code]),[Location_cod"
        "e],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])) & IIf([Location_type]='Inc"
        "idental','.' & [Species_code],''))"
    Alias ="Date_sampled"
    Expression ="Format([Start_date],\"yyyy mmm dd\")"
    Expression ="tbl_Locations.Location_name"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_Locations.Loc_established"
    Expression ="tbl_Locations.Loc_discontinued"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Coordinates"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Coordinates.Event_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =3
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
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
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Locations without event coordinate records (except transect origins and small pa"
    "rk grid origins, and locations with status='Rejected')"
dbBinary "GUID" = Begin
    0x2192f3d665046c4ebbaff883378958e6
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_name"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbInteger "ColumnWidth" ="1065"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_code"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_status"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1658
    Bottom =393
    Left =-1
    Top =-1
    Right =1611
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =98
        Top =10
        Right =194
        Bottom =117
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =236
        Top =7
        Right =356
        Bottom =144
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =556
        Top =6
        Right =652
        Bottom =113
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =399
        Top =8
        Right =495
        Bottom =115
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =690
        Top =6
        Right =786
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =824
        Top =6
        Right =920
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
