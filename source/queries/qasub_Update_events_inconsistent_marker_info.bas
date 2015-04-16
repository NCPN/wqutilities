Operation =4
Option =8
Where ="(((qasub_Events_scope_filter.Markers_updated)=True) AND ((tbl_Markers.Marker_ID)"
    " Is Null)) OR (((qasub_Events_scope_filter.Markers_updated)=False) AND ((tbl_Mar"
    "kers.Marker_ID) Is Not Null) AND ((Year([Marker_installed]))=Year([Start_date]))"
    ") OR (((qasub_Events_scope_filter.Markers_updated)=False) AND ((tbl_Markers.Mark"
    "er_ID) Is Not Null) AND ((Year([Marker_updated]))=Year([Start_date]))) OR (((qas"
    "ub_Events_scope_filter.Markers_updated)=False) AND ((tbl_Markers.Marker_ID) Is N"
    "ot Null) AND ((Year([Marker_removed]))=Year([Start_date])))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Markers"
End
Begin OutputColumns
    Name ="qasub_Events_scope_filter.Markers_updated"
    Expression ="Not [Markers_updated]"
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
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Updates tbl_Events.Markers_updated from False to True if one or more marker reco"
    "rds was installed, removed, or otherwise updated in the same calendar year as th"
    "e sampling event; or from True to False if no marker records exist"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
Begin
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
    ColumnsShown =579
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
