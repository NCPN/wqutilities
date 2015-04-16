Operation =1
Option =0
Where ="(((tbl_Task_List.Task_status)='Active')) OR (((tbl_Task_List.Task_status) Is Nul"
    "l) AND ((tbl_Task_List.Date_completed) Is Null))"
Begin InputTables
    Name ="tbl_Task_List"
End
Begin OutputColumns
    Expression ="tbl_Task_List.Request_date"
    Expression ="tbl_Task_List.Task_desc"
    Expression ="tbl_Task_List.Requested_by"
    Expression ="tbl_Task_List.Task_status"
    Expression ="tbl_Task_List.Date_completed"
    Expression ="tbl_Task_List.Followup_by"
    Expression ="tbl_Task_List.Task_notes"
    Expression ="tbl_Task_List.Followup_notes"
    Expression ="tbl_Task_List.Location_ID"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Subquery for showing task items in the navigation report"
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
        Name ="tbl_Task_List"
        Name =""
    End
End
