Operation =1
Option =0
Where ="(((tbl_Task_List.Task_status)='Active'))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Task_List"
    Name ="qrsub_Scheduled_sites"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Alias ="Loc_code"
    Expression ="[Site_code] & \".\" & [Location_code]"
    Expression ="tbl_Task_List.*"
    Expression ="qrsub_Scheduled_sites.Calendar_year"
    Alias ="Sort_order"
    Expression ="IIf([Location_type]='Origin',0,1)"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qrsub_Scheduled_sites"
    Expression ="tbl_Locations.Site_ID = qrsub_Scheduled_sites.Site_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Task_List"
    Expression ="tbl_Locations.Location_ID = tbl_Task_List.Location_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Provides active tasks for the task list report"
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
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Task_List"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =83
        Top =0
        Name ="qrsub_Scheduled_sites"
        Name =""
    End
    Begin
        Left =520
        Top =5
        Right =616
        Bottom =112
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
