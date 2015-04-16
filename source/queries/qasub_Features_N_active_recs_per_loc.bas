Operation =1
Option =0
Where ="(((tbl_Features.Feature_status)='Active'))"
Begin InputTables
    Name ="tbl_Features"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Events.Location_ID"
    Alias ="N_active_features"
    Expression ="Count(tbl_Features.Feature_ID)"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Features"
    Expression ="tbl_Events.Event_ID = tbl_Features.Event_ID"
    Flag =1
End
Begin Groups
    Expression ="tbl_Events.Location_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Number of active markers per location, where marker code <> 'none'"
Begin
End
Begin
    State =0
    Left =84
    Top =106
    Right =1130
    Bottom =418
    Left =-1
    Top =-1
    Right =1039
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =206
        Top =8
        Right =302
        Bottom =115
        Top =0
        Name ="tbl_Features"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
