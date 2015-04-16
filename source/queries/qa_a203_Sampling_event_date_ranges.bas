Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Location_ID) Is Not Null) AND ((qasub_Events_scope_"
    "filter.Start_date) Is Not Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
End
Begin OutputColumns
    Expression ="qasub_Events_scope_filter.Sample_year"
    Expression ="tbl_Locations.Park_code"
    Alias ="MinOfStart_date"
    Expression ="Min(qasub_Events_scope_filter.Start_date)"
    Alias ="MaxOfStart_date"
    Expression ="Max(qasub_Events_scope_filter.Start_date)"
    Alias ="varObject"
    Expression ="\"frm_Data_Gateway\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="qasub_Events_scope_filter.Sample_year"
    Flag =1
    Expression ="tbl_Locations.Park_code"
    Flag =0
End
Begin Groups
    Expression ="qasub_Events_scope_filter.Sample_year"
    GroupLevel =0
    Expression ="tbl_Locations.Park_code"
    GroupLevel =0
    Expression ="\"frm_Data_Gateway\""
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbText "Description" ="Returns the earliest and latest sample dates in the data set"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="varObject"
        dbInteger "ColumnWidth" ="1755"
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
    Bottom =188
    Left =0
    Top =0
    ColumnsShown =543
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
        Name ="qasub_Events_scope_filter"
        Name =""
    End
End
