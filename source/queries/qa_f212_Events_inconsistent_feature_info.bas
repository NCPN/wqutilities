Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Features_updated)=True) AND ((tbl_Features.Feature_"
    "ID) Is Null)) OR (((qasub_Events_scope_filter.Features_updated)=False) AND ((tbl"
    "_Features.Feature_ID) Is Not Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Features"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.Features_updated"
    Expression ="tbl_Features.Feature_updated"
    Expression ="tbl_Features.Feature_type"
    Expression ="tbl_Features.Feature_desc"
    Expression ="tbl_Features.Feature_status"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
    Alias ="varAutoFix"
    Expression ="\"qasub_Update_events_inconsistent_feature_info\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Features"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Features.Event_ID"
    Flag =2
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
dbText "Description" ="Events at locations where Features_updated = True but missing associated feature"
    " records, or having associated features where Features_updated = False"
dbBinary "GUID" = Begin
    0xa362952149189a47bbbce6c7a87d0e5e
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
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varFilter"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varAutoFix"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =62
    Top =84
    Right =1130
    Bottom =415
    Left =-1
    Top =-1
    Right =1061
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
        Left =246
        Top =8
        Right =366
        Bottom =145
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =404
        Top =6
        Right =500
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =591
        Top =6
        Right =705
        Bottom =143
        Top =0
        Name ="tbl_Features"
        Name =""
    End
End
