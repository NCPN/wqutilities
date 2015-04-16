Operation =1
Option =1
Where ="(((qry_Duplicates.START_DATE) Between #10/1/2000# And #9/30/2014#) AND ((qry_Dup"
    "licates.StationID) In ('4951260','495126')))"
Begin InputTables
    Name ="qry_Duplicates"
End
Begin OutputColumns
End
Begin OrderBy
    Expression ="qry_Duplicates.START_DATE"
    Flag =0
    Expression ="qry_Duplicates.StationID"
    Flag =0
    Expression ="qry_Duplicates.DISPLAY_NAME"
    Flag =0
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
dbBinary "GUID" = Begin
    0x49f31d61cc25964a91dba74b1c4233e1
End
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
Begin
    State =0
    Left =0
    Top =40
    Right =910
    Bottom =804
    Left =-1
    Top =-1
    Right =878
    Bottom =430
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qry_Duplicates"
        Name =""
    End
End
