Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Markers_updated)=True) AND ((tbl_Markers.Marker_ID)"
    " Is Null)) OR (((qasub_Events_scope_filter.Markers_updated)=False) AND ((tbl_Mar"
    "kers.Marker_code) Is Null Or (tbl_Markers.Marker_code)<>'None') AND ((tbl_Marker"
    "s.Marker_ID) Is Not Null) AND ((Year([Marker_installed]))=Year([Start_date]))) O"
    "R (((qasub_Events_scope_filter.Markers_updated)=False) AND ((tbl_Markers.Marker_"
    "code) Is Null Or (tbl_Markers.Marker_code)<>'None') AND ((tbl_Markers.Marker_ID)"
    " Is Not Null) AND ((Year([Marker_updated]))=Year([Start_date]))) OR (((qasub_Eve"
    "nts_scope_filter.Markers_updated)=False) AND ((tbl_Markers.Marker_code) Is Null "
    "Or (tbl_Markers.Marker_code)<>'None') AND ((tbl_Markers.Marker_ID) Is Not Null) "
    "AND ((Year([Marker_removed]))=Year([Start_date])))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Markers"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.Markers_updated"
    Expression ="tbl_Markers.Marker_installed"
    Expression ="tbl_Markers.Marker_updated"
    Expression ="tbl_Markers.Marker_removed"
    Expression ="tbl_Markers.Marker_code"
    Expression ="tbl_Markers.Marker_type"
    Expression ="tbl_Markers.Marker_status"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
    Alias ="varAutoFix"
    Expression ="\"qasub_Update_events_inconsistent_marker_info\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Markers"
    Expression ="tbl_Locations.Location_ID = tbl_Markers.Location_ID"
    Flag =2
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
dbText "Description" ="Events at locs where Markers_updated=True but missing associated marker records;"
    " Markers_updated=False and having associated markers with installed, removed or "
    "updated dates in the same sample year as the sample date (except where Marker_co"
    "de='None')"
dbBinary "GUID" = Begin
    0x04fc9427d1f4f54d9fc635b3324315bd
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
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varAutoFix"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1043
    Bottom =688
    Left =-1
    Top =-1
    Right =1019
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
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
        Left =246
        Top =8
        Right =366
        Bottom =145
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =404
        Top =6
        Right =500
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =538
        Top =6
        Right =634
        Bottom =113
        Top =0
        Name ="tbl_Markers"
        Name =""
    End
End
