Operation =1
Option =0
Where ="(((tbl_Markers.Marker_code)<>'None') AND ((tbl_Markers.Marker_substrate) Is Null"
    ")) OR (((tbl_Markers.Marker_code)<>'None') AND ((tbl_Markers.Height_cm) Is Null)"
    ") OR (((tbl_Markers.Offset_dist_m) Is Null) AND ((tbl_Markers.Offset_azimuth) Is"
    " Not Null)) OR (((tbl_Markers.Offset_dist_m) Is Not Null) AND ((tbl_Markers.Offs"
    "et_azimuth) Is Null))"
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
    Expression ="tbl_Markers.Marker_substrate"
    Expression ="tbl_Markers.Height_cm"
    Expression ="tbl_Markers.Offset_dist_m"
    Expression ="tbl_Markers.Offset_azimuth"
    Expression ="tbl_Markers.Marker_status"
    Expression ="tbl_Markers.Marker_notes"
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
dbText "Description" ="Missing marker substrate or height (where marker code <> 'None'); or having only"
    " partial offset information (distance without azimuth or vice versa)"
dbBinary "GUID" = Begin
    0x4edcb180fc282a4e8958ccc172207d04
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Markers.Marker_substrate"
        dbInteger "ColumnWidth" ="1890"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Markers.Marker_code"
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
        Left =342
        Top =11
        Right =462
        Bottom =148
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
