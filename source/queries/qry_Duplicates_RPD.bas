dbMemo "SQL" ="SELECT ov.ProjectID, ov.START_DATE, ov.StationID, d.StationID AS Dupe_StationID,"
    " ov.DISPLAY_NAME, ov.[Station Name], ov.DETECTION_CONDITION, ov.RESULT_TEXT, ov."
    "LAB_REMARKS, ov.RESULT_COMMENT, ov.VISIT_COMMENT, ov.VALUE_STATUS, ov.Numeric_Re"
    "sult, SWITCH( ov.StationID = '4951260',  '4951261', ov.StationID = '4951265', 49"
    "51266) AS Dupe_Numeric_Result\015\012FROM qry_Duplicates AS ov\015\012WHERE ov.S"
    "TART_DATE Between #10/1/2000# And #9/30/2014#\015\012AND ov.StationID In ('49512"
    "60','4951265')\015\012ORDER BY ov.START_DATE, ov.StationID, ov.DISPLAY_NAME;\015"
    "\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x4cd4d7157addd244bfb5657d8a6483ce
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="ov.ProjectID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.StationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.DISPLAY_NAME"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.DETECTION_CONDITION"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.RESULT_TEXT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.LAB_REMARKS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.RESULT_COMMENT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.VISIT_COMMENT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.VALUE_STATUS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.Numeric_Result"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ov.START_DATE"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.[Station Name]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Dupe_Numeric_Result"
        dbInteger "ColumnWidth" ="2625"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Dupe_StationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblProjects.ProjectID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblVisits.START_DATE"
        dbInteger "ColumnWidth" ="1815"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblLocations.StationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblCharacteristics.DISPLAY_NAME"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblLocations.[Station Name]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblResults.DETECTION_CONDITION"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblResults.RESULT_TEXT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblResults.LAB_REMARKS"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblResults.RESULT_COMMENT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblVisits.VISIT_COMMENT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.tblResults.VALUE_STATUS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d1.Numeric_Result"
        dbInteger "ColumnWidth" ="1965"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.Visit_Start_Date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.Location_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d.Numeric_Result"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ov.[Station \015\015\012Name]"
        dbLong "AggregateType" ="-1"
    End
End
