Operation =1
Option =0
Where ="(((tbl_Rare_Bird_Obs.Event_ID) Is Null)) OR (((tbl_Rare_Bird_Obs.Taxon_ID) Is Nu"
    "ll)) OR (((tbl_Rare_Bird_Obs.Group_size) Is Null)) OR (((tbl_Rare_Bird_Obs.Nest_"
    "activity) Is Null))"
Begin InputTables
    Name ="tbl_Rare_Bird_Obs"
End
Begin OutputColumns
    Expression ="tbl_Rare_Bird_Obs.Event_ID"
    Expression ="tbl_Rare_Bird_Obs.Taxon_ID"
    Expression ="tbl_Rare_Bird_Obs.Group_size"
    Expression ="tbl_Rare_Bird_Obs.Nest_activity"
    Expression ="tbl_Rare_Bird_Obs.Obs_distance_m"
    Expression ="tbl_Rare_Bird_Obs.Rare_obs_notes"
    Expression ="tbl_Rare_Bird_Obs.Rare_bird_obs_ID"
    Alias ="varObject"
    Expression ="\"tbl_Rare_Bird_Obs\""
End
Begin OrderBy
    Expression ="tbl_Rare_Bird_Obs.Event_ID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing event ID, taxon ID, group size, or nest activity"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =523
    Left =-1
    Top =-1
    Right =1083
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =7
        Right =246
        Bottom =159
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
End
