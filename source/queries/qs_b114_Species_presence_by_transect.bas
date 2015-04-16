Operation =1
Option =0
Begin InputTables
    Name ="qsub_Surveyed_site_coordinates"
    Name ="qsub_Species_presence_query"
End
Begin OutputColumns
    Expression ="qsub_Surveyed_site_coordinates.Event_year"
    Expression ="qsub_Surveyed_site_coordinates.Park_code"
    Expression ="qsub_Surveyed_site_coordinates.Site_code"
    Alias ="Present"
    Expression ="IIf(IsNull([Species]),'N','Y')"
    Expression ="qsub_Species_presence_query.Species"
    Alias ="Total_obs"
    Expression ="Sum(qsub_Species_presence_query.Total_obs)"
    Alias ="N_groups"
    Expression ="Sum(qsub_Species_presence_query.N_groups)"
    Alias ="N_points"
    Expression ="Count(qsub_Species_presence_query.Location_ID)"
    Expression ="qsub_Surveyed_site_coordinates.UTME_public"
    Expression ="qsub_Surveyed_site_coordinates.UTMN_public"
    Expression ="qsub_Surveyed_site_coordinates.Public_offset"
    Expression ="qsub_Surveyed_site_coordinates.UTM_east"
    Expression ="qsub_Surveyed_site_coordinates.UTM_north"
    Expression ="qsub_Surveyed_site_coordinates.Coord_type"
    Expression ="qsub_Surveyed_site_coordinates.Datum"
    Expression ="qsub_Surveyed_site_coordinates.Est_horiz_error"
    Expression ="qsub_Surveyed_site_coordinates.Target_UTME"
    Expression ="qsub_Surveyed_site_coordinates.Target_UTMN"
    Expression ="qsub_Surveyed_site_coordinates.Target_datum"
    Expression ="qsub_Surveyed_site_coordinates.Target_updated"
End
Begin Joins
    LeftTable ="qsub_Surveyed_site_coordinates"
    RightTable ="qsub_Species_presence_query"
    Expression ="qsub_Surveyed_site_coordinates.Event_year = qsub_Species_presence_query.Event_ye"
        "ar"
    Flag =2
    LeftTable ="qsub_Surveyed_site_coordinates"
    RightTable ="qsub_Species_presence_query"
    Expression ="qsub_Surveyed_site_coordinates.Site_ID = qsub_Species_presence_query.Site_ID"
    Flag =2
End
Begin OrderBy
    Expression ="qsub_Surveyed_site_coordinates.Event_year"
    Flag =1
    Expression ="qsub_Surveyed_site_coordinates.Site_code"
    Flag =0
End
Begin Groups
    Expression ="qsub_Surveyed_site_coordinates.Event_year"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Park_code"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Site_code"
    GroupLevel =0
    Expression ="IIf(IsNull([Species]),'N','Y')"
    GroupLevel =0
    Expression ="qsub_Species_presence_query.Species"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.UTME_public"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.UTMN_public"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Public_offset"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.UTM_east"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.UTM_north"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Coord_type"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Datum"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Est_horiz_error"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Target_UTME"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Target_UTMN"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Target_datum"
    GroupLevel =0
    Expression ="qsub_Surveyed_site_coordinates.Target_updated"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="For a given species, returns the list of transects for a given park/year and whe"
    "ther or not the species was observed. Where tbl_Point_Counts.Prev_observed=False"
    "."
dbBinary "GUID" = Begin
    0x44bf8a7f263ba44fb1c90a6ed932c1df
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qsub_Surveyed_site_coordinates.Event_year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Total_obs"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x804b3d0374c1310060c13100d0b49203
        End
    End
    Begin
        dbText "Name" ="N_groups"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =84
    Top =236
    Right =1152
    Bottom =740
    Left =-1
    Top =-1
    Right =1036
    Bottom =127
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =31
        Top =8
        Right =245
        Bottom =115
        Top =0
        Name ="qsub_Surveyed_site_coordinates"
        Name =""
    End
    Begin
        Left =291
        Top =5
        Right =494
        Bottom =112
        Top =0
        Name ="qsub_Species_presence_query"
        Name =""
    End
End
