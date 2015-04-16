dbMemo "SQL" ="SELECT tblProjects.ProjectID, tblLocations.StationID, tblLocations.[Station Name"
    "], tblVisits.START_DATE, tblCharacteristics.DISPLAY_NAME, tblResults.DETECTION_C"
    "ONDITION, tblResults.RESULT_TEXT, tblResults.LAB_REMARKS, tblResults.RESULT_COMM"
    "ENT, tblVisits.VISIT_COMMENT, tblResults.VALUE_STATUS\015\012FROM (tblProjects I"
    "NNER JOIN (tblLocations INNER JOIN tblVisits ON (tblLocations.LocSTATN_IS_NUMBER"
    " = tblVisits.LocSTATN_IS_NUMBER) AND (tblLocations.LocSTATN_ORG_ID = tblVisits.L"
    "ocSTATN_ORG_ID)) ON (tblProjects.LocProj_IS_NUMBER = tblVisits.LocProj_IS_NUMBER"
    ") AND (tblProjects.LocProj_ORG_ID = tblVisits.LocProj_ORG_ID)) INNER JOIN (tblCh"
    "aracteristics INNER JOIN (tblActivities INNER JOIN tblResults ON (tblActivities."
    "LocFdAct_IS_NUMBER = tblResults.LocFdAct_IS_NUMBER) AND (tblActivities.LocFdAct_"
    "ORG_ID = tblResults.LocFdAct_Org_ID)) ON (tblCharacteristics.LocCHDEF_IS_NUMBER "
    "= tblResults.LocChDef_IS_NUMBER) AND (tblCharacteristics.LocCHDEF_ORG_ID = tblRe"
    "sults.LocChDef_Org_ID)) ON (tblVisits.LocStVst_IS_NUMBER = tblActivities.LocStVs"
    "t_IS_NUMBER) AND (tblVisits.LocStVst_ORG_ID = tblActivities.LocStVst_ORG_ID)\015"
    "\012WHERE (((tblProjects.ProjectID)=\"NCPN_UTE\") AND ((tblVisits.START_DATE) Be"
    "tween #10/1/2010# And #9/30/2011#) AND ((tblCharacteristics.DISPLAY_NAME)=\"Temp"
    "erature, water\") AND ((tblResults.DETECTION_CONDITION)<>\"*Not Reported\") AND "
    "((tblResults.VALUE_STATUS)=\"P\") AND ((IIf(IsNumeric([RESULT_TEXT]),CDbl([RESUL"
    "T_TEXT]),-999))<0 Or (IIf(IsNumeric([RESULT_TEXT]),CDbl([RESULT_TEXT]),-999))>30"
    "))\015\012ORDER BY tblLocations.StationID, tblVisits.START_DATE, tblCharacterist"
    "ics.DISPLAY_NAME;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tblProjects.ProjectID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d70a385a9cb814fa430f1eafc1077ea
        End
    End
    Begin
        dbText "Name" ="tblLocations.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d691bd89eaa074e925e7125d095c3fa
        End
    End
    Begin
        dbText "Name" ="tblLocations.[Station Name]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xedfb956f5bc3564284bb4d0cf72484ec
        End
    End
    Begin
        dbText "Name" ="tblVisits.START_DATE"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8553c249353ff343b4128b2af44c5b34
        End
    End
    Begin
        dbText "Name" ="tblCharacteristics.DISPLAY_NAME"
        dbInteger "ColumnWidth" ="3705"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7cd6823932149c418837cd67f80ac8ef
        End
    End
    Begin
        dbText "Name" ="tblResults.VALUE_STATUS"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb3dbd65f1aa7bb4f9f00084549041748
        End
    End
    Begin
        dbText "Name" ="tblResults.LAB_REMARKS"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf988bc4679d48842835e1f63d51a6a30
        End
    End
    Begin
        dbText "Name" ="tblResults.RESULT_COMMENT"
        dbInteger "ColumnWidth" ="3000"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x06ac019a069f3e4fa172f0b523faddc0
        End
    End
    Begin
        dbText "Name" ="tblResults.DETECTION_CONDITION"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x297e2192af09dd4c9ec6ed9ad0b395e6
        End
    End
    Begin
        dbText "Name" ="tblResults.RESULT_TEXT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9c0f635d58d0e146af347e89ca967bfd
        End
    End
    Begin
        dbText "Name" ="tblVisits.VISIT_COMMENT"
        dbInteger "ColumnWidth" ="2850"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
