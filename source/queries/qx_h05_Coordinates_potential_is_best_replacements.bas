Operation =1
Option =0
Where ="(((tbl_GPS_Info.Is_better)=True) AND ((tbl_Coordinates.Is_best)=False) AND ((tbl"
    "_GPS_Info.Is_replacement)=False))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_GPS_Info"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Sites].[Site_code])=False,[Site_code] & '.','') & [Location_code"
        "]"
    Expression ="tbl_Locations.Rare_trans_pt"
    Alias ="Date_sampled"
    Expression ="Format([Start_date],\"yyyy mmm dd\")"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_GPS_Info.Is_better"
    Expression ="tbl_Coordinates.Is_best"
    Expression ="tbl_GPS_Info.Is_replacement"
    Expression ="tbl_Coordinates.Field_coord_source"
    Expression ="tbl_Coordinates.GPS_model"
    Expression ="tbl_Coordinates.Coordinate_notes"
    Expression ="tbl_GPS_Info.*"
End
Begin Joins
    LeftTable ="tbl_GPS_Info"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_GPS_Info.Coord_ID = tbl_Coordinates.Coord_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =3
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =3
End
Begin OrderBy
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
dbText "Description" ="Coordinates marked in tbl_GPS_Info as Is_better=True and having Is_best=False an"
    "d Is_replacement=False"
Begin
    Begin
        dbText "Name" ="tbl_GPS_Info.Is_better"
        dbInteger "ColumnWidth" ="2025"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1658
    Bottom =374
    Left =-1
    Top =-1
    Right =1611
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =664
        Top =6
        Right =760
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =530
        Top =6
        Right =626
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =399
        Top =11
        Right =495
        Bottom =118
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =113
        Top =6
        Right =209
        Bottom =113
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
    Begin
        Left =262
        Top =9
        Right =358
        Bottom =116
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
