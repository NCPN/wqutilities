Operation =1
Option =0
Where ="(((qsub_Species_observations_union.Park_code) In ('MORA','NOCA','OLYM')) AND ((t"
    "lu_Project_Taxa.Species_code)<>'NONE') AND ((qsub_Species_observations_union.Dat"
    "a_source)='Rare bird obs' Or (qsub_Species_observations_union.Data_source)='Poin"
    "t count'))"
Begin InputTables
    Name ="qsub_Species_observations_union"
    Name ="tlu_Project_Taxa"
    Name ="qsub_Species_obs_checklist_lg_parks_rare_only"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
End
Begin OutputColumns
    Expression ="qsub_Species_observations_union.Event_year"
    Alias ="Species"
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name) & IIf(IsNull(qsub_Species_obs_checklist_lg_parks_rare_o"
        "nly.Taxon_ID)=False,' *')"
    Expression ="tlu_Project_Taxa.Scientific_name"
End
Begin Joins
    LeftTable ="qsub_Species_observations_union"
    RightTable ="tlu_Project_Taxa"
    Expression ="qsub_Species_observations_union.Taxon_ID = tlu_Project_Taxa.Taxon_ID"
    Flag =1
    LeftTable ="qsub_Species_observations_union"
    RightTable ="qsub_Species_obs_checklist_lg_parks_rare_only"
    Expression ="qsub_Species_observations_union.Taxon_ID = qsub_Species_obs_checklist_lg_parks_r"
        "are_only.Taxon_ID"
    Flag =2
    LeftTable ="qsub_Species_observations_union"
    RightTable ="qsub_Species_obs_checklist_lg_parks_rare_only"
    Expression ="qsub_Species_observations_union.Event_year = qsub_Species_obs_checklist_lg_parks"
        "_rare_only.Event_year"
    Flag =2
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tlu_Project_Taxa_1"
    Expression ="tlu_Project_Taxa.Refers_to = tlu_Project_Taxa_1.Taxon_ID"
    Flag =2
End
Begin OrderBy
    Expression ="qsub_Species_observations_union.Event_year"
    Flag =1
    Expression ="tlu_Project_Taxa.IBP_number"
    Flag =0
End
Begin Groups
    Expression ="qsub_Species_observations_union.Event_year"
    GroupLevel =0
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name) & IIf(IsNull(qsub_Species_obs_checklist_lg_parks_rare_o"
        "nly.Taxon_ID)=False,' *')"
    GroupLevel =0
    Expression ="tlu_Project_Taxa.Scientific_name"
    GroupLevel =0
    Expression ="tlu_Project_Taxa.IBP_number"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Checklist of all species observed in the large parks, including species detected"
    " during point counts and rare bird detection forms.  Taxa seen only in rare bird"
    " observations are indicated with an asterisk."
Begin
    Begin
        dbText "Name" ="Species"
        dbInteger "ColumnWidth" ="2925"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =1154
    Bottom =750
    Left =-1
    Top =-1
    Right =1153
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="qsub_Species_observations_union"
        Name =""
    End
    Begin
        Left =370
        Top =11
        Right =466
        Bottom =118
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =209
        Top =3
        Right =329
        Bottom =80
        Top =0
        Name ="qsub_Species_obs_checklist_lg_parks_rare_only"
        Name =""
    End
    Begin
        Left =504
        Top =6
        Right =600
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa_1"
        Name =""
    End
End
