Operation =1
Option =0
Where ="(((tbl_Nesting_Obs.Event_ID) Is Null)) OR (((tbl_Nesting_Obs.Taxon_ID) Is Null))"
    " OR (((tbl_Nesting_Obs.Nest_activity) Is Null))"
Begin InputTables
    Name ="tbl_Nesting_Obs"
End
Begin OutputColumns
    Expression ="tbl_Nesting_Obs.Event_ID"
    Expression ="tbl_Nesting_Obs.Taxon_ID"
    Expression ="tbl_Nesting_Obs.Nest_activity"
    Expression ="tbl_Nesting_Obs.Nest_obs_notes"
    Expression ="tbl_Nesting_Obs.Nest_obs_ID"
    Alias ="varObject"
    Expression ="\"tbl_Nesting_Obs\""
End
Begin OrderBy
    Expression ="tbl_Nesting_Obs.Event_ID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing event ID, taxon ID, or nest activity"
Begin
End
Begin
    State =0
    Left =25
    Top =43
    Right =1104
    Bottom =391
    Left =-1
    Top =-1
    Right =1072
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =184
        Top =6
        Right =304
        Bottom =128
        Top =0
        Name ="tbl_Nesting_Obs"
        Name =""
    End
End
