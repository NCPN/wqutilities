Operation =1
Option =0
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Sites"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Rare_Bird_Obs"
    Name ="qasub_Locations_rare_bird_obs_duplicates"
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_name"
    Alias ="Feat_name"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([tb"
        "l_Locations].[Location_type]<>'Incidental',[tbl_Locations].[Location_code],IIf(I"
        "sNull([Site_code]),[tbl_Locations].[Location_code],IIf(IsNull([Rare_trans_pt]),'"
        "TO',[Rare_trans_pt])) & IIf([tbl_Locations].[Location_type]='Incidental','.' & ["
        "Species_code],''))"
    Alias ="Date_sampled"
    Expression ="Format([tbl_Events].[Start_date],\"yyyy mmm dd\")"
    Expression ="tbl_Locations.Location_type"
    Alias ="Species"
    Expression ="IIf([Taxon_is_active]=False,'x ','') & [Species_code] & \" - \" & [Pref_com_name"
        "]"
    Expression ="tbl_Rare_Bird_Obs.Obs_distance_m"
    Expression ="tbl_Rare_Bird_Obs.Group_size"
    Expression ="tbl_Rare_Bird_Obs.Nest_activity"
    Expression ="tbl_Rare_Bird_Obs.Rare_obs_notes"
    Alias ="varObject"
    Expression ="\"frm_Rare_Bird_Obs\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [tbl_Events].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Events.Event_ID = qasub_Events_scope_filter.Event_ID"
    Flag =1
    LeftTable ="qasub_Locations_rare_bird_obs_duplicates"
    RightTable ="tbl_Locations"
    Expression ="qasub_Locations_rare_bird_obs_duplicates.Park_code = tbl_Locations.Park_code"
    Flag =1
    LeftTable ="qasub_Locations_rare_bird_obs_duplicates"
    RightTable ="tbl_Locations"
    Expression ="qasub_Locations_rare_bird_obs_duplicates.Location_name = tbl_Locations.Location_"
        "name"
    Flag =1
    LeftTable ="qasub_Locations_rare_bird_obs_duplicates"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="qasub_Locations_rare_bird_obs_duplicates.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tbl_Events.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Locations.Location_name"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Locations.Location_type"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Potential duplicate entry - same park, location name, sample year and taxon"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="Feat_name"
        dbInteger "ColumnWidth" ="1710"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_name"
        dbInteger "ColumnWidth" ="3525"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1680
    Bottom =931
    Left =-1
    Top =-1
    Right =1673
    Bottom =209
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =182
        Top =5
        Right =301
        Bottom =157
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =454
        Top =11
        Right =574
        Bottom =118
        Top =1
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
    Begin
        Left =618
        Top =6
        Right =714
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =752
        Top =6
        Right =911
        Bottom =158
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =330
        Top =56
        Right =426
        Bottom =163
        Top =0
        Name ="qasub_Locations_rare_bird_obs_duplicates"
        Name =""
    End
    Begin
        Left =963
        Top =38
        Right =1059
        Bottom =145
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
