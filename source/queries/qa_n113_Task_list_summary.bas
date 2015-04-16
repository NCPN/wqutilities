Operation =1
Option =0
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Task_List"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Task_List.Task_status"
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Task_List.Request_date"
    Expression ="tbl_Task_List.Task_desc"
    Expression ="tbl_Task_List.Date_completed"
    Expression ="tbl_Task_List.Task_notes"
    Expression ="tbl_Task_List.Followup_by"
    Expression ="tbl_Task_List.Followup_notes"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Task_List"
    Expression ="tbl_Locations.Location_ID = tbl_Task_List.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Task_List.Task_status"
    Flag =0
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
dbText "Description" ="Summary of task list items"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="tbl_Task_List.Request_date"
        dbInteger "ColumnWidth" ="1965"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Task_List.Task_desc"
        dbInteger "ColumnWidth" ="7635"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =388
    Left =-1
    Top =-1
    Right =1105
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =185
        Top =8
        Right =305
        Bottom =145
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =354
        Top =6
        Right =474
        Bottom =143
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
