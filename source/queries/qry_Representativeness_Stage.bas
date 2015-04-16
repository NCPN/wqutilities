Operation =1
Option =0
Where ="(((tblCharacteristics.DISPLAY_NAME)=\"Hydrograph Limb (choice list)\") AND ((tbl"
    "Results.RESULT_TEXT)<>\"*Not Reported\") AND ((tblCharacteristics.FIELD_LAB)=\"F"
    "ield\"))"
Begin InputTables
    Name ="tblProjects"
    Name ="tblLocations"
    Name ="tblActivities"
    Name ="tblVisits"
    Name ="tblResults"
    Name ="tblCharacteristics"
End
Begin OutputColumns
    Expression ="tblProjects.ProjectID"
    Expression ="tblLocations.StationID"
    Expression ="tblLocations.[Station Name]"
    Expression ="tblVisits.START_DATE"
    Expression ="tblCharacteristics.DISPLAY_NAME"
    Alias ="Stage"
    Expression ="CStr([RESULT_TEXT])"
End
Begin Joins
    LeftTable ="tblActivities"
    RightTable ="tblResults"
    Expression ="tblActivities.LocFdAct_IS_NUMBER = tblResults.LocFdAct_IS_NUMBER"
    Flag =1
    LeftTable ="tblActivities"
    RightTable ="tblResults"
    Expression ="tblActivities.LocFdAct_ORG_ID = tblResults.LocFdAct_Org_ID"
    Flag =1
    LeftTable ="tblCharacteristics"
    RightTable ="tblResults"
    Expression ="tblCharacteristics.LocCHDEF_IS_NUMBER = tblResults.LocChDef_IS_NUMBER"
    Flag =1
    LeftTable ="tblCharacteristics"
    RightTable ="tblResults"
    Expression ="tblCharacteristics.LocCHDEF_ORG_ID = tblResults.LocChDef_Org_ID"
    Flag =1
    LeftTable ="tblLocations"
    RightTable ="tblVisits"
    Expression ="tblLocations.LocSTATN_IS_NUMBER = tblVisits.LocSTATN_IS_NUMBER"
    Flag =1
    LeftTable ="tblLocations"
    RightTable ="tblVisits"
    Expression ="tblLocations.LocSTATN_ORG_ID = tblVisits.LocSTATN_ORG_ID"
    Flag =1
    LeftTable ="tblProjects"
    RightTable ="tblVisits"
    Expression ="tblProjects.LocProj_IS_NUMBER = tblVisits.LocProj_IS_NUMBER"
    Flag =1
    LeftTable ="tblProjects"
    RightTable ="tblVisits"
    Expression ="tblProjects.LocProj_ORG_ID = tblVisits.LocProj_ORG_ID"
    Flag =1
    LeftTable ="tblVisits"
    RightTable ="tblActivities"
    Expression ="tblVisits.LocStVst_IS_NUMBER = tblActivities.LocStVst_IS_NUMBER"
    Flag =1
    LeftTable ="tblVisits"
    RightTable ="tblActivities"
    Expression ="tblVisits.LocStVst_ORG_ID = tblActivities.LocStVst_ORG_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tblLocations.StationID"
    Flag =0
    Expression ="tblVisits.START_DATE"
    Flag =0
    Expression ="tblCharacteristics.DISPLAY_NAME"
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
        dbText "Name" ="Stage"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x92fcd181adadaa42b965282ae96accd3
        End
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1339
    Bottom =748
    Left =-1
    Top =-1
    Right =1307
    Bottom =134
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="tblProjects"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="tblLocations"
        Name =""
    End
    Begin
        Left =738
        Top =14
        Right =882
        Bottom =158
        Top =0
        Name ="tblActivities"
        Name =""
    End
    Begin
        Left =478
        Top =14
        Right =668
        Bottom =158
        Top =0
        Name ="tblVisits"
        Name =""
    End
    Begin
        Left =945
        Top =13
        Right =1104
        Bottom =155
        Top =0
        Name ="tblResults"
        Name =""
    End
    Begin
        Left =1160
        Top =13
        Right =1304
        Bottom =157
        Top =0
        Name ="tblCharacteristics"
        Name =""
    End
End
