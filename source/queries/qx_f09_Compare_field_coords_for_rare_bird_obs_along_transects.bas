Operation =1
Option =0
Where ="(((qxsub_Rare_bird_obs_along_transects.Coord_type) In ('Field','Target')) AND (("
    "tbl_Locations.Location_type)<>'Incidental')) OR (((tbl_Coordinates.Coord_type) I"
    "n ('Field','Target')) AND ((tbl_Locations.Location_type)<>'Incidental'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
    Name ="qxsub_Rare_bird_obs_along_transects"
End
Begin OutputColumns
    Alias ="Calendar_year"
    Expression ="Year([Start_date])"
    Expression ="tbl_Locations.Park_code"
    Alias ="Transect_loc"
    Expression ="[tbl_Sites].[Site_code] & '.' & [Location_code]"
    Expression ="qxsub_Rare_bird_obs_along_transects.Feat_name"
    Alias ="Date_sampled"
    Expression ="Format([Start_date],\"yyyy mmm dd\")"
    Alias ="Difference_m"
    Expression ="Sqr((Nz([X_diff]*[X_diff]))+(Nz([Y_diff]*[Y_diff])))"
    Expression ="tbl_Coordinates.Field_UTME"
    Alias ="Rare_UTME"
    Expression ="qxsub_Rare_bird_obs_along_transects.Field_UTME"
    Expression ="tbl_Coordinates.Field_UTMN"
    Alias ="Rare_UTMN"
    Expression ="qxsub_Rare_bird_obs_along_transects.Field_UTMN"
    Alias ="Type_is_different"
    Expression ="IIf([Rare_type]<>[tbl_Coordinates].[Coord_type],'Yes')"
    Expression ="tbl_Coordinates.Coord_type"
    Alias ="Rare_type"
    Expression ="qxsub_Rare_bird_obs_along_transects.Coord_type"
    Alias ="Datum_is_different"
    Expression ="IIf([Rare_datum]<>[tbl_Coordinates].[Datum],'Yes')"
    Expression ="tbl_Coordinates.Field_datum"
    Alias ="Rare_datum"
    Expression ="qxsub_Rare_bird_obs_along_transects.Field_datum"
    Alias ="X_diff"
    Expression ="[tbl_Coordinates].[Field_UTME]-[Rare_UTME]"
    Alias ="Y_diff"
    Expression ="[tbl_Coordinates].[Field_UTMN]-[Rare_UTMN]"
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
    LeftTable ="qxsub_Rare_bird_obs_along_transects"
    RightTable ="tbl_Events"
    Expression ="qxsub_Rare_bird_obs_along_transects.Sample_date = tbl_Events.Start_date"
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
    Flag =2
End
Begin OrderBy
    Expression ="Year([Start_date])"
    Flag =1
    Expression ="tbl_Locations.Park_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Comparison of field coordinates for rare bird observations along transects with "
    "the matching transect record"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="Datum_is_different"
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
    State =2
    Left =-6
    Top =-25
    Right =1682
    Bottom =936
    Left =-1
    Top =-1
    Right =1681
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
        Bottom =113
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
        Right =840
        Bottom =113
        Top =0
        Name ="qxsub_Rare_bird_obs_along_transects"
        Name =""
    End
End
