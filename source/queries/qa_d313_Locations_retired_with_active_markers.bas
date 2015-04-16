Operation =1
Option =0
Where ="(((tbl_Locations.Location_status)='Rejected' Or (tbl_Locations.Location_status)="
    "'Retired') AND ((tbl_Markers.Marker_status)='Active'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Markers"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_Locations.Loc_established"
    Expression ="tbl_Locations.Loc_discontinued"
    Expression ="tbl_Markers.Marker_status"
    Expression ="tbl_Markers.Marker_code"
    Expression ="tbl_Markers.Marker_type"
    Expression ="tbl_Markers.Marker_installed"
    Expression ="tbl_Markers.Marker_updated"
    Expression ="tbl_Markers.Marker_removed"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Markers"
    Expression ="tbl_Locations.Location_ID = tbl_Markers.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Locations.Location_type"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Retired or rejected locations that have marker records still marked as 'Active' "
    "(instead of 'Removed' or 'Inactive')"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x7801417b633eed48992a9d6c0831f87f
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Markers.Marker_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Markers.Marker_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Markers.Marker_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Markers.Marker_installed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Markers.Marker_updated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Markers.Marker_removed"
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
        dbText "Name" ="tbl_Locations.Loc_discontinued"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_established"
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
    State =2
    Left =-4
    Top =-30
    Right =795
    Bottom =692
    Left =-1
    Top =-1
    Right =775
    Bottom =146
    Left =0
    Top =2
    ColumnsShown =539
    Begin
        Left =21
        Top =3
        Right =117
        Bottom =110
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =161
        Top =6
        Right =265
        Bottom =143
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =437
        Top =6
        Right =533
        Bottom =113
        Top =0
        Name ="tbl_Markers"
        Name =""
    End
End
