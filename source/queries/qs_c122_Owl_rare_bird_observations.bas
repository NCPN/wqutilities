Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Species_code)=\"BADO\" Or (tlu_Project_Taxa.Species_code)=\""
    "SPOW\"))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="tbl_Rare_Bird_Obs"
End
Begin OutputColumns
    Expression ="qsub_Loc_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Expression ="qsub_Loc_filters.Location_type"
    Expression ="qsub_Loc_filters.Location_status"
    Expression ="qsub_Event_filters.Start_date"
    Expression ="qsub_Event_filters.Start_time"
    Expression ="tlu_Project_Taxa.Species_code"
    Expression ="tbl_Rare_Bird_Obs.Group_size"
    Expression ="tbl_Rare_Bird_Obs.Nest_activity"
    Expression ="tbl_Rare_Bird_Obs.Obs_distance_m"
    Expression ="tbl_Rare_Bird_Obs.Rare_obs_notes"
End
Begin Joins
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =3
    LeftTable ="qsub_Event_filters"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="qsub_Event_filters.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =1
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Event_filters"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =1
End
Begin OrderBy
    Expression ="qsub_Loc_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
    Expression ="qsub_Loc_filters.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Rare bird observation information for barred owl and northern spotted owl"
Begin
    Begin
        dbText "Name" ="tbl_Rare_Bird_Obs.Rare_obs_notes"
        dbInteger "ColumnWidth" ="9225"
        dbBoolean "ColumnHidden" ="0"
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
    ColumnsShown =539
    Begin
        Left =574
        Top =6
        Right =670
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
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
        Left =440
        Top =6
        Right =536
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
End
