Operation =1
Option =0
Where ="(((tbl_Schedule.Calendar_year)=[Forms]![frm_Switchboard]![cTimeframe]))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Schedule"
End
Begin OutputColumns
    Expression ="tbl_Sites.Site_ID"
    Expression ="tbl_Schedule.Calendar_year"
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Schedule"
    Expression ="tbl_Sites.Site_ID = tbl_Schedule.Site_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Short list of sites scheduled for the current year (timeframe in the switchboard"
    " form)"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
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
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =98
        Top =0
        Name ="tbl_Schedule"
        Name =""
    End
End
