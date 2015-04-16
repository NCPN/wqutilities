dbMemo "SQL" ="SELECT qsub_Loc_filters.Location_ID, Year([Start_date]) AS Missing_yr\015\012FRO"
    "M (qsub_Site_filters INNER JOIN qsub_Loc_filters ON qsub_Site_filters.Site_ID = "
    "qsub_Loc_filters.Site_ID) INNER JOIN (qsub_Event_filters LEFT JOIN tbl_Habitat O"
    "N qsub_Event_filters.Event_ID = tbl_Habitat.Event_ID) ON qsub_Loc_filters.Locati"
    "on_ID = qsub_Event_filters.Location_ID\015\012WHERE (((qsub_Loc_filters.Location"
    "_type)<>'Incidental' And (qsub_Loc_filters.Location_type)<>'Origin') AND ((tbl_H"
    "abitat.Habitat_num) Is Null));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Events without habitat data records where location type <>'Incidental' and <>'Or"
    "igin'"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xb0451088dc796846a747ff47bdaec3ce
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Missing_yr"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb31090761bcdd044adc876333cc7297e
        End
    End
End
