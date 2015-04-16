Operation =1
Option =0
Where ="(((qxsub_GPS_Info_flagged_grouped_by_loc_and_year.GPS_year) Is Null) AND ((qxsub"
    "_GPS_Info_by_year.Location_ID) Is Not Null))"
Begin InputTables
    Name ="qxsub_GPS_Info_by_year"
    Name ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year"
End
Begin OutputColumns
    Expression ="qxsub_GPS_Info_by_year.GPS_year"
    Expression ="qxsub_GPS_Info_by_year.Location_ID"
End
Begin Joins
    LeftTable ="qxsub_GPS_Info_by_year"
    RightTable ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year"
    Expression ="qxsub_GPS_Info_by_year.GPS_year = qxsub_GPS_Info_flagged_grouped_by_loc_and_year"
        ".GPS_year"
    Flag =2
    LeftTable ="qxsub_GPS_Info_by_year"
    RightTable ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year"
    Expression ="qxsub_GPS_Info_by_year.Location_ID = qxsub_GPS_Info_flagged_grouped_by_loc_and_y"
        "ear.Location_ID"
    Flag =2
End
Begin OrderBy
    Expression ="qxsub_GPS_Info_by_year.GPS_year"
    Flag =1
End
Begin Groups
    Expression ="qxsub_GPS_Info_by_year.GPS_year"
    GroupLevel =0
    Expression ="qxsub_GPS_Info_by_year.Location_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Records grouped by location and year for which none are flagged to be linked wit"
    "h coordinates - each loc-year combination should have one flagged record"
Begin
    Begin
        dbText "Name" ="qxsub_GPS_Info_by_year.Location_ID"
        dbInteger "ColumnWidth" ="4035"
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
    Right =1101
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =228
        Bottom =113
        Top =0
        Name ="qxsub_GPS_Info_by_year"
        Name =""
    End
    Begin
        Left =327
        Top =11
        Right =655
        Bottom =88
        Top =0
        Name ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year"
        Name =""
    End
End
