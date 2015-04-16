Operation =1
Option =0
Where ="(((tbl_Observers.Observer_role)='Point count'))"
Begin InputTables
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="tbl_Observers"
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
    Expression ="tbl_Observers.Contact_ID"
End
Begin Joins
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =1
    LeftTable ="qsub_Event_filters"
    RightTable ="tbl_Observers"
    Expression ="qsub_Event_filters.Event_ID = tbl_Observers.Event_ID"
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
    Expression ="tbl_Observers.Contact_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="List of point count observers by year, site, location and date"
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
        Left =707
        Top =6
        Right =803
        Bottom =113
        Top =0
        Name ="tbl_Observers"
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
