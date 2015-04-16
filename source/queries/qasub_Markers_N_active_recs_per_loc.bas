Operation =1
Option =0
Where ="(((tbl_Markers.Marker_code)<>'None') AND ((tbl_Markers.Marker_status)='Active'))"
Begin InputTables
    Name ="tbl_Markers"
End
Begin OutputColumns
    Expression ="tbl_Markers.Location_ID"
    Alias ="N_active_markers"
    Expression ="Count(tbl_Markers.Marker_ID)"
End
Begin Groups
    Expression ="tbl_Markers.Location_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Number of active markers per location, where marker code <> 'none'"
Begin
    Begin
        dbText "Name" ="N_active_markers"
        dbInteger "ColumnWidth" ="1680"
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
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Markers"
        Name =""
    End
End
