Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Species_code)<>'NONE') AND ((tbl_Point_Counts.Prev_observed)"
    "=False))"
Having ="(((qsub_Loc_filters.Park_code) Not In ('MORA','NOCA','OLYM')))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Expression ="qsub_Event_filters.Event_year"
    Expression ="qsub_Loc_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Alias ="Species"
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name)"
    Expression ="tlu_Project_Taxa.IBP_number"
    Alias ="N_individuals"
    Expression ="Sum(tbl_Point_Counts.Group_size)"
End
Begin Joins
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tlu_Project_Taxa_1"
    Expression ="tlu_Project_Taxa.Refers_to = tlu_Project_Taxa_1.Taxon_ID"
    Flag =2
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =1
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Event_filters"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_ID"
    Flag =1
    LeftTable ="qsub_Event_filters"
    RightTable ="tbl_Point_Counts"
    Expression ="qsub_Event_filters.Event_ID = tbl_Point_Counts.Event_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Point_Counts"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Point_Counts.Taxon_ID"
    Flag =1
End
Begin Groups
    Expression ="qsub_Event_filters.Event_year"
    GroupLevel =0
    Expression ="qsub_Loc_filters.Park_code"
    GroupLevel =0
    Expression ="qsub_Site_filters.Site_code"
    GroupLevel =0
    Expression ="qsub_Loc_filters.Location_code"
    GroupLevel =0
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name)"
    GroupLevel =0
    Expression ="tlu_Project_Taxa.IBP_number"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Point count data for small parks"
Begin
    Begin
        dbText "Name" ="Event_year"
        dbBinary "GUID" = Begin
            0x9f7b92c1cb463643a5d3f6d829814b08
        End
    End
    Begin
        dbText "Name" ="N_individuals"
        dbBinary "GUID" = Begin
            0x910deb7e1ea82a428e636b403f244be9
        End
    End
    Begin
        dbText "Name" ="Species"
        dbBinary "GUID" = Begin
            0xd547952616bfbd4abd8748157b088f91
        End
    End
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
    ColumnsShown =543
    Begin
        Left =577
        Top =6
        Right =673
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =699
        Top =6
        Right =795
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa_1"
        Name =""
    End
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
        Left =446
        Top =9
        Right =542
        Bottom =116
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
