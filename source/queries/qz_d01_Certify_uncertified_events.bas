Operation =4
Option =0
Where ="(((IIf(IsNull([Event_ID])=False,IIf(IsNull([Certified_date])=False And ([Certifi"
    "ed_date]>=[Updated_date] Or IsNull([Updated_date])),'Certified',IIf(IsNull([Veri"
    "fied_date]),'Unverified',IIf([Verified_date]<[Updated_date],'Updated','Verified'"
    ")))))<>'Certified') AND ((\"Yes\")=[Are you sure you want to certify all uncerti"
    "fied events? (Yes/No)]))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
End
Begin OutputColumns
    Name ="tbl_Events.Certified_by"
    Expression ="[Enter_the_certified_by_name:]"
    Name ="tbl_Events.Certified_date"
    Expression ="Now()"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Certifies uncertified event records by filling in Certified_date with Now(), and"
    " Certified_by with the name specified by the user"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbBinary "GUID" = Begin
    0xdf3e28cd6b16674799d760a017662e1b
End
Begin
    Begin
        dbText "Name" ="tbl_Events.Travel_notes"
        dbInteger "ColumnWidth" ="4515"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Events.Travel_notes_action"
        dbInteger "ColumnWidth" ="1845"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Orig_travel_notes"
        dbInteger "ColumnWidth" ="4245"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Loc_event"
        dbInteger "ColumnWidth" ="2340"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Events.Certified_by"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Events.Updated_date"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1496
    Bottom =997
    Left =-1
    Top =-1
    Right =1464
    Bottom =224
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
