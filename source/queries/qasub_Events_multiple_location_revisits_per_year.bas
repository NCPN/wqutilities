Operation =1
Option =0
Having ="(((Count(tbl_Events.Event_ID))>1))"
Begin InputTables
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Events.Location_ID"
    Alias ="Sample_year"
    Expression ="CStr(Year([Start_date]))"
    Alias ="N_events"
    Expression ="Count(tbl_Events.Event_ID)"
End
Begin Groups
    Expression ="tbl_Events.Location_ID"
    GroupLevel =0
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Locations that were visited multiple times in a sampling year"
Begin
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
        Name ="tbl_Events"
        Name =""
    End
End
