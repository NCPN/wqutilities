Operation =1
Option =0
Where ="(((qsub_Surveyed_point_coordinates_check_duplicates.Park_code) In (SELECT [Park_"
    "code] FROM [qsub_Surveyed_point_coordinates_check_duplicates] As Tmp GROUP BY [P"
    "ark_code],[Site_code],[Location_code] HAVING Count(*)>1  And [Site_code] = [qsub"
    "_Surveyed_point_coordinates_check_duplicates].[Site_code] And [Location_code] = "
    "[qsub_Surveyed_point_coordinates_check_duplicates].[Location_code])))"
Begin InputTables
    Name ="qsub_Surveyed_point_coordinates_check_duplicates"
End
Begin OutputColumns
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Event_year"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Park_code"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Site_code"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Location_code"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Location_type"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Start_date"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Is_best"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.UTM_east"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.UTM_north"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Coord_type"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Datum"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Est_horiz_error"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Target_UTME"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Target_UTMN"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Target_datum"
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Target_updated"
End
Begin OrderBy
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Event_year"
    Flag =1
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Park_code"
    Flag =0
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Site_code"
    Flag =0
    Expression ="qsub_Surveyed_point_coordinates_check_duplicates.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Duplicate records for the GIS output query on park, site code and loc code. Only"
    " transect origins should occasionally have duplicates from being sampled/complet"
    "ed across multple days. The year filter popup can be ignored if a year is select"
    "ed in the form."
dbBinary "GUID" = Begin
    0xce0484b326f9fa41bb007f4965c270f2
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates_check_duplicates.Event_year"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =392
    Right =1336
    Bottom =997
    Left =-1
    Top =-1
    Right =1266
    Bottom =105
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qsub_Surveyed_point_coordinates_check_duplicates"
        Name =""
    End
End
