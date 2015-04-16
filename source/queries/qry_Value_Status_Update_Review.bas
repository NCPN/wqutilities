Operation =1
Option =0
Where ="(((tblProjects.ProjectID)=\"NCPN_UTE\") AND ((tblLocationStationGroups.ID_CODE)="
    "\"brca\" Or (tblLocationStationGroups.ID_CODE)=\"care\" Or (tblLocationStationGr"
    "oups.ID_CODE)=\"zion\") AND ((tblVisits.START_DATE) Between #9/1/2005# And #9/30"
    "/2013#) AND ((tblCharacteristics.FIELD_LAB)=\"Lab\") AND ((tblResults.VALUE_STAT"
    "US)=\"p\"))"
Begin InputTables
    Name ="tblProjects"
    Name ="tblLocationProjectAssignment"
    Name ="tblLocations"
    Name ="tblLocationStationGroupAssignment"
    Name ="tblLocationStationGroups"
    Name ="tblVisits"
    Name ="tblActivities"
    Name ="tblResults"
    Name ="tblCharacteristics"
End
Begin OutputColumns
    Expression ="tblProjects.ProjectID"
    Expression ="tblLocationStationGroups.ID_CODE"
    Expression ="tblLocations.StationID"
    Expression ="tblLocations.[Station Name]"
    Expression ="tblVisits.START_DATE"
    Expression ="tblCharacteristics.FIELD_LAB"
    Expression ="tblResults.VALUE_STATUS"
    Expression ="tblCharacteristics.LocCharNameCode"
    Expression ="tblResults.DETECTION_CONDITION"
    Expression ="tblResults.RESULT_TEXT"
    Expression ="tblResults.VALUE_TYPE"
    Expression ="tblResults.LAB_REMARKS"
    Expression ="tblResults.RESULT_COMMENT"
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
    LeftTable ="tblLocationStationGroups"
    RightTable ="tblLocationStationGroupAssignment"
    Expression ="tblLocationStationGroups.LocStatnGRP_IS_NUMBER = tblLocationStationGroupAssignme"
        "nt.LocStatnGrp_IS_NUMBER"
    Flag =1
    LeftTable ="tblLocationStationGroups"
    RightTable ="tblLocationStationGroupAssignment"
    Expression ="tblLocationStationGroups.LocStatnGRP_ORG_ID = tblLocationStationGroupAssignment."
        "LocStatnGrp_ORG_ID"
    Flag =1
    LeftTable ="tblLocations"
    RightTable ="tblLocationStationGroupAssignment"
    Expression ="tblLocations.LocSTATN_IS_NUMBER = tblLocationStationGroupAssignment.LocStatn_IS_"
        "NUMBER"
    Flag =1
    LeftTable ="tblLocations"
    RightTable ="tblLocationStationGroupAssignment"
    Expression ="tblLocations.LocSTATN_ORG_ID = tblLocationStationGroupAssignment.LocStatn_ORG_ID"
    Flag =1
    LeftTable ="tblLocations"
    RightTable ="tblLocationProjectAssignment"
    Expression ="tblLocations.LocSTATN_IS_NUMBER = tblLocationProjectAssignment.LocSTATN_IS_NUMBE"
        "R"
    Flag =1
    LeftTable ="tblLocations"
    RightTable ="tblLocationProjectAssignment"
    Expression ="tblLocations.LocSTATN_ORG_ID = tblLocationProjectAssignment.LocSTATN_ORG_ID"
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
    RightTable ="tblLocationProjectAssignment"
    Expression ="tblProjects.LocProj_IS_NUMBER = tblLocationProjectAssignment.LocProj_IS_NUMBER"
    Flag =1
    LeftTable ="tblProjects"
    RightTable ="tblLocationProjectAssignment"
    Expression ="tblProjects.LocProj_ORG_ID = tblLocationProjectAssignment.LocProj_ORG_ID"
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
    Expression ="tblProjects.ProjectID"
    Flag =0
    Expression ="tblLocationStationGroups.ID_CODE"
    Flag =0
    Expression ="tblLocations.StationID"
    Flag =0
    Expression ="tblVisits.START_DATE"
    Flag =0
    Expression ="tblCharacteristics.LocCharNameCode"
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
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
Begin
    Begin
        dbText "Name" ="tblProjects.ProjectID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblLocations.StationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblLocations.[Station Name]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblVisits.START_DATE"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblResults.VALUE_TYPE"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblResults.LAB_REMARKS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblResults.RESULT_COMMENT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblCharacteristics.LocCharNameCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblCharacteristics.FIELD_LAB"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblResults.VALUE_STATUS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblResults.DETECTION_CONDITION"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblResults.RESULT_TEXT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblLocationStationGroups.ID_CODE"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =34
    Top =23
    Right =1287
    Bottom =548
    Left =-1
    Top =-1
    Right =1221
    Bottom =237
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
        Name ="tblLocationProjectAssignment"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="tblLocations"
        Name =""
    End
    Begin
        Left =624
        Top =12
        Right =768
        Bottom =156
        Top =0
        Name ="tblLocationStationGroupAssignment"
        Name =""
    End
    Begin
        Left =816
        Top =12
        Right =960
        Bottom =156
        Top =0
        Name ="tblLocationStationGroups"
        Name =""
    End
    Begin
        Left =178
        Top =168
        Right =322
        Bottom =312
        Top =0
        Name ="tblVisits"
        Name =""
    End
    Begin
        Left =368
        Top =162
        Right =512
        Bottom =306
        Top =0
        Name ="tblActivities"
        Name =""
    End
    Begin
        Left =550
        Top =159
        Right =710
        Bottom =303
        Top =0
        Name ="tblResults"
        Name =""
    End
    Begin
        Left =724
        Top =158
        Right =868
        Bottom =302
        Top =0
        Name ="tblCharacteristics"
        Name =""
    End
End
