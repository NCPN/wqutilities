Operation =1
Option =0
Where ="(((tbl_Coordinates.Field_UTME) Is Not Null))"
Having ="(((Count(tbl_Coordinates.Coord_ID))>1))"
Begin InputTables
    Name ="tbl_Coordinates"
    Name ="tbl_Locations"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Locations.Location_type"
    Alias ="Sample_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Coordinates.Field_UTME"
    Expression ="tbl_Coordinates.Field_UTMN"
    Alias ="N_recs"
    Expression ="Count(tbl_Coordinates.Coord_ID)"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
End
Begin Groups
    Expression ="tbl_Locations.Location_type"
    GroupLevel =0
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =0
    Expression ="tbl_Coordinates.Field_UTME"
    GroupLevel =0
    Expression ="tbl_Coordinates.Field_UTMN"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Returns duplicate field UTMs grouped by sample year and location type"
dbBinary "GUID" = Begin
    0x48089e1c5c87874381bf267ac9acc6ee
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sample_year"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-4
    Top =-30
    Right =1065
    Bottom =692
    Left =-1
    Top =-1
    Right =1045
    Bottom =127
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =446
        Top =7
        Right =542
        Bottom =114
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
