dbMemo "SQL" ="SELECT *\015\012FROM qry_Duplicates\015\012WHERE (((qry_Duplicates.START_DATE) B"
    "etween #10/1/2000# And #9/30/2014#) AND ((qry_Duplicates.StationID) In ('4951260"
    "','4951265')))\015\012ORDER BY qry_Duplicates.START_DATE, qry_Duplicates.Station"
    "ID, qry_Duplicates.DISPLAY_NAME;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xfca8dbeccf19c14eaf265171054f8de5
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qry_Duplicates.tblResults.RESULT_TEXT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3c4f46ed3b6ea34e88afb006420ef69f
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblResults.LAB_REMARKS"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaf469d39e080474caf70df1085cebdb6
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblProjects.ProjectID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf2a9400949cd2a44bdc68fce2b168202
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblVisits.START_DATE"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5ce7d498c672bd4895f9f9ad2e1c0a42
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblLocations.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ca3337fc7371542b4fb1976117527ea
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblCharacteristics.DISPLAY_NAME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x264014590f8dee4abf27270c43a500c8
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblLocations.[Station Name]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb602519bc20af949b849da5866fbe38b
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblResults.DETECTION_CONDITION"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x58690f640eac214bbba7b68d88061354
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblResults.RESULT_COMMENT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x37f4f4ae90368a4d8963b83edfb48ed8
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblVisits.VISIT_COMMENT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x25769be62be0564ba80a1cb4d3726531
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.tblResults.VALUE_STATUS"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9fdf3b09d4f1e4408dd81d191bddcb2c
        End
    End
    Begin
        dbText "Name" ="qry_Duplicates.Numeric_Result"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x23279ad0fc8a424188ceb7326f790bf6
        End
    End
End
