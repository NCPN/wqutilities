Operation =6
Option =0
Begin InputTables
    Name ="tbl_Events"
    Name ="tbl_Locations"
End
Begin OutputColumns
    Alias ="Sample_year"
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =2
    Expression ="tbl_Locations.Park_code"
    GroupLevel =2
    Alias ="QA_status"
    Expression ="IIf(IsNull([Event_ID])=False,IIf(IsNull([Certified_date])=False And ([Certified_"
        "date]>=[Updated_date] Or IsNull([Updated_date])),'Certified',IIf(IsNull([Verifie"
        "d_date]),'Unverified',IIf([Verified_date]<[Updated_date],'Updated','Verified')))"
        ")"
    GroupLevel =1
    Alias ="N"
    Expression ="Count(tbl_Events.Event_ID)"
    Alias ="Cert_date"
    Expression ="Min(tbl_Events.Certified_date)"
    GroupLevel =2
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="CStr(Year([Start_date]))"
    Flag =1
End
Begin Groups
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =2
    Expression ="tbl_Locations.Park_code"
    GroupLevel =2
    Expression ="IIf(IsNull([Event_ID])=False,IIf(IsNull([Certified_date])=False And ([Certified_"
        "date]>=[Updated_date] Or IsNull([Updated_date])),'Certified',IIf(IsNull([Verifie"
        "d_date]),'Unverified',IIf([Verified_date]<[Updated_date],'Updated','Verified')))"
        ")"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Event records by QA status. Immediately after running the certification query, a"
    "ll records should have a status of 'Certified'. Other statuses indicate incomple"
    "te updates; simultaneous edits by another user; or client computer clock(s) out "
    "of synchrony."
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd3a3b0b3755fe64c813e0dab15eb1cfd
End
Begin
    Begin
        dbText "Name" ="Sample_year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x23f26aa6433a4d40a48150d11acc5ddf
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe2b2cacff210734da4dd7617d9b674ed
        End
    End
    Begin
        dbText "Name" ="Certified"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5b33f18de3417740969f7ec84b18a778
        End
    End
    Begin
        dbText "Name" ="Unverified"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbee8882d1b8b8d44af8eebaffc8eceeb
        End
    End
    Begin
        dbText "Name" ="Updated"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa3b42a058f75c1448e2bd02376dc4b2a
        End
    End
    Begin
        dbText "Name" ="Verified"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaaa969e51dc6204ea8021499af0e0528
        End
    End
    Begin
        dbText "Name" ="tbl_Events.Certified_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MaxOfCertified_date"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MinOfCertified_date"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Cert_date"
        dbInteger "ColumnWidth" ="1230"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0036d90418d33f0004d33f00bcfcb003
        End
        dbText "Format" ="Short Date"
    End
End
Begin
    State =0
    Left =70
    Top =29
    Right =1475
    Bottom =976
    Left =-1
    Top =-1
    Right =1373
    Bottom =76
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Events"
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
