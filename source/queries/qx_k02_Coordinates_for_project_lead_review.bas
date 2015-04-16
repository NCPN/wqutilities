Operation =1
Option =0
Where ="(((CStr(Year([Start_date]))) Like Nz([Filter by year (or blank to show all):],\""
    "*\")) AND ((tbl_Locations.Park_code) Like Nz([Filter by park (or blank to show a"
    "ll):],\"*\")) AND ((tbl_Locations.Location_type) Not In (IIf([Show rare bird obs"
    "? (Y/N)]='N','Incidental','Z'))) AND ((IIf([Is_best],'Best','All'))=IIf([Show on"
    "ly best coords? (Y/N)]='Y','Best','All') Or (IIf([Is_best],'Best','All'))='Best'"
    "))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Coordinates"
    Name ="tbl_Events"
    Name ="tbl_Sites"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
    Name ="tbl_GPS_Info"
End
Begin OutputColumns
    Alias ="Sample_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Sites.Panel_type"
    Expression ="tbl_Sites.Panel_name"
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
    Expression ="tbl_GPS_Info.Is_better"
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
    Expression ="tbl_Locations.Location_ID"
    Expression ="tbl_Coordinates.Event_ID"
    Expression ="tbl_Coordinates.Coord_ID"
    Expression ="tbl_Locations.Travel_notes"
    Expression ="tbl_Events.Event_notes"
End
Begin Joins
    LeftTable ="tbl_Coordinates"
    RightTable ="tbl_GPS_Info"
    Expression ="tbl_Coordinates.Coord_ID = tbl_GPS_Info.Coord_ID"
    Flag =2
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
    Expression ="tbl_Events.Start_date"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Shows all coordinates to be mapped and reviewed by the project lead to evaluate "
    "'Better' coordinates and finalize 'Best' coordinates prior to certification"
Begin
    Begin
        dbText "Name" ="tbl_Coordinates.Event_ID"
        dbInteger "ColumnWidth" ="2256"
        dbBoolean "ColumnHidden" ="0"
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
        Left =502
        Top =6
        Right =622
        Bottom =143
        Top =3
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =329
        Top =17
        Right =435
        Bottom =139
        Top =23
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =39
        Top =22
        Right =135
        Bottom =129
        Top =6
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
    Begin
        Left =928
        Top =6
        Right =1024
        Bottom =113
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
End
