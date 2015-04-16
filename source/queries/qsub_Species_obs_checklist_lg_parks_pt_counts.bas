Operation =1
Option =0
Where ="(((tbl_Locations.Park_code) In ('MORA','NOCA','OLYM')))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Alias ="Event_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Point_Counts.Taxon_ID"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Point_Counts"
    Expression ="tbl_Events.Event_ID=tbl_Point_Counts.Event_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID=tbl_Events.Location_ID"
    Flag =1
End
Begin Groups
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =0
    Expression ="tbl_Point_Counts.Taxon_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Species observed in point counts at large parks, by year"
Begin
    Begin
        dbText "Name" ="Event_year"
        dbBinary "GUID" = Begin
            0x0d0de428cc031c48bda5990f24aff7ea
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
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =52
        Top =8
        Right =148
        Bottom =115
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =198
        Top =10
        Right =294
        Bottom =117
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =345
        Top =9
        Right =441
        Bottom =116
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
