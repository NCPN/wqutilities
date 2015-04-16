Operation =1
Option =0
Where ="(((tbl_Coordinates.Coord_ID) Is Null))"
Begin InputTables
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Alias ="Calendar_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Events.Location_ID"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =2
End
Begin OrderBy
    Expression ="CStr(Year([Start_date]))"
    Flag =1
    Expression ="tbl_Events.Location_ID"
    Flag =0
End
Begin Groups
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =0
    Expression ="tbl_Events.Location_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Returns location records for which no event coordinate records exist (for a give"
    "n sampling event)"
Begin
    Begin
        dbText "Name" ="tbl_Events.Location_ID"
        dbInteger "ColumnWidth" ="4275"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =179
    Top =396
    Right =1269
    Bottom =830
    Left =-1
    Top =-1
    Right =1083
    Bottom =266
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =491
        Bottom =203
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
