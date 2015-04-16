Operation =1
Option =0
Where ="(((tblCharacteristics.FIELD_LAB)=\"Field\"))"
Begin InputTables
    Name ="tblProjects"
    Name ="tblLocations"
    Name ="tblActivities"
    Name ="tblVisits"
    Name ="tblResults"
    Name ="tblCharacteristics"
End
Begin OutputColumns
    Expression ="tblLocations.StationID"
    Expression ="tblLocations.[Station Name]"
    Expression ="tblCharacteristics.DISPLAY_NAME"
    Expression ="tblVisits.START_DATE"
    Expression ="tblResults.VALUE_STATUS"
    Expression ="tblProjects.ProjectID"
    Expression ="tblResults.DETECTION_CONDITION"
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
        dbText "Name" ="tblResults.DETECTION_CONDITION"
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =3
    Top =35
    Right =1342
    Bottom =783
    Left =-1
    Top =-1
    Right =1307
    Bottom =166
    Left =96
    Top =0
    ColumnsShown =539
    Begin
        Left =-48
        Top =12
        Right =96
        Bottom =156
        Top =0
        Name ="tblProjects"
        Name =""
    End
    Begin
        Left =144
        Top =12
        Right =288
        Bottom =156
        Top =0
        Name ="tblLocations"
        Name =""
    End
    Begin
        Left =642
        Top =14
        Right =786
        Bottom =158
        Top =0
        Name ="tblActivities"
        Name =""
    End
    Begin
        Left =382
        Top =14
        Right =572
        Bottom =158
        Top =0
        Name ="tblVisits"
        Name =""
    End
    Begin
        Left =849
        Top =13
        Right =1008
        Bottom =155
        Top =0
        Name ="tblResults"
        Name =""
    End
    Begin
        Left =1064
        Top =13
        Right =1208
        Bottom =157
        Top =0
        Name ="tblCharacteristics"
        Name =""
    End
End
