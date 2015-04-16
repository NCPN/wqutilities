Operation =1
Option =0
Where ="(((qsub_Surveyed_point_coordinates.Location_type) Not In ('origin','incidental')"
    "))"
Begin InputTables
    Name ="qsub_Surveyed_point_coordinates"
    Name ="qsub_Species_presence_query"
End
Begin OutputColumns
    Expression ="qsub_Surveyed_point_coordinates.Event_year"
    Expression ="qsub_Surveyed_point_coordinates.Park_code"
    Expression ="qsub_Surveyed_point_coordinates.Site_code"
    Expression ="qsub_Surveyed_point_coordinates.Location_code"
    Alias ="Present"
    Expression ="IIf(IsNull([Species]),'N','Y')"
    Expression ="qsub_Species_presence_query.Species"
    Expression ="qsub_Species_presence_query.Total_obs"
    Expression ="qsub_Species_presence_query.N_groups"
    Expression ="qsub_Surveyed_point_coordinates.UTME_public"
    Expression ="qsub_Surveyed_point_coordinates.UTMN_public"
    Expression ="qsub_Surveyed_point_coordinates.Public_offset"
    Expression ="qsub_Surveyed_point_coordinates.UTM_east"
    Expression ="qsub_Surveyed_point_coordinates.UTM_north"
    Expression ="qsub_Surveyed_point_coordinates.Coord_type"
    Expression ="qsub_Surveyed_point_coordinates.Datum"
    Expression ="qsub_Surveyed_point_coordinates.Est_horiz_error"
    Expression ="qsub_Surveyed_point_coordinates.Target_UTME"
    Expression ="qsub_Surveyed_point_coordinates.Target_UTMN"
    Expression ="qsub_Surveyed_point_coordinates.Target_datum"
    Expression ="qsub_Surveyed_point_coordinates.Target_updated"
End
Begin Joins
    LeftTable ="qsub_Surveyed_point_coordinates"
    RightTable ="qsub_Species_presence_query"
    Expression ="qsub_Surveyed_point_coordinates.Event_year = qsub_Species_presence_query.Event_y"
        "ear"
    Flag =2
    LeftTable ="qsub_Surveyed_point_coordinates"
    RightTable ="qsub_Species_presence_query"
    Expression ="qsub_Surveyed_point_coordinates.Site_ID = qsub_Species_presence_query.Site_ID"
    Flag =2
    LeftTable ="qsub_Surveyed_point_coordinates"
    RightTable ="qsub_Species_presence_query"
    Expression ="qsub_Surveyed_point_coordinates.Location_ID = qsub_Species_presence_query.Locati"
        "on_ID"
    Flag =2
End
Begin OrderBy
    Expression ="qsub_Surveyed_point_coordinates.Event_year"
    Flag =1
    Expression ="qsub_Surveyed_point_coordinates.Site_code"
    Flag =0
    Expression ="qsub_Surveyed_point_coordinates.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="For a given species, returns the list of sample points for a given park/year and"
    " whether or not the species was observed. Where tbl_Point_Counts.Prev_observed=F"
    "alse."
dbBinary "GUID" = Begin
    0x6bcd327e14410e4086d18d53bcf62e57
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Event_year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Species_presence_query.Total_obs"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_Species_presence_query.N_groups"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Site_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Location_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Present"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Species_presence_query.Species"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.UTME_public"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.UTMN_public"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Public_offset"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.UTM_east"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.UTM_north"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Coord_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Datum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Est_horiz_error"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Target_UTME"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Target_UTMN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Target_datum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Surveyed_point_coordinates.Target_updated"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =232
    Top =84
    Right =1054
    Bottom =766
    Left =0
    Top =0
    Right =0
    Bottom =0
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =21
        Top =7
        Right =207
        Bottom =114
        Top =0
        Name ="qsub_Surveyed_point_coordinates"
        Name =""
    End
    Begin
        Left =279
        Top =7
        Right =498
        Bottom =114
        Top =0
        Name ="qsub_Species_presence_query"
        Name =""
    End
End
