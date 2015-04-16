Operation =1
Option =0
Where ="(((qsub_Observers_point_count.Observer) Is Null))"
Having ="(((qsub_Loc_filters.Location_type)<>'Incidental' And (qsub_Loc_filters.Location_"
    "type)<>'Origin'))"
Begin InputTables
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="tbl_Point_Counts"
    Name ="qsub_Observers_point_count"
End
Begin OutputColumns
    Expression ="qsub_Loc_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Expression ="qsub_Loc_filters.Location_type"
    Expression ="qsub_Event_filters.Start_date"
    Expression ="qsub_Event_filters.Start_time"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qsub_Event_filters].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =3
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Event_filters"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_ID"
    Flag =1
    LeftTable ="tbl_Point_Counts"
    RightTable ="qsub_Observers_point_count"
    Expression ="tbl_Point_Counts.Event_ID = qsub_Observers_point_count.Event_ID"
    Flag =2
    LeftTable ="qsub_Event_filters"
    RightTable ="tbl_Point_Counts"
    Expression ="qsub_Event_filters.Event_ID = tbl_Point_Counts.Event_ID"
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
Begin Groups
    Expression ="qsub_Loc_filters.Park_code"
    GroupLevel =0
    Expression ="qsub_Site_filters.Site_code"
    GroupLevel =0
    Expression ="qsub_Loc_filters.Location_code"
    GroupLevel =0
    Expression ="qsub_Loc_filters.Location_type"
    GroupLevel =0
    Expression ="qsub_Event_filters.Start_date"
    GroupLevel =0
    Expression ="qsub_Event_filters.Start_time"
    GroupLevel =0
    Expression ="\"frm_Data_Entry\""
    GroupLevel =0
    Expression ="\"Event_ID='\" & [qsub_Event_filters].[Event_ID] & \"'\""
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Events with point count data records where location type <>'Incidental' and <>'O"
    "rigin' where there are no observer records (Observer_role='Point count')"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbBinary "GUID" = Begin
    0xd3f8e3f0bcc4e7408793d927f6eb2e82
End
Begin
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varFilter"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Loc_filters.Park_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1496
    Bottom =997
    Left =-1
    Top =-1
    Right =1464
    Bottom =177
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qsub_Site_filters"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="qsub_Loc_filters"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="qsub_Event_filters"
        Name =""
    End
    Begin
        Left =675
        Top =13
        Right =795
        Bottom =150
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
    Begin
        Left =870
        Top =12
        Right =1014
        Bottom =156
        Top =0
        Name ="qsub_Observers_point_count"
        Name =""
    End
End
