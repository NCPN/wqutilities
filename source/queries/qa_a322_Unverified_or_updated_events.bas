Operation =1
Option =0
Where ="(((IIf(IsNull([Event_ID])=False,IIf(IsNull([Certified_date])=False And ([Certifi"
    "ed_date]>=[Updated_date] Or IsNull([Updated_date])),'Certified',IIf(IsNull([Veri"
    "fied_date]),'Unverified',IIf([Verified_date]<[Updated_date],'Updated','Verified'"
    "))))) Not In ('Verified','Updated','Certified')))"
Begin InputTables
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
End
Begin OutputColumns
    Alias ="QA_status"
    Expression ="IIf(IsNull([Event_ID])=False,IIf(IsNull([Certified_date])=False And ([Certified_"
        "date]>=[Updated_date] Or IsNull([Updated_date])),'Certified',IIf(IsNull([Verifie"
        "d_date]),'Unverified',IIf([Verified_date]<[Updated_date],'Updated','Verified')))"
        ")"
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.QA_notes"
    Expression ="qasub_Events_scope_filter.Entered_by"
    Expression ="qasub_Events_scope_filter.Entered_date"
    Expression ="qasub_Events_scope_filter.Updated_by"
    Expression ="qasub_Events_scope_filter.Updated_date"
    Expression ="qasub_Events_scope_filter.Verified_by"
    Expression ="qasub_Events_scope_filter.Verified_date"
    Expression ="qasub_Events_scope_filter.Certified_by"
    Expression ="qasub_Events_scope_filter.Certified_date"
    Alias ="varObject"
    Expression ="IIf([Location_type]='Incidental','frm_Rare_Bird_Obs','frm_Data_Entry')"
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
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
    Expression ="IIf(IsNull([Event_ID])=False,IIf(IsNull([Certified_date])=False And ([Certified_"
        "date]>=[Updated_date] Or IsNull([Updated_date])),'Certified',IIf(IsNull([Verifie"
        "d_date]),'Unverified',IIf([Verified_date]<[Updated_date],'Updated','Verified')))"
        ")"
    Flag =0
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
dbText "Description" ="Sampling events that are unverified"
dbBinary "GUID" = Begin
    0x1478db133500f44bb25c47442281963d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="QA_status"
        dbLong "AggregateType" ="-1"
    End
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
        dbText "Name" ="qasub_Events_scope_filter.QA_notes"
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
        dbText "Name" ="qasub_Events_scope_filter.Certified_by"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Certified_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varFilter"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1496
    Bottom =997
    Left =-1
    Top =-1
    Right =1426
    Bottom =138
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =313
        Top =11
        Right =409
        Bottom =118
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
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
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
End
