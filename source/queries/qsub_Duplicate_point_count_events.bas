Operation =1
Option =0
Begin InputTables
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Expression ="qsub_Event_filters.Event_year"
    Expression ="qsub_Site_filters.Site_ID"
    Expression ="qsub_Site_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Expression ="qsub_Loc_filters.Location_type"
    Expression ="qsub_Event_filters.Start_date"
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
    Flag =1
End
Begin Groups
    Expression ="qsub_Event_filters.Event_year"
    GroupLevel =0
    Expression ="qsub_Site_filters.Site_ID"
    GroupLevel =0
    Expression ="qsub_Site_filters.Park_code"
    GroupLevel =0
    Expression ="qsub_Site_filters.Site_code"
    GroupLevel =0
    Expression ="qsub_Loc_filters.Location_code"
    GroupLevel =0
    Expression ="qsub_Loc_filters.Location_type"
    GroupLevel =0
    Expression ="qsub_Event_filters.Start_date"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="List of point count sampling events by year, site and location"
Begin
End
Begin
    State =0
    Left =62
    Top =84
    Right =1130
    Bottom =396
    Left =-1
    Top =-1
    Right =1061
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
        Left =573
        Top =6
        Right =669
        Bottom =113
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
