Operation =1
Option =0
Where ="(((tbl_Markers.Marker_status)='Removed') AND ((tbl_Markers.Marker_removed) Is Nu"
    "ll)) OR (((tbl_Markers.Marker_status)='Active') AND ((tbl_Markers.Marker_removed"
    ") Is Not Null))"
Begin InputTables
    Name ="tbl_Markers"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Markers.Marker_code"
    Expression ="tbl_Markers.Marker_type"
    Expression ="tbl_Markers.Marker_status"
    Expression ="tbl_Markers.Marker_notes"
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
    Flag =3
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
dbText "Description" ="Marker status = 'Removed' but no removal date, or with a removal date and status"
    " = 'Active'"
dbBinary "GUID" = Begin
    0x3a2bbc8c8205f64895ead21c29cd5b61
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
        dbText "Name" ="tbl_Markers.Marker_status"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1149
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =333
        Top =9
        Right =445
        Bottom =146
        Top =0
        Name ="tbl_Markers"
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
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
End
