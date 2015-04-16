Operation =1
Option =0
Where ="(((tbl_Markers.Marker_removed)<[Marker_installed])) OR (((tbl_Markers.Marker_upd"
    "ated)<[Marker_installed]))"
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
    Expression ="tbl_Markers.Marker_installed"
    Expression ="tbl_Markers.Marker_updated"
    Expression ="tbl_Markers.Marker_removed"
    Expression ="tbl_Markers.Marker_ID"
    Alias ="varObject"
    Expression ="\"tbl_Markers\""
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
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Marker updated or marker removed date before marker installed date"
Begin
End
Begin
    State =0
    Left =32
    Top =37
    Right =1105
    Bottom =385
    Left =-1
    Top =-1
    Right =1066
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =409
        Top =9
        Right =558
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
