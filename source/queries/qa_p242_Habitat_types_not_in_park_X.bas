Operation =1
Option =0
Where ="(((tbl_Locations.Park_code)='NOCA') AND ((tlu_PMR_Veg_Type.At_NOCA)=False)) OR ("
    "((tbl_Locations.Park_code)='OLYM') AND ((tlu_PMR_Veg_Type.At_OLYM)=False)) OR (("
    "(tbl_Locations.Park_code)='MORA') AND ((tlu_PMR_Veg_Type.At_MORA)=False)) OR ((("
    "tbl_Locations.Park_code)='SAJH') AND ((tlu_PMR_Veg_Type.At_SAJH)=False)) OR (((t"
    "bl_Locations.Park_code)='LEWI') AND ((tlu_PMR_Veg_Type.At_LEWI)=False))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tlu_PMR_Veg_Type"
    Name ="tbl_Habitat"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc"
    Expression ="[Site_code] & '.' & [Location_code]"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="tbl_Habitat.PMR_code"
    Expression ="tbl_Habitat.Habitat_notes"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="tlu_PMR_Veg_Type"
    RightTable ="tbl_Habitat"
    Expression ="tlu_PMR_Veg_Type.PMR_type_code = tbl_Habitat.PMR_code"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Habitat"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Habitat.Event_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="[Site_code] & '.' & [Location_code]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Points with habitat types that are not indicated in the lookup table to be assoc"
    "iated with that particular park"
Begin
End
Begin
    State =0
    Left =46
    Top =77
    Right =1090
    Bottom =519
    Left =-1
    Top =-1
    Right =1037
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
        Left =180
        Top =9
        Right =300
        Bottom =146
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =338
        Top =6
        Right =434
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =690
        Top =13
        Right =874
        Bottom =150
        Top =0
        Name ="tlu_PMR_Veg_Type"
        Name =""
    End
    Begin
        Left =513
        Top =8
        Right =633
        Bottom =145
        Top =0
        Name ="tbl_Habitat"
        Name =""
    End
End
