Operation =1
Option =0
Where ="(((tbl_Point_Counts.Flyover)=False))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="qsub_Observers_point_count"
    Name ="qsub_Habitat_type"
    Name ="tlu_PMR_Veg_Type"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Expression ="qsub_Event_filters.Event_year"
    Expression ="qsub_Site_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Expression ="qsub_Loc_filters.Location_type"
    Expression ="qsub_Event_filters.Start_date"
    Expression ="qsub_Observers_point_count.Observer"
    Expression ="tlu_PMR_Veg_Type.PMR_type_desc"
    Expression ="tlu_PMR_Veg_Type.Detection_class"
    Expression ="tlu_PMR_Veg_Type.Is_forested"
    Expression ="qsub_Habitat_type.Habitat_num"
    Expression ="qsub_Event_filters.Noise_level"
    Alias ="Species"
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Species_code,tlu_Projec"
        "t_Taxa_1.Species_code)"
    Expression ="tbl_Point_Counts.Int_0_3"
    Expression ="tbl_Point_Counts.Int_3_5"
    Expression ="tbl_Point_Counts.Int_5_7"
    Expression ="tbl_Point_Counts.Ever_sang"
    Expression ="tbl_Point_Counts.Seen_first"
    Expression ="tbl_Point_Counts.Group_size"
    Expression ="tbl_Point_Counts.Obs_distance_m"
    Expression ="tbl_Point_Counts.Prev_observed"
    Expression ="tbl_Point_Counts.Flyover"
    Expression ="tbl_Point_Counts.Obs_notes"
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
    LeftTable ="qsub_Event_filters"
    RightTable ="qsub_Observers_point_count"
    Expression ="qsub_Event_filters.Event_ID = qsub_Observers_point_count.Event_ID"
    Flag =2
    LeftTable ="qsub_Habitat_type"
    RightTable ="tlu_PMR_Veg_Type"
    Expression ="qsub_Habitat_type.PMR_code = tlu_PMR_Veg_Type.PMR_type_code"
    Flag =2
    LeftTable ="qsub_Event_filters"
    RightTable ="qsub_Habitat_type"
    Expression ="qsub_Event_filters.Event_ID = qsub_Habitat_type.Event_ID"
    Flag =2
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Event_filters"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_ID"
    Flag =1
    LeftTable ="qsub_Event_filters"
    RightTable ="tbl_Point_Counts"
    Expression ="qsub_Event_filters.Event_ID = tbl_Point_Counts.Event_ID"
    Flag =2
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Point_Counts"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Point_Counts.Taxon_ID"
    Flag =3
End
Begin OrderBy
    Expression ="qsub_Event_filters.Event_year"
    Flag =1
    Expression ="qsub_Site_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
    Expression ="qsub_Loc_filters.Location_code"
    Flag =0
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Species_code,tlu_Projec"
        "t_Taxa_1.Species_code)"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Output matrix for DISTANCE analysis - Point count obs data where Flyover=False. "
    "May show duplicate records where more than one observer is associated with the p"
    "oint count. Detection fields shown for the most abundant PMR vegetation type (Ha"
    "bitat_num=1)."
dbBinary "GUID" = Begin
    0x64c80a79fd142c4b8bde4316f7c7a5f5
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qsub_Event_filters.Event_year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Int_0_3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Int_3_5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Int_5_7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Site_filters.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Site_filters.Site_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Loc_filters.Location_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Loc_filters.Location_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Event_filters.Start_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_PMR_Veg_Type.PMR_type_desc"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_PMR_Veg_Type.Detection_class"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_PMR_Veg_Type.Is_forested"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Event_filters.Noise_level"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Species"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Ever_sang"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Seen_first"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Group_size"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Obs_distance_m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Prev_observed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Flyover"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Obs_notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Habitat_type.Habitat_num"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Observers_point_count.Observer"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-30
    Right =1037
    Bottom =1005
    Left =-1
    Top =-1
    Right =1013
    Bottom =419
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =679
        Top =144
        Right =775
        Bottom =251
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =816
        Top =139
        Right =912
        Bottom =246
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
        Left =457
        Top =264
        Right =645
        Bottom =352
        Top =0
        Name ="qsub_Observers_point_count"
        Name =""
    End
    Begin
        Left =591
        Top =6
        Right =729
        Bottom =110
        Top =0
        Name ="qsub_Habitat_type"
        Name =""
    End
    Begin
        Left =781
        Top =7
        Right =910
        Bottom =114
        Top =0
        Name ="tlu_PMR_Veg_Type"
        Name =""
    End
    Begin
        Left =462
        Top =132
        Right =627
        Bottom =250
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
