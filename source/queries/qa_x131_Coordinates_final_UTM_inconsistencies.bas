﻿Operation =1
Option =0
Where ="(((tbl_Coordinates.UTM_east) Is Null) AND ((tbl_Coordinates.UTM_north) Is Not Nu"
    "ll)) OR (((tbl_Coordinates.UTM_east) Is Not Null) AND ((tbl_Coordinates.UTM_nort"
    "h) Is Null)) OR (((tbl_Coordinates.UTM_north) Is Not Null) AND ((tbl_Coordinates"
    ".Coord_type) Is Null)) OR (((tbl_Coordinates.UTM_north) Is Not Null) AND ((tbl_C"
    "oordinates.Datum) Is Null)) OR (((tbl_Coordinates.UTM_north) Is Null) AND ((tbl_"
    "Coordinates.Est_horiz_error) Is Not Null)) OR (((tbl_Coordinates.UTM_north) Is N"
    "ull) AND ((tbl_Coordinates.Coord_type) Is Not Null)) OR (((Len(Fix([UTM_east])))"
    "<>6)) OR (((Len(Fix([UTM_north])))<>7))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Coordinates"
    Name ="tbl_Events"
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
    Expression ="tbl_Coordinates.*"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tbl_Events.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =3
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
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
dbText "Description" ="Final UTM coordinates are incomplete or have the wrong number of digits; or they"
    " are present and the coordinate type or datum is missing; or coord type or an es"
    "timated error value is present and the final coordinates are missing"
Begin
    Begin
        dbText "Name" ="tbl_Coordinates.Coord_created_date"
        dbInteger "ColumnWidth" ="1932"
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
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =166
        Top =7
        Right =262
        Bottom =114
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =448
        Top =10
        Right =588
        Bottom =147
        Top =2
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =304
        Top =9
        Right =400
        Bottom =116
        Top =0
        Name ="tbl_Events"
        Name =""
    End
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
        Left =626
        Top =6
        Right =722
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =760
        Top =6
        Right =856
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
