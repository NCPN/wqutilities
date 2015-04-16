Operation =1
Option =0
Where ="(((qsub_Loc_filters.Location_type)='Origin'))"
Begin InputTables
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="tbl_Target_Coords"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Expression ="qsub_Event_filters.Event_year"
    Expression ="qsub_Site_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Expression ="qsub_Loc_filters.Location_type"
    Expression ="qsub_Event_filters.Start_date"
    Expression ="qsub_Loc_filters.UTME_public"
    Expression ="qsub_Loc_filters.UTMN_public"
    Expression ="qsub_Loc_filters.Public_offset"
    Expression ="tbl_Coordinates.Is_best"
    Expression ="tbl_Coordinates.UTM_east"
    Expression ="tbl_Coordinates.UTM_north"
    Expression ="tbl_Coordinates.Coord_type"
    Expression ="tbl_Coordinates.Datum"
    Expression ="tbl_Coordinates.Est_horiz_error"
    Expression ="tbl_Target_Coords.Target_UTME"
    Expression ="tbl_Target_Coords.Target_UTMN"
    Expression ="tbl_Target_Coords.Target_datum"
    Expression ="tbl_Target_Coords.Target_updated"
    Expression ="qsub_Loc_filters.Site_ID"
    Expression ="qsub_Loc_filters.Location_ID"
End
Begin Joins
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =1
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Event_filters"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_ID"
    Flag =1
    LeftTable ="qsub_Loc_filters"
    RightTable ="tbl_Target_Coords"
    Expression ="qsub_Loc_filters.Location_ID = tbl_Target_Coords.Location_ID"
    Flag =2
    LeftTable ="qsub_Event_filters"
    RightTable ="tbl_Coordinates"
    Expression ="qsub_Event_filters.Event_ID = tbl_Coordinates.Event_ID"
    Flag =2
End
Begin OrderBy
    Expression ="qsub_Event_filters.Event_year"
    Flag =1
    Expression ="qsub_Site_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
    Expression ="qsub_Loc_filters.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="GIS output query for all sampled transect points"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =374
    Left =-1
    Top =-1
    Right =1083
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="qsub_Site_filters"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="qsub_Loc_filters"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="qsub_Event_filters"
        Name =""
    End
    Begin
        Left =604
        Top =6
        Right =700
        Bottom =113
        Top =0
        Name ="tbl_Target_Coords"
        Name =""
    End
    Begin
        Left =428
        Top =6
        Right =566
        Bottom =113
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
