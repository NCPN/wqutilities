Operation =1
Option =0
Begin InputTables
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="qsub_N_Coordinate_Recs"
    Name ="qsub_N_Habitat_Recs"
    Name ="qsub_N_Image_Recs"
    Name ="qsub_N_Nesting_Obs_Recs"
    Name ="qsub_N_Observer_Recs"
    Name ="qsub_N_Pt_Count_Recs"
    Name ="qsub_N_Rare_Bird_Obs_Recs"
End
Begin OutputColumns
    Expression ="qsub_Event_filters.Event_year"
    Expression ="qsub_Site_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Expression ="qsub_Event_filters.Start_date"
    Expression ="qsub_Event_filters.Start_time"
    Expression ="qsub_N_Coordinate_Recs.N_coord_recs"
    Expression ="qsub_N_Habitat_Recs.N_habitat_recs"
    Expression ="qsub_N_Image_Recs.N_image_recs"
    Expression ="qsub_N_Observer_Recs.N_observers"
    Expression ="qsub_N_Nesting_Obs_Recs.N_nesting_obs"
    Expression ="qsub_N_Rare_Bird_Obs_Recs.N_rare_obs"
    Expression ="qsub_N_Pt_Count_Recs.N_pt_count_recs"
    Expression ="qsub_Event_filters.Surveyed_point"
    Expression ="qsub_Event_filters.Survey_comments"
    Expression ="qsub_Event_filters.Site_data_updated"
    Expression ="qsub_Event_filters.Coordinates_updated"
    Expression ="qsub_Event_filters.Features_updated"
    Expression ="qsub_Event_filters.Photos_taken"
    Expression ="qsub_Event_filters.Habitat_data_taken"
    Expression ="qsub_Event_filters.Markers_updated"
    Expression ="qsub_Event_filters.Declination"
    Expression ="qsub_Event_filters.Noise_level"
    Expression ="qsub_Event_filters.Wind_cond"
    Expression ="qsub_Event_filters.Precip_cond"
    Expression ="qsub_Event_filters.Cloud_cover"
    Expression ="qsub_Event_filters.Temp_C"
    Expression ="qsub_Event_filters.Misc_obs"
    Expression ="qsub_Event_filters.Owl_call_made"
    Expression ="qsub_Event_filters.Response_taxon"
    Expression ="qsub_Event_filters.Owl_call_details"
    Expression ="qsub_Event_filters.Event_notes"
    Expression ="qsub_Event_filters.Entered_by"
    Expression ="qsub_Event_filters.Entered_date"
    Expression ="qsub_Event_filters.Updated_by"
    Expression ="qsub_Event_filters.Updated_date"
    Expression ="qsub_Event_filters.Verified_by"
    Expression ="qsub_Event_filters.Verified_date"
    Expression ="qsub_Event_filters.Certified_by"
    Expression ="qsub_Event_filters.Certified_date"
    Expression ="qsub_Event_filters.QA_notes"
    Expression ="qsub_Event_filters.Event_ID"
End
Begin Joins
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =1
    LeftTable ="qsub_Event_filters"
    RightTable ="qsub_N_Coordinate_Recs"
    Expression ="qsub_Event_filters.Event_ID = qsub_N_Coordinate_Recs.Event_ID"
    Flag =2
    LeftTable ="qsub_Event_filters"
    RightTable ="qsub_N_Habitat_Recs"
    Expression ="qsub_Event_filters.Event_ID = qsub_N_Habitat_Recs.Event_ID"
    Flag =2
    LeftTable ="qsub_Event_filters"
    RightTable ="qsub_N_Image_Recs"
    Expression ="qsub_Event_filters.Event_ID = qsub_N_Image_Recs.Event_ID"
    Flag =2
    LeftTable ="qsub_Event_filters"
    RightTable ="qsub_N_Nesting_Obs_Recs"
    Expression ="qsub_Event_filters.Event_ID = qsub_N_Nesting_Obs_Recs.Event_ID"
    Flag =2
    LeftTable ="qsub_Event_filters"
    RightTable ="qsub_N_Observer_Recs"
    Expression ="qsub_Event_filters.Event_ID = qsub_N_Observer_Recs.Event_ID"
    Flag =2
    LeftTable ="qsub_Event_filters"
    RightTable ="qsub_N_Pt_Count_Recs"
    Expression ="qsub_Event_filters.Event_ID = qsub_N_Pt_Count_Recs.Event_ID"
    Flag =2
    LeftTable ="qsub_Event_filters"
    RightTable ="qsub_N_Rare_Bird_Obs_Recs"
    Expression ="qsub_Event_filters.Event_ID = qsub_N_Rare_Bird_Obs_Recs.Event_ID"
    Flag =2
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Event_filters"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="qsub_Event_filters.Event_year"
    Flag =1
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
    Expression ="qsub_Loc_filters.Location_code"
    Flag =0
    Expression ="qsub_Event_filters.Start_date"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Returns the number of child records associated with sampling events matching a u"
    "ser-input year, park and transect code"
Begin
    Begin
        dbText "Name" ="qsub_N_Coordinate_Recs.N_coord_recs"
        dbInteger "ColumnWidth" ="1350"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_N_Habitat_Recs.N_habitat_recs"
        dbInteger "ColumnWidth" ="1440"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_N_Image_Recs.N_image_recs"
        dbInteger "ColumnWidth" ="1410"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_N_Observer_Recs.N_observers"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_N_Nesting_Obs_Recs.N_nesting_obs"
        dbInteger "ColumnWidth" ="1455"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_N_Rare_Bird_Obs_Recs.N_rare_obs"
        dbInteger "ColumnWidth" ="1170"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_N_Pt_Count_Recs.N_pt_count_recs"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_Event_filters.Event_year"
        dbInteger "ColumnWidth" ="1080"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =506
    Left =-1
    Top =-1
    Right =1083
    Bottom =276
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
        Left =399
        Top =6
        Right =495
        Bottom =83
        Top =0
        Name ="qsub_N_Coordinate_Recs"
        Name =""
    End
    Begin
        Left =533
        Top =6
        Right =629
        Bottom =83
        Top =0
        Name ="qsub_N_Habitat_Recs"
        Name =""
    End
    Begin
        Left =667
        Top =6
        Right =763
        Bottom =83
        Top =0
        Name ="qsub_N_Image_Recs"
        Name =""
    End
    Begin
        Left =801
        Top =6
        Right =897
        Bottom =83
        Top =0
        Name ="qsub_N_Nesting_Obs_Recs"
        Name =""
    End
    Begin
        Left =935
        Top =6
        Right =1031
        Bottom =83
        Top =0
        Name ="qsub_N_Observer_Recs"
        Name =""
    End
    Begin
        Left =38
        Top =120
        Right =134
        Bottom =197
        Top =0
        Name ="qsub_N_Pt_Count_Recs"
        Name =""
    End
    Begin
        Left =172
        Top =120
        Right =268
        Bottom =197
        Top =0
        Name ="qsub_N_Rare_Bird_Obs_Recs"
        Name =""
    End
End
