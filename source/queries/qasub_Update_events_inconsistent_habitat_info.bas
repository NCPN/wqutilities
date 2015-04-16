Operation =4
Option =8
Where ="(((qasub_Events_scope_filter.Habitat_data_taken)=True) AND ((tbl_Habitat.Event_I"
    "D) Is Null)) OR (((qasub_Events_scope_filter.Habitat_data_taken)=False) AND ((tb"
    "l_Habitat.Event_ID) Is Not Null))"
Begin InputTables
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Habitat"
End
Begin OutputColumns
    Name ="qasub_Events_scope_filter.Habitat_data_taken"
    Expression ="Not [Habitat_data_taken]"
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Habitat"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Habitat.Event_ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Updates tbl_Events.Habitat_data_taken from False to True if habitat records exis"
    "t, or from True to False if no habitat records exist"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
Begin
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Habitat_data_taken"
        dbInteger "ColumnWidth" ="1785"
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
        Left =414
        Top =8
        Right =534
        Bottom =145
        Top =0
        Name ="tbl_Habitat"
        Name =""
    End
End
