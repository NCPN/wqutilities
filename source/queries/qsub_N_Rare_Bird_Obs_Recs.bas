Operation =1
Option =0
Begin InputTables
    Name ="tbl_Events"
    Name ="tbl_Rare_Bird_Obs"
End
Begin OutputColumns
    Expression ="tbl_Events.Event_ID"
    Alias ="N_rare_obs"
    Expression ="Count(tbl_Rare_Bird_Obs.Rare_bird_obs_ID)"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tbl_Events.Event_ID=tbl_Rare_Bird_Obs.Event_ID"
    Flag =2
End
Begin Groups
    Expression ="tbl_Events.Event_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Number of rare bird observations associated with each sampling event"
Begin
    Begin
        dbText "Name" ="tbl_Events.Event_ID"
        dbInteger "ColumnWidth" ="4185"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="N_rare_obs"
        dbBinary "GUID" = Begin
            0x4151ab72c4dc8f4ca92234b7fcdf4fb6
        End
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1149
    Bottom =276
    Left =313
    Top =0
    ColumnsShown =543
    Begin
        Left =81
        Top =13
        Right =177
        Bottom =120
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =411
        Top =134
        Right =507
        Bottom =241
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
End
