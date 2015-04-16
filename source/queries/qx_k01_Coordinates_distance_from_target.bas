Operation =1
Option =0
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Target_Coords"
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
    Expression ="tbl_Coordinates.Is_best"
    Alias ="Target_to_final_m"
    Expression ="Sqr(([FinalX_diff]*[FinalX_diff])+([FinalY_diff]*[FinalY_diff]))"
    Alias ="Target_to_field_m"
    Expression ="Sqr(([TFX_diff]*[TFX_diff])+([TFY_diff]*[TFY_diff]))"
    Expression ="tbl_Coordinates.UTM_east"
    Expression ="tbl_Coordinates.UTM_north"
    Expression ="tbl_Coordinates.Coord_type"
    Expression ="tbl_Coordinates.Datum"
    Expression ="tbl_Coordinates.Est_horiz_error"
    Expression ="tbl_Coordinates.Field_UTME"
    Expression ="tbl_Coordinates.Field_UTMN"
    Expression ="tbl_Coordinates.Field_datum"
    Expression ="tbl_Coordinates.Field_horiz_error"
    Expression ="tbl_Coordinates.Field_offset_m"
    Expression ="tbl_Coordinates.Field_offset_azimuth"
    Expression ="tbl_Coordinates.Field_coord_source"
    Expression ="tbl_Coordinates.GPS_file_name"
    Expression ="tbl_Coordinates.GPS_model"
    Expression ="tbl_Coordinates.Source_citation"
    Expression ="tbl_Target_Coords.Target_UTME"
    Expression ="tbl_Target_Coords.Target_UTMN"
    Expression ="tbl_Target_Coords.Target_datum"
    Expression ="tbl_Locations.Location_ID"
    Expression ="tbl_Coordinates.Event_ID"
    Expression ="tbl_Coordinates.Coord_ID"
    Alias ="TFX_diff"
    Expression ="Nz([Target_UTME],[Field_UTME])-Nz([Field_UTME],[Target_UTME])"
    Alias ="TFY_diff"
    Expression ="Nz([Target_UTMN],[Field_UTMN])-Nz([Field_UTMN],[Target_UTMN])"
    Alias ="FinalX_diff"
    Expression ="Nz([Target_UTME],[UTM_East])-Nz([UTM_East],[Target_UTME])"
    Alias ="FinalY_diff"
    Expression ="Nz([Target_UTMN],[UTM_North])-Nz([UTM_North],[Target_UTMN])"
    Expression ="tbl_Locations.Travel_notes"
    Expression ="tbl_Events.Event_notes"
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
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Target_Coords"
    Expression ="tbl_Locations.Location_ID = tbl_Target_Coords.Location_ID"
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
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Distance of final and field coordinates from target UTMs - large discrepancies m"
    "ay mean that the GPS record was matched to the wrong location"
Begin
    Begin
        dbText "Name" ="tbl_Coordinates.Event_ID"
        dbInteger "ColumnWidth" ="2256"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Target_to_final_m"
        dbInteger "ColumnWidth" ="1815"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Fixed"
        dbByte "DecimalPlaces" ="1"
    End
    Begin
        dbText "Name" ="Target_to_field_m"
        dbInteger "ColumnWidth" ="1815"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Fixed"
        dbByte "DecimalPlaces" ="1"
    End
    Begin
        dbText "Name" ="Loc_code"
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Feat_name"
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1680
    Bottom =934
    Left =-1
    Top =-1
    Right =1677
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =169
        Top =25
        Right =265
        Bottom =132
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =302
        Top =111
        Right =398
        Bottom =218
        Top =0
        Name ="tbl_Target_Coords"
        Name =""
    End
    Begin
        Left =502
        Top =6
        Right =622
        Bottom =143
        Top =3
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =370
        Top =8
        Right =476
        Bottom =130
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =39
        Top =22
        Right =135
        Bottom =129
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =660
        Top =6
        Right =756
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =794
        Top =6
        Right =890
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
