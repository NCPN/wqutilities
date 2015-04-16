Operation =1
Option =0
Where ="(((tbl_Markers.Marker_status)<>'Removed'))"
Begin InputTables
    Name ="tbl_Markers"
End
Begin OutputColumns
    Expression ="tbl_Markers.Marker_code"
    Expression ="tbl_Markers.Marker_type"
    Expression ="tbl_Markers.Marker_substrate"
    Expression ="tbl_Markers.Height_cm"
    Expression ="tbl_Markers.Offset_dist_m"
    Expression ="tbl_Markers.Offset_azimuth"
    Expression ="tbl_Markers.Marker_status"
    Expression ="tbl_Markers.Marker_notes"
    Expression ="tbl_Markers.Marker_installed"
    Expression ="tbl_Markers.Location_ID"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Subquery showing location markers for the navigation report"
Begin
    Begin
        dbText "Name" ="tbl_Markers.Marker_notes"
        dbInteger "ColumnWidth" ="18036"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Markers.Marker_installed"
        dbInteger "ColumnWidth" ="1560"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =216
        Top =7
        Right =336
        Bottom =144
        Top =0
        Name ="tbl_Markers"
        Name =""
    End
End
