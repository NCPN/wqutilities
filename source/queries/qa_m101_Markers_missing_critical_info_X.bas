Operation =1
Option =0
Where ="(((tbl_Markers.Location_ID) Is Null)) OR (((tbl_Markers.Marker_code) Is Null)) O"
    "R (((tbl_Markers.Marker_status) Is Null)) OR (((tbl_Markers.Marker_code)<>'None'"
    ") AND ((tbl_Markers.Marker_type) Is Null)) OR (((tbl_Markers.Marker_code)<>'None"
    "') AND ((tbl_Markers.Marker_installed) Is Null))"
Begin InputTables
    Name ="tbl_Markers"
End
Begin OutputColumns
    Expression ="tbl_Markers.Location_ID"
    Expression ="tbl_Markers.Marker_code"
    Expression ="tbl_Markers.Marker_status"
    Expression ="tbl_Markers.Marker_type"
    Expression ="tbl_Markers.Marker_installed"
    Expression ="tbl_Markers.Marker_removed"
    Expression ="tbl_Markers.Marker_notes"
    Expression ="tbl_Markers.Marker_substrate"
    Expression ="tbl_Markers.Height_cm"
    Expression ="tbl_Markers.Offset_dist_m"
    Expression ="tbl_Markers.Offset_azimuth"
    Expression ="tbl_Markers.Marker_updated"
    Expression ="tbl_Markers.Marker_ID"
    Alias ="varObject"
    Expression ="\"tbl_Markers\""
End
Begin OrderBy
    Expression ="tbl_Markers.Location_ID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing location ID, marker code, or marker status; or missing marker type or ma"
    "rker install date where marker_code <> 'None'"
dbBinary "GUID" = Begin
    0x93d3769c3ba45c419d23757aacd3deee
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Markers.Marker_notes"
        dbInteger "ColumnWidth" ="2670"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Markers.Location_ID"
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
        Left =48
        Top =7
        Right =171
        Bottom =144
        Top =0
        Name ="tbl_Markers"
        Name =""
    End
End
