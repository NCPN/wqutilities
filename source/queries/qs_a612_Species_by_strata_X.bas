Operation =6
Option =0
Where ="(((tlu_Project_Taxa.Species_code)<>'NONE'))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tbl_Strata"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Point_Counts"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
End
Begin OutputColumns
    Alias ="Species"
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[Taxon_ID]),[tlu_Project_Taxa].[Pref_com_name],["
        "tlu_Project_Taxa_1].[Pref_com_name])"
    GroupLevel =2
    Alias ="Event_year"
    Expression ="Year([Start_date])"
    GroupLevel =2
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Expression ="tbl_Strata.Stratum_name"
    GroupLevel =1
    Alias ="N_observations"
    Expression ="Count(tbl_Point_Counts.Observation_ID)"
End
Begin Joins
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tlu_Project_Taxa_1"
    Expression ="tlu_Project_Taxa.Refers_to = tlu_Project_Taxa_1.Taxon_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Point_Counts"
    Expression ="tbl_Events.Event_ID = tbl_Point_Counts.Event_ID"
    Flag =1
    LeftTable ="tbl_Strata"
    RightTable ="tbl_Sites"
    Expression ="tbl_Strata.Stratum_ID = tbl_Sites.Stratum_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Point_Counts"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Point_Counts.Taxon_ID"
    Flag =1
End
Begin OrderBy
    Expression ="Year([Start_date])"
    Flag =1
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tlu_Project_Taxa.IBP_number"
    Flag =0
End
Begin Groups
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[Taxon_ID]),[tlu_Project_Taxa].[Pref_com_name],["
        "tlu_Project_Taxa_1].[Pref_com_name])"
    GroupLevel =2
    Expression ="tlu_Project_Taxa.IBP_number"
    GroupLevel =2
    Expression ="Year([Start_date])"
    GroupLevel =2
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Expression ="tbl_Strata.Stratum_name"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Species observations by year, park and stratum"
Begin
    Begin
        dbText "Name" ="N_observations"
        dbInteger "ColumnWidth" ="2016"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="PIVOT"
        dbInteger "ColumnWidth" ="2016"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Species"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Event_year"
        dbInteger "ColumnWidth" ="1215"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Sites.Park_code"
        dbInteger "ColumnWidth" ="1200"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="High"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Low"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Medium"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Parkwide"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =410
    Left =-1
    Top =-1
    Right =1083
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =847
        Top =6
        Right =943
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =440
        Top =6
        Right =536
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =574
        Top =6
        Right =670
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =708
        Top =6
        Right =804
        Bottom =113
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
    Begin
        Left =979
        Top =5
        Right =1075
        Bottom =112
        Top =0
        Name ="tlu_Project_Taxa_1"
        Name =""
    End
End
