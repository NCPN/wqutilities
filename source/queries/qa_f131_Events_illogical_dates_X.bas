Operation =1
Option =0
Where ="(((IIf((([Start_date])+Nz([Start_time]))>(([End_date])+Nz([End_time])),True))=Tr"
    "ue)) OR (((qasub_Events_scope_filter.Updated_date)<[Entered_date])) OR (((qasub_"
    "Events_scope_filter.Verified_date)<[Entered_date]))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.Start_time"
    Expression ="qasub_Events_scope_filter.End_date"
    Expression ="qasub_Events_scope_filter.End_time"
    Expression ="qasub_Events_scope_filter.Entered_date"
    Expression ="qasub_Events_scope_filter.Updated_date"
    Expression ="qasub_Events_scope_filter.Verified_date"
    Alias ="varObject"
    Expression ="\"tbl_Events\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
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
dbText "Description" ="Events with start date/times occurring after end date/times; or records that hav"
    "e update or verified dates prior to the record creation date"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =410
    Left =-1
    Top =-1
    Right =1083
    Bottom =180
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
        Left =171
        Top =5
        Right =282
        Bottom =112
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =320
        Top =7
        Right =416
        Bottom =114
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
End
