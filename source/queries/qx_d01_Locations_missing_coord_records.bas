Operation =1
Option =0
Where ="(((qxsub_Locations_without_coordinates.Calendar_year)=CStr(Year([Start_date]))) "
    "AND ((qxsub_Locations_visited_multiple_times_in_a_year.Location_ID) Is Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="qxsub_Locations_without_coordinates"
    Name ="tbl_Target_Coords"
    Name ="tbl_Sites"
    Name ="tbl_Events"
    Name ="qxsub_Locations_visited_multiple_times_in_a_year"
End
Begin OutputColumns
    Expression ="qxsub_Locations_without_coordinates.Calendar_year"
    Expression ="tbl_Locations.Location_ID"
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([Lo"
        "cation_type]<>'Incidental',[Location_code],IIf(IsNull([Site_code]),[Location_cod"
        "e],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])))"
    Expression ="tbl_Locations.Rare_trans_pt"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_Target_Coords.Target_UTME"
    Expression ="tbl_Target_Coords.Target_UTMN"
    Expression ="tbl_Target_Coords.Target_datum"
    Expression ="tbl_Locations.UTME_public"
    Expression ="tbl_Locations.UTMN_public"
    Expression ="tbl_Locations.Public_offset"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qxsub_Locations_without_coordinates"
    Expression ="tbl_Locations.Location_ID = qxsub_Locations_without_coordinates.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Target_Coords"
    Expression ="tbl_Locations.Location_ID = tbl_Target_Coords.Location_ID"
    Flag =2
    LeftTable ="qxsub_Locations_without_coordinates"
    RightTable ="qxsub_Locations_visited_multiple_times_in_a_year"
    Expression ="qxsub_Locations_without_coordinates.Location_ID = qxsub_Locations_visited_multip"
        "le_times_in_a_year.Location_ID"
    Flag =2
    LeftTable ="qxsub_Locations_without_coordinates"
    RightTable ="qxsub_Locations_visited_multiple_times_in_a_year"
    Expression ="qxsub_Locations_without_coordinates.Calendar_year = qxsub_Locations_visited_mult"
        "iple_times_in_a_year.Calendar_year"
    Flag =2
End
Begin OrderBy
    Expression ="qxsub_Locations_without_coordinates.Calendar_year"
    Flag =1
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
dbText "Description" ="Locations that have sampling events but are missing event coordinate records - m"
    "any/most of these may be valid, especially transect origins (no field coords col"
    "lected and so no coord record created yet)"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbInteger "ColumnWidth" ="3330"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Locations.Rare_trans_pt"
        dbInteger "ColumnWidth" ="1635"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1658
    Bottom =456
    Left =-1
    Top =-1
    Right =1607
    Bottom =226
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =338
        Top =8
        Right =434
        Bottom =115
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =719
        Top =6
        Right =971
        Bottom =83
        Top =0
        Name ="qxsub_Locations_without_coordinates"
        Name =""
    End
    Begin
        Left =484
        Top =31
        Right =580
        Bottom =138
        Top =0
        Name ="tbl_Target_Coords"
        Name =""
    End
    Begin
        Left =183
        Top =83
        Right =279
        Bottom =190
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =642
        Top =89
        Right =738
        Bottom =196
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =1030
        Top =7
        Right =1126
        Bottom =99
        Top =0
        Name ="qxsub_Locations_visited_multiple_times_in_a_year"
        Name =""
    End
End
