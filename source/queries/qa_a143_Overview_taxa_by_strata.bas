Operation =1
Option =0
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tbl_Strata"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Strata.Stratum_name"
    Alias ="Species"
    Expression ="IIf([Taxon_is_active]=False,'x ','') & [Species_code] & \" - \" & [Pref_com_name"
        "]"
    Alias ="N_observations"
    Expression ="Count(tbl_Point_Counts.Observation_ID)"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Point_Counts"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Point_Counts.Event_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
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
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Strata.Stratum_name"
    Flag =0
    Expression ="Count(tbl_Point_Counts.Observation_ID)"
    Flag =1
End
Begin Groups
    Expression ="tbl_Sites.Park_code"
    GroupLevel =0
    Expression ="tbl_Strata.Stratum_name"
    GroupLevel =0
    Expression ="IIf([Taxon_is_active]=False,'x ','') & [Species_code] & \" - \" & [Pref_com_name"
        "]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Overview of the taxa observed at sampling points, grouped by park and stratum"
Begin
    Begin
        dbText "Name" ="N_observations"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Species"
        dbInteger "ColumnWidth" ="3195"
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
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =878
        Top =6
        Right =974
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =48
        Top =7
        Right =168
        Bottom =144
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
    Begin
        Left =216
        Top =7
        Right =336
        Bottom =144
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =384
        Top =7
        Right =504
        Bottom =144
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =542
        Top =6
        Right =638
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =720
        Top =7
        Right =840
        Bottom =144
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
