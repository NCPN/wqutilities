Operation =1
Option =0
Where ="(((qsub_Species_obs_checklist_lg_parks_pt_counts.Taxon_ID) Is Null))"
Begin InputTables
    Name ="qsub_Species_obs_checklist_lg_parks_pt_counts"
    Name ="qsub_Species_obs_checklist_lg_parks_rare_obs"
End
Begin OutputColumns
    Expression ="qsub_Species_obs_checklist_lg_parks_rare_obs.Event_year"
    Expression ="qsub_Species_obs_checklist_lg_parks_rare_obs.Taxon_ID"
End
Begin Joins
    LeftTable ="qsub_Species_obs_checklist_lg_parks_pt_counts"
    RightTable ="qsub_Species_obs_checklist_lg_parks_rare_obs"
    Expression ="qsub_Species_obs_checklist_lg_parks_pt_counts.Event_year=qsub_Species_obs_checkl"
        "ist_lg_parks_rare_obs.Event_year"
    Flag =3
    LeftTable ="qsub_Species_obs_checklist_lg_parks_pt_counts"
    RightTable ="qsub_Species_obs_checklist_lg_parks_rare_obs"
    Expression ="qsub_Species_obs_checklist_lg_parks_pt_counts.Taxon_ID=qsub_Species_obs_checklis"
        "t_lg_parks_rare_obs.Taxon_ID"
    Flag =3
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Species observed only as rare bird observations in a given year and not in point"
    " counts, at large parks"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =374
    Left =-1
    Top =-1
    Right =1083
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =83
        Top =0
        Name ="qsub_Species_obs_checklist_lg_parks_pt_counts"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =83
        Top =0
        Name ="qsub_Species_obs_checklist_lg_parks_rare_obs"
        Name =""
    End
End
