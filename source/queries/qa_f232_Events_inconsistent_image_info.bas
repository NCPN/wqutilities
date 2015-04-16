Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Photos_taken)=True) AND ((tbl_Images.Image_ID) Is N"
    "ull)) OR (((qasub_Events_scope_filter.Photos_taken)=False) AND ((tbl_Images.Imag"
    "e_ID) Is Not Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Images"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.Photos_taken"
    Expression ="tbl_Images.Frame_number"
    Expression ="tbl_Images.Image_label"
    Expression ="tbl_Images.Image_desc"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
    Alias ="varAutoFix"
    Expression ="\"qasub_Update_events_inconsistent_image_info\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Images"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Images.Event_ID"
    Flag =2
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
dbText "Description" ="Events where photos_taken = True but missing associated image records, or having"
    " associated image records where photos_taken = False"
dbBinary "GUID" = Begin
    0xe4d8490cbabfc24bb8e84c9476d4353f
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Images.Image_desc"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varAutoFix"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-4
    Top =-30
    Right =795
    Bottom =692
    Left =-1
    Top =-1
    Right =775
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
        Left =170
        Top =8
        Right =260
        Bottom =115
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =285
        Top =6
        Right =381
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =419
        Top =6
        Right =515
        Bottom =113
        Top =0
        Name ="tbl_Images"
        Name =""
    End
End
