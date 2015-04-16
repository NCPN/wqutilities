Operation =1
Option =0
Where ="(((tbl_Locations.Location_status) Not In ('Rejected','Retired','Incidental')))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Schedule"
End
Begin OutputColumns
    Expression ="tbl_Schedule.Calendar_year"
    Expression ="tbl_Locations.Location_ID"
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Schedule"
    Expression ="tbl_Sites.Site_ID = tbl_Schedule.Site_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Schedule.Calendar_year"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="List of scheduled sample points by calendar year (Active or Proposed)"
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
        Left =185
        Top =5
        Right =281
        Bottom =112
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =320
        Top =6
        Right =416
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =45
        Top =2
        Right =141
        Bottom =94
        Top =0
        Name ="tbl_Schedule"
        Name =""
    End
End
