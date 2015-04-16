dbMemo "SQL" ="SELECT tbl_Locations.Park_code, tbl_Locations.Location_ID, IIf(IsNull([Site_code"
    "]),[tbl_Locations].[Park_code],[Site_code]) & IIf([Location_type]<>'Origin','.' "
    "& [Location_code]) AS Loc_code, IIf([Location_type]='Origin','Transect origin',I"
    "If([Location_type]='New' Or [Location_type]='Survey' Or [Location_type]='Additio"
    "nal','Sample point',IIf([Location_type]='Incidental','Rare bird obs',[Location_t"
    "ype]))) AS Loc_type, qfsub_Data_Gateway_uncertified.Start_date, Year([Start_date"
    "]) AS Sample_year, IIf(IsNull([Updated_by]),[Entered_by],[Updated_by]) AS Update"
    "_by, IIf(IsNull([Updated_date]),[Entered_date],[Updated_date]) AS Updated, qfsub"
    "_Data_Gateway_uncertified.Event_ID, tbl_Sites.Site_ID, tbl_Sites.Panel_type, qfs"
    "ub_Data_Gateway_uncertified.Rec_status\015\012FROM (tbl_Sites RIGHT JOIN (tbl_Lo"
    "cations LEFT JOIN qfsub_Data_Gateway_uncertified ON tbl_Locations.Location_ID = "
    "qfsub_Data_Gateway_uncertified.Location_ID) ON tbl_Sites.Site_ID = tbl_Locations"
    ".Site_ID) LEFT JOIN tbl_Schedule ON tbl_Sites.Site_ID = tbl_Schedule.Site_ID\015"
    "\012WHERE (((tbl_Locations.Location_status)='Active' Or (tbl_Locations.Location_"
    "status)='Proposed') AND ((tbl_Schedule.Calendar_year)=[Forms]![frm_Switchboard]!"
    "[fsub_DbAdmin].[Form]![tbxTimeframe])) OR (((qfsub_Data_Gateway_uncertified.Even"
    "t_ID) Is Not Null) AND ((tbl_Locations.Location_status)='Incidental'))\015\012OR"
    "DER BY tbl_Locations.Park_code, IIf(IsNull([Site_code]),[tbl_Locations].[Park_co"
    "de],[Site_code]) & IIf([Location_type]<>'Origin','.' & [Location_code]), Year([S"
    "tart_date]) DESC;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbText "Description" ="Data gateway locations and associated events - scheduled sites, uncertified even"
    "ts"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbByte "RecordsetType" ="0"
dbBinary "GUID" = Begin
    0xf955c3b9e550c841981dabce77bf4fdc
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbInteger "ColumnWidth" ="3900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sample_year"
        dbInteger "ColumnWidth" ="1176"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Loc_code"
        dbInteger "ColumnWidth" ="1308"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Updated"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Update_by"
        dbInteger "ColumnWidth" ="1836"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbInteger "ColumnWidth" ="984"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Loc_type"
        dbInteger "ColumnWidth" ="1392"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qfsub_Data_Gateway_uncertified.Start_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qfsub_Data_Gateway_uncertified.Event_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Panel_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qfsub_Data_Gateway_uncertified.Rec_status"
        dbLong "AggregateType" ="-1"
    End
End
