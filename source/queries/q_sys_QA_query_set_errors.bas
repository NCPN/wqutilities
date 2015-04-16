dbMemo "SQL" ="SELECT tbl_QA_Results.Query_name, \"No longer exists, but in result set\" AS Iss"
    "ue, tbl_QA_Results.Time_frame\015\012FROM MSysObjects RIGHT JOIN tbl_QA_Results "
    "ON MSysObjects.Name = tbl_QA_Results.Query_name\015\012WHERE (((MSysObjects.Name"
    ") Is Null))\015\012\015\012UNION SELECT MSysObjects.Name AS Query_name, \"Not in"
    " result set\" AS Issue, tbl_QA_Results.Time_frame\015\012FROM MSysObjects LEFT J"
    "OIN tbl_QA_Results ON MSysObjects.Name = tbl_QA_Results.Query_name\015\012WHERE "
    "(((MSysObjects.Name) Like \"qa_*\") AND ((tbl_QA_Results.Query_name) Is Null))\015"
    "\012\015\012UNION SELECT tbl_QA_Results.Query_name, \"Not running properly\" AS "
    "Issue, tbl_QA_Results.Time_frame\015\012FROM tbl_QA_Results\015\012WHERE (((tbl_"
    "QA_Results.Query_run_time) Is Null)) OR (((tbl_QA_Results.Query_result) Is Null)"
    ");\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbText "Description" ="QA query set revision tool - shows queries that are not running correctly, or wh"
    "ere there is a mismatch between the query set name and the results set name (for"
    " new or renamed queries); may choose to rename results set queries as renumberin"
    "g occurs"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="tbl_QA_Results.Query_name"
        dbInteger "ColumnWidth" ="5295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x73c62675718ec840b0063ad1eb580a48
        End
    End
    Begin
        dbText "Name" ="Issue"
        dbInteger "ColumnWidth" ="2865"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7f45ec0a7d941d45a27c3464df7dcc33
        End
    End
    Begin
        dbText "Name" ="tbl_QA_Results.Time_frame"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xee4125cc05455d4ba9987dce8e45a574
        End
    End
End
