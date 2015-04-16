Operation =1
Option =0
Where ="(((tbl_Point_Counts.Prev_observed)=False))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Point_Counts"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
End
Begin OutputColumns
    Alias ="Event_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Locations.Park_code"
    Alias ="Species"
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Species_code,tlu_Projec"
        "t_Taxa_1.Species_code)"
    Alias ="Sci_name"
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[Taxon_ID]),[tlu_Project_Taxa].[Scientific_name]"
        ",[tlu_Project_Taxa_1].[Scientific_name])"
    Alias ="Pref_com_name"
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[Taxon_ID]),[tlu_Project_Taxa].[Pref_com_name],["
        "tlu_Project_Taxa_1].[Pref_com_name])"
    Alias ="Total_obs"
    Expression ="Sum(tbl_Point_Counts.Group_size)"
    Alias ="N_groups"
    Expression ="Count(tbl_Point_Counts.Observation_ID)"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Site_ID"
    Expression ="tbl_Locations.Location_ID"
    Expression ="tbl_Events.Event_ID"
    Expression ="tbl_Point_Counts.Taxon_ID"
    Alias ="Data_source"
    Expression ="'Point count'"
End
Begin Joins
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tlu_Project_Taxa_1"
    Expression ="tlu_Project_Taxa.Refers_to = tlu_Project_Taxa_1.Taxon_ID"
    Flag =2
    LeftTable ="tbl_Events"
    RightTable ="tbl_Point_Counts"
    Expression ="tbl_Events.Event_ID = tbl_Point_Counts.Event_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Point_Counts"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Point_Counts.Taxon_ID"
    Flag =1
End
Begin OrderBy
    Expression ="CStr(Year([Start_date]))"
    Flag =0
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Species_code,tlu_Projec"
        "t_Taxa_1.Species_code)"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
Begin Groups
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =0
    Expression ="tbl_Locations.Park_code"
    GroupLevel =0
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Species_code,tlu_Projec"
        "t_Taxa_1.Species_code)"
    GroupLevel =0
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[Taxon_ID]),[tlu_Project_Taxa].[Scientific_name]"
        ",[tlu_Project_Taxa_1].[Scientific_name])"
    GroupLevel =0
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[Taxon_ID]),[tlu_Project_Taxa].[Pref_com_name],["
        "tlu_Project_Taxa_1].[Pref_com_name])"
    GroupLevel =0
    Expression ="tbl_Sites.Site_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_type"
    GroupLevel =0
    Expression ="tbl_Locations.Site_ID"
    GroupLevel =0
    Expression ="tbl_Locations.Location_ID"
    GroupLevel =0
    Expression ="tbl_Events.Event_ID"
    GroupLevel =0
    Expression ="tbl_Point_Counts.Taxon_ID"
    GroupLevel =0
    Expression ="'Point count'"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Point count data event summary - totals observed per taxon"
dbBinary "GUID" = Begin
    0x655f30e27d1ee548960240ccb40ea428
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Event_year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9fa335dca8e7274f83fa8e1ae08811d1
        End
    End
    Begin
        dbText "Name" ="Data_source"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2e7bd3b991402947b5bc9888c7d8c4fb
        End
    End
    Begin
        dbText "Name" ="Species"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcc09e8a64d613346a70acfd5a563eb4b
        End
    End
    Begin
        dbText "Name" ="Total_observed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="N_observations"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfGroup_size"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="N_groups_incl_prev_observed"
        dbInteger "ColumnWidth" ="2955"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Site_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Events.Event_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Taxon_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Total_obs_incl_prev_observed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Total_incl_prev_observed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Total_obs"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2a13653ae783ff49b764485e04853e80
        End
    End
    Begin
        dbText "Name" ="N_groups"
        dbInteger "ColumnWidth" ="2955"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0005bd0364c2310050c23100ecad2a03
        End
    End
    Begin
        dbText "Name" ="Com_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pref_com_name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80b5560274c1310060c13100ccae2a03
        End
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa_1.Scientific_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Project_Taxa_1.Pref_com_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sci_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1172
    Bottom =980
    Left =-1
    Top =-1
    Right =1064
    Bottom =93
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =644
        Top =7
        Right =740
        Bottom =114
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
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =440
        Top =6
        Right =604
        Bottom =128
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
    Begin
        Left =797
        Top =6
        Right =979
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa_1"
        Name =""
    End
End
