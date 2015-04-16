Operation =4
Option =0
Where ="(((qxsub_Coordinates_with_best_assigned.Location_ID) Is Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="qxsub_Coordinates_with_best_assigned"
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Name ="tbl_Coordinates.Is_best"
    Expression ="True"
    Name ="tbl_Coordinates.Coord_updated_by"
    Expression ="fxnUserName()"
    Name ="tbl_Coordinates.Coord_updated"
    Expression ="Now()"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qxsub_Coordinates_with_best_assigned"
    Expression ="tbl_Locations.Location_ID = qxsub_Coordinates_with_best_assigned.Location_ID"
    Flag =2
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Updates coordinate records to Is_best=TRUE; locs with multiple coordinates will "
    "have to be resolved in the next step"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="N_sample_years"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Last_year_sampled"
        dbInteger "ColumnWidth" ="1830"
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
        Left =169
        Top =8
        Right =289
        Bottom =145
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =319
        Top =7
        Right =415
        Bottom =69
        Top =0
        Name ="qxsub_Coordinates_with_best_assigned"
        Name =""
    End
    Begin
        Left =488
        Top =17
        Right =584
        Bottom =124
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =654
        Top =16
        Right =774
        Bottom =153
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
