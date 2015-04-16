Operation =1
Option =0
Where ="(((tbl_QA_Results.Time_frame) Like Nz([Forms]![frm_Switchboard]![fsub_DbAdmin].["
    "Form]![tbxTimeframe],\"*\")) AND ((tbl_QA_Results.Query_type)=\"1\" Or (tbl_QA_R"
    "esults.Query_type)=\"2\") AND ((tbl_QA_Results.Query_result)<>\"0\") AND ((tbl_Q"
    "A_Results.Remedy_desc) Is Null)) OR (((tbl_QA_Results.Time_frame) Like Nz([Forms"
    "]![frm_Switchboard]![fsub_DbAdmin].[Form]![tbxTimeframe],\"*\")) AND ((tbl_QA_Re"
    "sults.Query_type)=\"1\" Or (tbl_QA_Results.Query_type)=\"2\") AND ((tbl_QA_Resul"
    "ts.Is_done)=False)) OR (((tbl_QA_Results.Time_frame) Like Nz([Forms]![frm_Switch"
    "board]![fsub_DbAdmin].[Form]![tbxTimeframe],\"*\")) AND ((tbl_QA_Results.Query_t"
    "ype)=\"1\") AND ((tbl_QA_Results.Query_result)<>\"0\"))"
Begin InputTables
    Name ="tbl_QA_Results"
End
Begin OutputColumns
    Expression ="tbl_QA_Results.Query_name"
    Expression ="tbl_QA_Results.Time_frame"
    Expression ="tbl_QA_Results.Query_type"
    Expression ="tbl_QA_Results.Query_run_time"
    Expression ="tbl_QA_Results.Query_result"
    Expression ="tbl_QA_Results.Is_done"
    Expression ="tbl_QA_Results.Remedy_desc"
    Expression ="tbl_QA_Results.QA_user"
    Expression ="tbl_QA_Results.Remedy_date"
    Expression ="tbl_QA_Results.Query_expression"
    Expression ="tbl_QA_Results.Query_description"
End
Begin OrderBy
    Expression ="tbl_QA_Results.Query_name"
    Flag =0
    Expression ="tbl_QA_Results.Time_frame"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "Description" ="QA queries that have not been sufficiently addressed:  Critical queries that ret"
    "urn records; or Warning queries returning records where no remedy/documentation "
    "statement exists; or Critical or Warning queries that are not marked Done=True"
dbBinary "GUID" = Begin
    0xe96e3d3c7577404f8d4a7c1cd51dd20a
End
Begin
    Begin
        dbText "Name" ="tbl_QA_Results.Query_name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7875ecf4f698314cb72e8e3a85b9ef21
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Time_frame"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2e9c93becadf5e4599b53f72102e2e5c
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_run_time"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ff2c3779fd8cd43a8803b98ae424c24
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_result"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43bd4bfb48d4a94784bc2ae4125f9c3f
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.QA_user"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x662e18041b242b4c978b12097a5c310f
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Remedy_desc"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb5fbb5d1aa94eb48b383b05a21aeef52
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Remedy_date"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x926d2e2225faf64781f1b79b1a1cad00
        End
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_expression"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc350bcc2706e674c9ebc660dc2279783
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Is_done"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x26c6c0f82df83e4fb395be9177ffe714
        End
        dbInteger "ColumnWidth" ="1095"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc395a6c772acea4fbd83963fc386f168
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_type"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x16dc91796099db4a8e7f3c0b6fe6bff2
        End
    End
End
Begin
    State =0
    Left =-451
    Top =160
    Right =849
    Bottom =915
    Left =-1
    Top =-1
    Right =1268
    Bottom =244
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =225
        Bottom =280
        Top =0
        Name ="tbl_QA_Results"
        Name =""
    End
End
