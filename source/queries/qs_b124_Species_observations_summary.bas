Operation =1
Option =0
Where ="(((qsub_Surveyed_point_coordinates.Location_type) Not In ('origin','incidental')"
    "))"
Begin InputTables
    Name ="qsub_Surveyed_point_coordinates"
    Name ="qsub_Species_observations_pt_counts"
End
Begin OutputColumns
    Expression ="qsub_Surveyed_point_coordinates.Event_year"
    Expression ="qsub_Surveyed_point_coordinates.Park_code"
    Expression ="qsub_Surveyed_point_coordinates.Site_code"
    Expression ="qsub_Surveyed_point_coordinates.Location_code"
    Expression ="qsub_Species_observations_pt_counts.Species"
    Expression ="qsub_Species_observations_pt_counts.Total_obs"
    Expression ="qsub_Species_observations_pt_counts.N_groups"
    Expression ="qsub_Species_observations_pt_counts.Sci_name"
    Expression ="qsub_Species_observations_pt_counts.Pref_com_name"
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
    RightTable ="qsub_Species_observations_pt_counts"
    Expression ="qsub_Surveyed_point_coordinates.Event_year = qsub_Species_observations_pt_counts"
        ".Event_year"
    Flag =1
    LeftTable ="qsub_Surveyed_point_coordinates"
    RightTable ="qsub_Species_observations_pt_counts"
    Expression ="qsub_Surveyed_point_coordinates.Park_code = qsub_Species_observations_pt_counts."
        "Park_code"
    Flag =1
    LeftTable ="qsub_Surveyed_point_coordinates"
    RightTable ="qsub_Species_observations_pt_counts"
    Expression ="qsub_Surveyed_point_coordinates.Location_ID = qsub_Species_observations_pt_count"
        "s.Location_ID"
    Flag =1
    LeftTable ="qsub_Surveyed_point_coordinates"
    RightTable ="qsub_Species_observations_pt_counts"
    Expression ="qsub_Surveyed_point_coordinates.Site_ID = qsub_Species_observations_pt_counts.Si"
        "te_ID"
    Flag =1
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
dbText "Description" ="A summarized list of species observations by year, park, site and location showi"
    "ng the total number of individuals and groups observed, where tbl_Point_Counts.P"
    "rev_observed=False. Note: may take some time to run unless filtering by park, si"
    "te, etc."
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xeeb40268dafa0947b8fe9438dedd41a9
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
    Begin
        dbText "Name" ="qsub_Species_observations_pt_counts.Total_obs"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Species_observations_pt_counts.N_groups"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Species_observations_pt_counts.Species"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Species_observations_pt_counts.Sci_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Species_observations_pt_counts.Pref_com_name"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1496
    Bottom =997
    Left =-1
    Top =-1
    Right =1464
    Bottom =227
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =21
        Top =7
        Right =207
        Bottom =194
        Top =0
        Name ="qsub_Surveyed_point_coordinates"
        Name =""
    End
    Begin
        Left =282
        Top =19
        Right =426
        Bottom =209
        Top =0
        Name ="qsub_Species_observations_pt_counts"
        Name =""
    End
End
