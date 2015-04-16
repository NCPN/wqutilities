Operation =1
Option =0
Where ="(((tbl_Habitat.PMR_code) Is Null)) OR (((tbl_Habitat.Canopy_cover) Is Null) AND "
    "((tlu_PMR_Veg_Type.Is_forested)=True)) OR (((tbl_Habitat.Tree_size_class) Is Nul"
    "l) AND ((tlu_PMR_Veg_Type.Is_forested)=True)) OR (((tbl_Habitat.PMR_code) Is Not"
    " Null) AND ((tlu_PMR_Veg_Type.PMR_type_desc) Is Null))"
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
    Expression ="tbl_Habitat.Habitat_num"
    Expression ="tbl_Habitat.PMR_code"
    Alias ="In_lookup_table"
    Expression ="IIf(IsNull([PMR_type_code]),IIf(IsNull([PMR_code])=False,'Missing from lookup'),"
        "'Yes')"
    Expression ="tbl_Habitat.Canopy_cover"
    Expression ="tbl_Habitat.Tree_size_class"
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
    Flag =3
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
    Expression ="tbl_Habitat.Habitat_num"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing PMR code; or missing canopy cover or tree size class for forested vegeta"
    "tion types; or PMR code is not in the veg type lookup"
Begin
    Begin
        dbText "Name" ="tbl_Habitat.Habitat_notes"
        dbInteger "ColumnWidth" ="5205"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="In_lookup_table"
        dbInteger "ColumnWidth" ="1500"
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
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =648
        Top =7
        Right =768
        Bottom =144
        Top =0
        Name ="tlu_PMR_Veg_Type"
        Name =""
    End
    Begin
        Left =500
        Top =7
        Right =620
        Bottom =144
        Top =0
        Name ="tbl_Habitat"
        Name =""
    End
End
