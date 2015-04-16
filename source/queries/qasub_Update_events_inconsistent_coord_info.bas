Operation =4
Option =8
Where ="(((qasub_Events_scope_filter.Coordinates_updated)=True) AND ((tbl_Coordinates.Ev"
    "ent_ID) Is Null)) OR (((qasub_Events_scope_filter.Coordinates_updated)=False) AN"
    "D ((tbl_Coordinates.Event_ID) Is Not Null))"
Begin InputTables
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Name ="qasub_Events_scope_filter.Coordinates_updated"
    Expression ="Not [Coordinates_updated]"
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Coordinates"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Coordinates.Event_ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Updates tbl_Events.Coordinates_updated from False to True if coordinate records "
    "exist, or from True to False if no event coordinates exist"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
Begin
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Coordinates_updated"
        dbInteger "ColumnWidth" ="1980"
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
    ColumnsShown =579
    Begin
        Left =285
        Top =6
        Right =381
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =419
        Top =6
        Right =515
        Bottom =113
        Top =20
        Name ="tbl_Coordinates"
        Name =""
    End
End
