Operation =1
Option =0
Begin InputTables
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Events.Event_ID"
    Expression ="tbl_Events.Location_ID"
    Alias ="Calendar_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Events.Start_date"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Sampling events by calendar year (on Start_date)"
Begin
    Begin
        dbText "Name" ="Calendar_year"
        dbBinary "GUID" = Begin
            0x53c700e586910241a8d27fbe6d61ea14
        End
    End
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
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =13
        Name ="tbl_Events"
        Name =""
    End
End
