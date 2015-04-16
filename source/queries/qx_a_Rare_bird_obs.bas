Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)='Incidental'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Alias ="Calendar_year"
    Expression ="Year([Start_date])"
    Expression ="tbl_Locations.Park_code"
    Alias ="Feat_name"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([Lo"
        "cation_type]<>'Incidental',[Location_code],IIf(IsNull([Site_code]),[Location_cod"
        "e],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])) & IIf([Location_type]='Inc"
        "idental','.' & [Species_code],''))"
    Expression ="tbl_Locations.Rare_trans_pt"
    Expression ="tbl_Coordinates.Field_UTME"
    Expression ="tbl_Coordinates.Field_UTMN"
    Expression ="tbl_Coordinates.Field_datum"
    Expression ="tbl_Coordinates.Field_coord_source"
    Expression ="tbl_Coordinates.GPS_file_name"
    Expression ="tbl_Coordinates.GPS_model"
    Expression ="tbl_Coordinates.Is_best"
    Expression ="tbl_Coordinates.UTM_east"
    Expression ="tbl_Coordinates.UTM_north"
    Expression ="tbl_Coordinates.Coord_type"
    Expression ="tbl_Coordinates.Datum"
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
    Flag =2
End
Begin OrderBy
    Expression ="Year([Start_date])"
    Flag =1
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Locations.Rare_trans_pt"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Quick view of rare bird observations (Loc type='Incidental')"
Begin
    Begin
        dbText "Name" ="Feat_name"
        dbInteger "ColumnWidth" ="1755"
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
    Bottom =144
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
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =440
        Top =6
        Right =536
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =574
        Top =6
        Right =670
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =708
        Top =6
        Right =804
        Bottom =113
        Top =4
        Name ="tbl_Coordinates"
        Name =""
    End
End
