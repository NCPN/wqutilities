Operation =1
Option =0
Where ="(((qasub_Locations_with_coordinates.Location_ID) Is Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="qasub_Locations_with_coordinates"
    Name ="tbl_Sites"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Sites].[Site_code])=False,[Site_code],[tbl_Locations].[Park_code"
        "]) & '.' & [Location_code]"
    Alias ="Feat_name"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([Lo"
        "cation_type]<>'Incidental',[Location_code],IIf(IsNull([Site_code]),[Location_cod"
        "e],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])) & IIf([Location_type]='Inc"
        "idental','.' & [Species_code],''))"
    Alias ="Date_sampled"
    Expression ="Format([Start_date],\"yyyy mmm dd\")"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Locations_with_coordinates"
    Expression ="tbl_Locations.Location_ID = qasub_Locations_with_coordinates.Location_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tbl_Events.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =2
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
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
dbText "Description" ="Sampled locations without any coordinate records - all sampled locations must ha"
    "ve at least one coordinate record (including previous sample years)"
Begin
    Begin
        dbText "Name" ="Loc_code"
        dbInteger "ColumnWidth" ="1440"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1680
    Bottom =931
    Left =-1
    Top =-1
    Right =1677
    Bottom =170
    Left =0
    Top =0
    ColumnsShown =539
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
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =68
        Top =0
        Name ="qasub_Locations_with_coordinates"
        Name =""
    End
    Begin
        Left =440
        Top =6
        Right =536
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =574
        Top =6
        Right =670
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =708
        Top =6
        Right =804
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
