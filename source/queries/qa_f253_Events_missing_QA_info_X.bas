Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Entered_by) Is Null)) OR (((qasub_Events_scope_filt"
    "er.Entered_date) Is Null)) OR (((qasub_Events_scope_filter.Updated_by) Is Null) "
    "AND ((qasub_Events_scope_filter.Updated_date) Is Not Null)) OR (((qasub_Events_s"
    "cope_filter.Updated_by) Is Not Null) AND ((qasub_Events_scope_filter.Updated_dat"
    "e) Is Null)) OR (((qasub_Events_scope_filter.Verified_by) Is Null) AND ((qasub_E"
    "vents_scope_filter.Verified_date) Is Not Null)) OR (((qasub_Events_scope_filter."
    "Verified_by) Is Not Null) AND ((qasub_Events_scope_filter.Verified_date) Is Null"
    "))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Locations"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.Entered_by"
    Expression ="qasub_Events_scope_filter.Entered_date"
    Expression ="qasub_Events_scope_filter.Updated_by"
    Expression ="qasub_Events_scope_filter.Updated_date"
    Expression ="qasub_Events_scope_filter.Verified_by"
    Expression ="qasub_Events_scope_filter.Verified_date"
    Expression ="qasub_Events_scope_filter.QA_notes"
    Expression ="qasub_Events_scope_filter.Event_notes"
    Alias ="varObject"
    Expression ="\"tbl_Events\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Locations"
    Expression ="qasub_Events_scope_filter.Location_ID = tbl_Locations.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Event records without entered date/by entries, or incomplete updated date/by or "
    "verified date/by entries"
dbBinary "GUID" = Begin
    0x205300b3b2eeda49803c6aaf87ae0f18
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Start_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Entered_by"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Entered_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Updated_by"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Updated_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Verified_by"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Verified_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.QA_notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Event_notes"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =28
    Top =94
    Right =791
    Bottom =688
    Left =-1
    Top =-1
    Right =739
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =300
        Top =13
        Right =396
        Bottom =120
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =170
        Top =6
        Right =266
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
End
