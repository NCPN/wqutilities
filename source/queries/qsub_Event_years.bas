Operation =1
Option =0
Begin InputTables
    Name ="tbl_Events"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Alias ="Event_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Events.Location_ID"
    Expression ="tbl_Events.Start_date"
    Alias ="N_obs_recs"
    Expression ="Count(tbl_Point_Counts.Observation_ID)"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Point_Counts"
    Expression ="tbl_Events.Event_ID=tbl_Point_Counts.Event_ID"
    Flag =2
End
Begin Groups
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =0
    Expression ="tbl_Events.Location_ID"
    GroupLevel =0
    Expression ="tbl_Events.Start_date"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbMemo "Filter" ="((N_obs_recs=0))"
dbMemo "OrderBy" ="Lookup_Location__ID.Location"
dbText "Description" ="Number of point count records by year, location and date"
Begin
    Begin
        dbText "Name" ="Event_year"
        dbBinary "GUID" = Begin
            0x54e6f0665c81bc4cb152fe0b9cf208e9
        End
    End
    Begin
        dbText "Name" ="N_obs_recs"
        dbBinary "GUID" = Begin
            0xf5db034f9aba534f93254a8c450e8efa
        End
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
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =51
        Top =6
        Right =147
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =185
        Top =6
        Right =281
        Bottom =113
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
