Operation =3
Name ="tbl_Coordinates"
Option =0
Where ="(((Year([Start_date]))=[qxsub_Rare_bird_obs_along_transects].[Calendar_year]) AN"
    "D ((tbl_Locations.Location_type)<>'Incidental') AND ((qxsub_Rare_bird_obs_along_"
    "transects.Coord_ID) Is Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
    Name ="qxsub_Rare_bird_obs_along_transects"
End
Begin OutputColumns
    Name ="Event_ID"
    Expression ="qxsub_Rare_bird_obs_along_transects.Rare_event"
    Name ="Is_best"
    Expression ="tbl_Coordinates.Is_best"
    Name ="UTM_east"
    Expression ="tbl_Coordinates.UTM_east"
    Name ="UTM_north"
    Expression ="tbl_Coordinates.UTM_north"
    Name ="Coord_type"
    Expression ="tbl_Coordinates.Coord_type"
    Name ="Datum"
    Expression ="tbl_Coordinates.Datum"
    Name ="Est_horiz_error"
    Expression ="tbl_Coordinates.Est_horiz_error"
    Name ="Elevation_m"
    Expression ="tbl_Coordinates.Elevation_m"
    Name ="Slope_deg"
    Expression ="tbl_Coordinates.Slope_deg"
    Name ="Aspect_deg"
    Expression ="tbl_Coordinates.Aspect_deg"
    Name ="Coord_label"
    Expression ="tbl_Coordinates.Coord_label"
    Name ="Field_UTME"
    Expression ="tbl_Coordinates.Field_UTME"
    Name ="Field_UTMN"
    Expression ="tbl_Coordinates.Field_UTMN"
    Name ="Field_datum"
    Expression ="tbl_Coordinates.Field_datum"
    Name ="Field_horiz_error"
    Expression ="tbl_Coordinates.Field_horiz_error"
    Name ="Field_offset_m"
    Expression ="tbl_Coordinates.Field_offset_m"
    Name ="Field_offset_azimuth"
    Expression ="tbl_Coordinates.Field_offset_azimuth"
    Name ="Field_coord_source"
    Expression ="tbl_Coordinates.Field_coord_source"
    Name ="GPS_file_name"
    Expression ="tbl_Coordinates.GPS_file_name"
    Name ="GPS_model"
    Expression ="tbl_Coordinates.GPS_model"
    Name ="Source_citation"
    Expression ="tbl_Coordinates.Source_citation"
    Name ="Coordinate_notes"
    Expression ="tbl_Coordinates.Coordinate_notes"
    Name ="Coord_created_date"
    Expression ="tbl_Coordinates.Coord_created_date"
    Name ="Coord_updated"
    Expression ="tbl_Coordinates.Coord_updated"
    Name ="Coord_updated_by"
    Expression ="tbl_Coordinates.Coord_updated_by"
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
dbByte "RecordsetType" ="0"
dbText "Description" ="Appends coordinate records associated with transect events to rare bird obs made"
    " along transects where no coordinate record exists"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
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
    ColumnsShown =651
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
        Bottom =121
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
        Right =683
        Bottom =113
        Top =0
        Name ="qxsub_Rare_bird_obs_along_transects"
        Name =""
    End
End
