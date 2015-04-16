Operation =1
Option =0
Where ="(((tbl_Coordinates.UTM_east) Is Not Null) AND ((tbl_Coordinates.Elevation_m) Is "
    "Null)) OR (((tbl_Coordinates.UTM_east) Is Not Null) AND ((tbl_Coordinates.Slope_"
    "deg) Is Null)) OR (((tbl_Coordinates.UTM_east) Is Not Null) AND ((tbl_Coordinate"
    "s.Aspect_deg) Is Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Coordinates"
    Name ="tbl_Events"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Coordinates.Coord_ID"
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Sites].[Site_code])=False,[Site_code] & '.','') & [Location_code"
        "]"
    Expression ="tbl_Coordinates.UTM_east"
    Expression ="tbl_Coordinates.UTM_north"
    Expression ="tbl_Coordinates.Datum"
    Expression ="tbl_Coordinates.Elevation_m"
    Expression ="tbl_Coordinates.Slope_deg"
    Expression ="tbl_Coordinates.Aspect_deg"
    Expression ="tbl_Coordinates.Coord_updated"
    Expression ="tbl_Coordinates.Coord_updated_by"
    Expression ="tbl_Coordinates.Coordinate_notes"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
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
dbText "Description" ="Coordinate records that need to have environmental data (elevation, slope, aspec"
    "t) sampled from the GIS"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="tbl_Coordinates.Coord_ID"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =70
    Top =133
    Right =953
    Bottom =482
    Left =-1
    Top =-1
    Right =876
    Bottom =204
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =190
        Top =15
        Right =286
        Bottom =122
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =480
        Top =8
        Right =600
        Bottom =115
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =339
        Top =11
        Right =435
        Bottom =118
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
