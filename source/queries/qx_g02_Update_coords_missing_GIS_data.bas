Operation =4
Option =0
Where ="(((tbl_Coordinates.Elevation_m) Is Null) AND ((tbl_Coordinates.UTM_east) Is Not "
    "Null)) OR (((tbl_Coordinates.Slope_deg) Is Null) AND ((tbl_Coordinates.UTM_east)"
    " Is Not Null)) OR (((tbl_Coordinates.Aspect_deg) Is Null) AND ((tbl_Coordinates."
    "UTM_east) Is Not Null))"
Begin InputTables
    Name ="tbl_Coordinates"
    Name ="tmp_Coordinate_GIS_Data"
End
Begin OutputColumns
    Name ="tbl_Coordinates.Elevation_m"
    Expression ="[tmp_Coordinate_GIS_Data].[Elevation_m]"
    Name ="tbl_Coordinates.Slope_deg"
    Expression ="[tmp_Coordinate_GIS_Data].[Slope_deg]"
    Name ="tbl_Coordinates.Aspect_deg"
    Expression ="[tmp_Coordinate_GIS_Data].[Aspect_deg]"
    Name ="tbl_Coordinates.Coord_updated_by"
    Expression ="fxnUserName()"
    Name ="tbl_Coordinates.Coord_updated"
    Expression ="Now()"
End
Begin Joins
    LeftTable ="tbl_Coordinates"
    RightTable ="tmp_Coordinate_GIS_Data"
    Expression ="tbl_Coordinates.Coord_ID = tmp_Coordinate_GIS_Data.Coord_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbText "Description" ="Updates coordinate records missing environmental data (elevation, slope, aspect)"
    " with GIS data loaded to the temporary table"
Begin
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
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tmp_Coordinate_GIS_Data"
        Name =""
    End
End
