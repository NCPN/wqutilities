Operation =1
Option =0
Where ="(((qsub_Loc_filters.Location_type) Not In ('Incidental','Origin')) AND ((tbl_Poi"
    "nt_Counts.Observation_ID) Is Null))"
Begin InputTables
    Name ="tbl_Strata"
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Expression ="qsub_Event_filters.Event_year"
    Expression ="qsub_Site_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Alias ="Stratum"
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    Expression ="qsub_Loc_filters.Location_code"
    Expression ="qsub_Loc_filters.Location_type"
    Alias ="Problem"
    Expression ="IIf(IsNull([Start_date]),'No event','No observation recs')"
End
Begin Joins
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
    Flag =2
    LeftTable ="tbl_Strata"
    RightTable ="qsub_Site_filters"
    Expression ="tbl_Strata.Stratum_ID = qsub_Site_filters.Stratum_ID"
    Flag =1
End
Begin OrderBy
    Expression ="qsub_Event_filters.Event_year"
    Flag =1
    Expression ="qsub_Site_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="List of surveyed points that have no point count observation records (i.e., miss"
    "ing even 'NONE')"
Begin
    Begin
        dbText "Name" ="Problem"
        dbInteger "ColumnWidth" ="1800"
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
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="qsub_Site_filters"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="qsub_Loc_filters"
        Name =""
    End
    Begin
        Left =440
        Top =6
        Right =536
        Bottom =113
        Top =0
        Name ="qsub_Event_filters"
        Name =""
    End
    Begin
        Left =574
        Top =6
        Right =670
        Bottom =113
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
