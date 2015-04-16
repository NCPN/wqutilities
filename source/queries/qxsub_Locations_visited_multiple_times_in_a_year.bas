Operation =1
Option =0
Having ="(((Count(tbl_Events.Event_ID))>1))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
End
Begin OutputColumns
    Alias ="Calendar_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Locations.Location_ID"
    Alias ="N"
    Expression ="Count(tbl_Events.Event_ID)"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
Begin Groups
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =0
    Expression ="tbl_Locations.Location_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Returns locations visited more than once per year (valid for transect origins)"
Begin
End
Begin
    State =0
    Left =62
    Top =84
    Right =1658
    Bottom =396
    Left =-1
    Top =-1
    Right =1589
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
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
