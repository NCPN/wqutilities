Operation =4
Option =8
Where ="(((qasub_Events_scope_filter.Features_updated)=False) AND ((tbl_Features.Feature"
    "_ID) Is Not Null)) OR (((qasub_Events_scope_filter.Features_updated)=True) AND ("
    "(tbl_Features.Feature_ID) Is Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Features"
End
Begin OutputColumns
    Name ="qasub_Events_scope_filter.Features_updated"
    Expression ="Not [Features_updated]"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Features"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Features.Event_ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Updates tbl_Events.Features_updated from False to True if one or more feature re"
    "cords was updated in the same calendar year as the sampling event; or from True "
    "to False if no feature records exist"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Events.Features_updated"
        dbInteger "ColumnWidth" ="1716"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =410
    Left =-1
    Top =-1
    Right =1083
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
        Right =558
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =599
        Top =16
        Right =713
        Bottom =153
        Top =0
        Name ="tbl_Features"
        Name =""
    End
End
