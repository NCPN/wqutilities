Operation =1
Option =0
Where ="(((tbl_Task_List.Task_status) Is Null)) OR (((tbl_Task_List.Request_date) Is Nul"
    "l)) OR (((tbl_Task_List.Task_desc) Is Null)) OR (((tbl_Task_List.Date_completed)"
    "<[Request_date])) OR (((tbl_Task_List.Task_status)<>'Complete') AND ((tbl_Task_L"
    "ist.Date_completed) Is Not Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Task_List"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Task_List.Request_date"
    Expression ="tbl_Task_List.Task_desc"
    Expression ="tbl_Task_List.Task_status"
    Expression ="tbl_Task_List.Date_completed"
    Expression ="tbl_Task_List.Task_notes"
    Expression ="tbl_Task_List.Followup_by"
    Expression ="tbl_Task_List.Followup_notes"
    Alias ="varObject"
    Expression ="\"tbl_Task_List\""
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Task_List"
    Expression ="tbl_Locations.Location_ID = tbl_Task_List.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing task description, request date, or status; or the completed date is befo"
    "re the request date; or the completed date is filled in but the status is not 'C"
    "omplete'"
dbBinary "GUID" = Begin
    0x00208ff81b86c741aa72cbacaf653d4c
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Task_List.Followup_notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Task_List.Followup_by"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Task_List.Task_notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Task_List.Date_completed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Task_List.Task_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Task_List.Task_desc"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Task_List.Request_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1043
    Bottom =688
    Left =-1
    Top =-1
    Right =1019
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =208
        Top =8
        Right =328
        Bottom =145
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =390
        Top =8
        Right =510
        Bottom =145
        Top =0
        Name ="tbl_Task_List"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
