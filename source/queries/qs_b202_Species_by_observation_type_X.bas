Operation =6
Option =0
Where ="(((qsub_Species_observations_union_no_filters.Species_code)<>'NONE'))"
Begin InputTables
    Name ="qsub_Species_observations_union_no_filters"
    Name ="tlu_Project_Taxa"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
End
Begin OutputColumns
    Alias ="Species"
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name)"
    GroupLevel =2
    Expression ="qsub_Species_observations_union_no_filters.Event_year"
    GroupLevel =2
    Expression ="qsub_Species_observations_union_no_filters.Park_code"
    GroupLevel =2
    Expression ="qsub_Species_observations_union_no_filters.Data_source"
    GroupLevel =1
    Alias ="N_records"
    Expression ="Count(qsub_Species_observations_union_no_filters.Taxon_ID)"
End
Begin Joins
    LeftTable ="qsub_Species_observations_union_no_filters"
    RightTable ="tlu_Project_Taxa"
    Expression ="qsub_Species_observations_union_no_filters.Taxon_ID = tlu_Project_Taxa.Taxon_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tlu_Project_Taxa_1"
    Expression ="tlu_Project_Taxa.Refers_to = tlu_Project_Taxa_1.Taxon_ID"
    Flag =2
End
Begin OrderBy
    Expression ="qsub_Species_observations_union_no_filters.Event_year"
    Flag =1
    Expression ="qsub_Species_observations_union_no_filters.Park_code"
    Flag =0
    Expression ="tlu_Project_Taxa.IBP_number"
    Flag =0
    Expression ="qsub_Species_observations_union_no_filters.Data_source"
    Flag =0
End
Begin Groups
    Expression ="tlu_Project_Taxa.IBP_number"
    GroupLevel =2
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name)"
    GroupLevel =2
    Expression ="qsub_Species_observations_union_no_filters.Event_year"
    GroupLevel =2
    Expression ="qsub_Species_observations_union_no_filters.Park_code"
    GroupLevel =2
    Expression ="qsub_Species_observations_union_no_filters.Data_source"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Matrix of species observations by park and observation type, by year"
dbBoolean "OrderByOn" ="0"
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
    ColumnsShown =559
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="qsub_Species_observations_union_no_filters"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa_1"
        Name =""
    End
End
