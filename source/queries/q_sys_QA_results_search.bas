Operation =1
Option =0
Where ="(((tbl_QA_Results.Query_name) Like \"*\" & [Enter the search string] & \"*\")) O"
    "R (((tbl_QA_Results.Query_description) Like \"*\" & [Enter the search string] & "
    "\"*\")) OR (((tbl_QA_Results.Query_expression) Like \"*\" & [Enter the search st"
    "ring] & \"*\"))"
Begin InputTables
    Name ="tbl_QA_Results"
End
Begin OutputColumns
    Expression ="tbl_QA_Results.Query_name"
    Expression ="tbl_QA_Results.Data_scope"
    Expression ="tbl_QA_Results.Time_frame"
    Expression ="tbl_QA_Results.Query_description"
    Expression ="tbl_QA_Results.Query_expression"
    Expression ="tbl_QA_Results.Query_type"
    Expression ="tbl_QA_Results.Query_result"
    Expression ="tbl_QA_Results.Query_run_time"
    Expression ="tbl_QA_Results.Remedy_desc"
    Expression ="tbl_QA_Results.Remedy_date"
    Expression ="tbl_QA_Results.QA_user"
    Expression ="tbl_QA_Results.Is_done"
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
dbText "Description" ="QA query set revision tool - shows QA results with query names, definitions, or "
    "expression strings containing a user-defined search string"
dbBinary "GUID" = Begin
    0x5eb3fd6ac47bb848a0174efbbb433718
End
Begin
    Begin
        dbText "Name" ="tbl_QA_Results.Query_name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf7938984f064244a92f60902f94d2858
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xff9613bf64c23e47b58eb6210a49f3bb
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_expression"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcf1519ea2bf4fb41a99e142ed3633a0f
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Data_scope"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7f2eb991931fa4469bd6526ef44514d3
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Time_frame"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x338199aacd867642a8512c3be8bf3e2b
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_type"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf8556950c5bdb248b93b81e02ab499f7
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_result"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd7152213dd70da4aab18e7ddff72ebc6
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Query_run_time"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb658c45e512837449e237f315d522773
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Remedy_desc"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdea5987089653649b6f8f972164ea0a4
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Remedy_date"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcd19b15735ef694bbff609c77880c87f
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.QA_user"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x168b0f761022654692f143cb350f205b
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Is_done"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfc546884d47f4f4d822ccf4e9e84b011
        End
    End
End
Begin
    State =0
    Left =14
    Top =61
    Right =1314
    Bottom =605
    Left =-1
    Top =-1
    Right =1268
    Bottom =279
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =292
        Bottom =282
        Top =0
        Name ="tbl_QA_Results"
        Name =""
    End
End
