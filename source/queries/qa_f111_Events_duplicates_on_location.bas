Operation =1
Option =0
Having ="(((tbl_Locations.Park_code) In ('LEWI','SAJH')) AND ((tbl_Locations.Location_typ"
    "e)<>'Origin')) OR (((tbl_Locations.Park_code) Not In ('LEWI','SAJH')) AND ((tbl_"
    "Locations.Location_type)<>'Origin'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_multiple_location_revisits_per_year"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Habitat"
    Name ="tbl_Nesting_Obs"
    Name ="tbl_Observers"
    Name ="tbl_Point_Counts"
    Name ="tbl_Rare_Bird_Obs"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.Start_time"
    Alias ="N_observer_recs"
    Expression ="Count(tbl_Observers.Contact_ID)"
    Alias ="N_pt_count_recs"
    Expression ="Count(tbl_Point_Counts.Observation_ID)"
    Alias ="N_habitat_recs"
    Expression ="Count(tbl_Habitat.Habitat_num)"
    Alias ="N_nest_obs_recs"
    Expression ="Count(tbl_Nesting_Obs.Nest_obs_ID)"
    Alias ="N_rare_bird_recs"
    Expression ="Count(tbl_Rare_Bird_Obs.Rare_bird_obs_ID)"
    Expression ="qasub_Events_scope_filter.Surveyed_point"
    Alias ="FirstOfSurvey_comments"
    Expression ="First(qasub_Events_scope_filter.Survey_comments)"
    Expression ="qasub_Events_scope_filter.Site_data_updated"
    Expression ="qasub_Events_scope_filter.Coordinates_updated"
    Expression ="qasub_Events_scope_filter.Features_updated"
    Expression ="qasub_Events_scope_filter.Photos_taken"
    Expression ="qasub_Events_scope_filter.Markers_updated"
    Expression ="qasub_Events_scope_filter.Noise_level"
    Expression ="qasub_Events_scope_filter.Wind_cond"
    Expression ="qasub_Events_scope_filter.Precip_cond"
    Expression ="qasub_Events_scope_filter.Cloud_cover"
    Expression ="qasub_Events_scope_filter.Temp_C"
    Alias ="Misc_notes"
    Expression ="First(qasub_Events_scope_filter.Misc_obs)"
    Expression ="qasub_Events_scope_filter.Owl_call_made"
    Expression ="qasub_Events_scope_filter.Response_taxon"
    Alias ="Owl_call_notes"
    Expression ="First(qasub_Events_scope_filter.Owl_call_details)"
    Alias ="Notes"
    Expression ="First(qasub_Events_scope_filter.Event_notes)"
    Expression ="qasub_Events_scope_filter.Entered_date"
    Expression ="qasub_Events_scope_filter.Updated_by"
    Expression ="qasub_Events_scope_filter.Updated_date"
    Expression ="qasub_Events_scope_filter.Verified_by"
    Expression ="qasub_Events_scope_filter.Verified_date"
    Alias ="QA_comments"
    Expression ="First(qasub_Events_scope_filter.QA_notes)"
    Alias ="varObject"
    Expression ="First(\"frm_Data_Browser\")"
    Alias ="varFilter"
    Expression ="First(\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\")"
    Alias ="varArgs"
    Expression ="First(\"Location_ID\")"
    Expression ="qasub_Events_scope_filter.Event_ID"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_multiple_location_revisits_per_year"
    Expression ="tbl_Locations.Location_ID = qasub_Events_multiple_location_revisits_per_year.Loc"
        "ation_ID"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Habitat"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Habitat.Event_ID"
    Flag =2
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Nesting_Obs"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Nesting_Obs.Event_ID"
    Flag =2
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Observers"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Observers.Event_ID"
    Flag =2
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Point_Counts"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Point_Counts.Event_ID"
    Flag =2
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =2
    LeftTable ="qasub_Events_multiple_location_revisits_per_year"
    RightTable ="qasub_Events_scope_filter"
    Expression ="qasub_Events_multiple_location_revisits_per_year.Sample_year = qasub_Events_scop"
        "e_filter.Sample_year"
    Flag =1
    LeftTable ="qasub_Events_multiple_location_revisits_per_year"
    RightTable ="qasub_Events_scope_filter"
    Expression ="qasub_Events_multiple_location_revisits_per_year.Location_ID = qasub_Events_scop"
        "e_filter.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
Begin Groups
    Expression ="tbl_Locations.Park_code"
    GroupLevel =0
    Expression ="tbl_Sites.Site_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_type"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Start_date"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Start_time"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Surveyed_point"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Site_data_updated"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Coordinates_updated"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Features_updated"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Photos_taken"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Markers_updated"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Noise_level"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Wind_cond"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Precip_cond"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Cloud_cover"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Temp_C"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Owl_call_made"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Response_taxon"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Entered_date"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Updated_by"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Updated_date"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Verified_by"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Verified_date"
    GroupLevel =0
    Expression ="qasub_Events_scope_filter.Event_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbByte "RecordsetType" ="0"
dbText "Description" ="Locations that were visited multiple times in a sample year (except small park g"
    "rid origins and transect origins); also shows how many records exist in related "
    "tables"
dbBinary "GUID" = Begin
    0x1ef9861290779e41b12e30c3221c3256
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =369
    Left =-1
    Top =-1
    Right =1083
    Bottom =139
    Left =0
    Top =0
    ColumnsShown =543
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
        Left =301
        Top =10
        Right =403
        Bottom =102
        Top =0
        Name ="qasub_Events_multiple_location_revisits_per_year"
        Name =""
    End
    Begin
        Left =440
        Top =6
        Right =545
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =574
        Top =6
        Right =670
        Bottom =113
        Top =0
        Name ="tbl_Habitat"
        Name =""
    End
    Begin
        Left =708
        Top =6
        Right =804
        Bottom =113
        Top =0
        Name ="tbl_Nesting_Obs"
        Name =""
    End
    Begin
        Left =842
        Top =6
        Right =938
        Bottom =113
        Top =0
        Name ="tbl_Observers"
        Name =""
    End
    Begin
        Left =608
        Top =135
        Right =704
        Bottom =242
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
    Begin
        Left =707
        Top =134
        Right =803
        Bottom =241
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
End
