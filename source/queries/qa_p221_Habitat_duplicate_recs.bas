Operation =1
Option =0
Where ="(((tbl_Habitat.Event_ID) In (SELECT [Event_ID] FROM [tbl_Habitat] As Tmp GROUP B"
    "Y [Event_ID],[Habitat_num],[PMR_code] HAVING Count(*)>1  And [Habitat_num] = [tb"
    "l_Habitat].[Habitat_num] And [PMR_code] = [tbl_Habitat].[PMR_code])))"
Begin InputTables
    Name ="tbl_Habitat"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc"
    Expression ="[Site_code] & '.' & [Location_code]"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="tbl_Habitat.Habitat_num"
    Expression ="tbl_Habitat.PMR_code"
    Expression ="tbl_Habitat.Canopy_cover"
    Expression ="tbl_Habitat.Tree_size_class"
    Expression ="tbl_Habitat.Habitat_notes"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Habitat"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Habitat.Event_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Locations"
    Expression ="qasub_Events_scope_filter.Location_ID = tbl_Locations.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="[Site_code] & '.' & [Location_code]"
    Flag =0
    Expression ="tbl_Habitat.Event_ID"
    Flag =0
    Expression ="tbl_Habitat.Habitat_num"
    Flag =0
    Expression ="tbl_Habitat.PMR_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Duplicate habitat assessment records on event, habitat_num, and PMR code"
Begin
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1145
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =430
        Top =13
        Right =524
        Bottom =109
        Top =0
        Name ="tbl_Habitat"
        Name =""
    End
    Begin
        Left =290
        Top =9
        Right =386
        Bottom =116
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =26
        Top =11
        Right =122
        Bottom =118
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =166
        Top =14
        Right =262
        Bottom =121
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
End
