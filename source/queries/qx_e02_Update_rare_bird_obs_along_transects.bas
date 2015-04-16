Operation =4
Option =0
Where ="(((qxsub_Rare_bird_obs_along_transects.UTM_east) Is Null) AND ((qxsub_Rare_bird_"
    "obs_along_transects.UTM_north) Is Null) AND ((Year([Start_date]))=[qxsub_Rare_bi"
    "rd_obs_along_transects].[Calendar_year]) AND ((tbl_Locations.Location_type)<>'In"
    "cidental') AND ((qxsub_Rare_bird_obs_along_transects.Coord_ID) Is Not Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
    Name ="qxsub_Rare_bird_obs_along_transects"
End
Begin OutputColumns
    Name ="qxsub_Rare_bird_obs_along_transects.UTM_east"
    Expression ="[tbl_Coordinates].[UTM_east]"
    Name ="qxsub_Rare_bird_obs_along_transects.UTM_north"
    Expression ="[tbl_Coordinates].[UTM_north]"
    Name ="qxsub_Rare_bird_obs_along_transects.Datum"
    Expression ="[tbl_Coordinates].[Datum]"
    Name ="qxsub_Rare_bird_obs_along_transects.Coord_type"
    Expression ="[tbl_Coordinates].[Coord_type]"
    Name ="qxsub_Rare_bird_obs_along_transects.Est_horiz_error"
    Expression ="[tbl_Coordinates].[Est_horiz_error]"
    Name ="qxsub_Rare_bird_obs_along_transects.Coord_updated"
    Expression ="Now()"
    Name ="qxsub_Rare_bird_obs_along_transects.Coord_updated_by"
    Expression ="fxnUserName()"
End
Begin Joins
    LeftTable ="qxsub_Rare_bird_obs_along_transects"
    RightTable ="tbl_Sites"
    Expression ="qxsub_Rare_bird_obs_along_transects.Site_code = tbl_Sites.Site_code"
    Flag =1
    LeftTable ="qxsub_Rare_bird_obs_along_transects"
    RightTable ="tbl_Locations"
    Expression ="qxsub_Rare_bird_obs_along_transects.Loc_code = tbl_Locations.Location_code"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="qxsub_Rare_bird_obs_along_transects"
    Expression ="tbl_Events.Start_date = qxsub_Rare_bird_obs_along_transects.Sample_date"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbText "Description" ="Updates coordinate records associated with rare bird obs along transects with th"
    "e final UTMs from the associated transect coordinate record"
dbByte "Orientation" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FailOnError" ="0"
Begin
    Begin
        dbText "Name" ="Best_is_different"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Datum_is_different"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Type_is_different"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Difference_m"
        dbText "Format" ="Fixed"
        dbByte "DecimalPlaces" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1658
    Bottom =374
    Left =-1
    Top =-1
    Right =1611
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =579
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
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =120
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =453
        Top =8
        Right =549
        Bottom =115
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =587
        Top =6
        Right =856
        Bottom =113
        Top =0
        Name ="qxsub_Rare_bird_obs_along_transects"
        Name =""
    End
End
