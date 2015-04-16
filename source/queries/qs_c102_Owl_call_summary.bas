Operation =1
Option =0
Where ="(((qsub_Event_filters.Owl_call_made)=True) AND ((qsub_Loc_filters.Location_type)"
    "<>'Incidental') AND ((tbl_Coordinates.Is_best)=True Or (tbl_Coordinates.Is_best)"
    " Is Null))"
Begin InputTables
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Event_filters"
    Name ="tlu_Project_Taxa"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Expression ="qsub_Event_filters.Event_year"
    Expression ="qsub_Loc_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Expression ="qsub_Event_filters.Start_date"
    Expression ="qsub_Event_filters.Owl_call_made"
    Alias ="Response"
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name)"
    Expression ="qsub_Event_filters.Owl_call_details"
    Expression ="qsub_Loc_filters.Location_type"
    Expression ="tbl_Coordinates.Elevation_m"
    Expression ="tbl_Coordinates.Slope_deg"
    Expression ="tbl_Coordinates.Aspect_deg"
End
Begin Joins
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =1
    LeftTable ="qsub_Event_filters"
    RightTable ="tlu_Project_Taxa"
    Expression ="qsub_Event_filters.Response_taxon = tlu_Project_Taxa.Taxon_ID"
    Flag =2
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tlu_Project_Taxa_1"
    Expression ="tlu_Project_Taxa.Refers_to = tlu_Project_Taxa_1.Taxon_ID"
    Flag =2
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Event_filters"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_ID"
    Flag =1
    LeftTable ="qsub_Event_filters"
    RightTable ="tbl_Coordinates"
    Expression ="qsub_Event_filters.Event_ID = tbl_Coordinates.Event_ID"
    Flag =2
End
Begin OrderBy
    Expression ="qsub_Event_filters.Event_year"
    Flag =1
    Expression ="qsub_Loc_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
    Expression ="qsub_Loc_filters.Location_code"
    Flag =0
    Expression ="qsub_Event_filters.Start_date"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Results from owl calls made at transect points"
dbBinary "GUID" = Begin
    0xcc58aef7e2ad6049895b81e6aa250d67
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Response"
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Event_filters.Event_year"
        dbInteger "ColumnWidth" ="1080"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Loc_filters.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Site_filters.Site_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Loc_filters.Location_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Event_filters.Start_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Event_filters.Owl_call_made"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Event_filters.Owl_call_details"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Loc_filters.Location_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Elevation_m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Slope_deg"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Aspect_deg"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =421
    Left =-1
    Top =-1
    Right =1058
    Bottom =157
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =136
        Bottom =136
        Top =0
        Name ="qsub_Site_filters"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="qsub_Loc_filters"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="qsub_Event_filters"
        Name =""
    End
    Begin
        Left =717
        Top =31
        Right =813
        Bottom =138
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =843
        Top =31
        Right =939
        Bottom =138
        Top =0
        Name ="tlu_Project_Taxa_1"
        Name =""
    End
    Begin
        Left =538
        Top =6
        Right =679
        Bottom =113
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
