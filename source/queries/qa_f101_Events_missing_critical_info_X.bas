Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Location_ID) Is Null)) OR (((qasub_Events_scope_fil"
    "ter.Project_code) Is Null)) OR (((qasub_Events_scope_filter.Start_date) Is Null)"
    ")"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qasub_Events_scope_filter.*"
    Alias ="varObject"
    Expression ="\"tbl_Events\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =3
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
dbText "Description" ="Missing location ID, project code, or start date"
Begin
    Begin
        dbText "Name" ="qasub_Events_scope_filter.tbl_Events.Event_notes"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1149
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =24
        Top =9
        Right =120
        Bottom =116
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =155
        Top =11
        Right =251
        Bottom =118
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =289
        Top =6
        Right =385
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
End
