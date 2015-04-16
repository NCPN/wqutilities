Operation =1
Option =0
Where ="(((tbl_Coordinates.Is_best)=True))"
Having ="(((Count(tbl_Coordinates.Coord_ID))>1))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Sites].[Site_code])=False,[Site_code] & '.','') & [Location_code"
        "]"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Alias ="Last_year_sampled"
    Expression ="Max(Year([Start_date]))"
    Alias ="N_best_recs"
    Expression ="Count(tbl_Coordinates.Coord_ID)"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & tbl_Locations.Location_ID & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
Begin Groups
    Expression ="tbl_Locations.Park_code"
    GroupLevel =0
    Expression ="IIf(IsNull([tbl_Sites].[Site_code])=False,[Site_code] & '.','') & [Location_code"
        "]"
    GroupLevel =0
    Expression ="tbl_Locations.Location_type"
    GroupLevel =0
    Expression ="tbl_Locations.Location_status"
    GroupLevel =0
    Expression ="\"frm_Data_Browser\""
    GroupLevel =0
    Expression ="\"Location_ID='\" & tbl_Locations.Location_ID & \"'\""
    GroupLevel =0
    Expression ="\"Location_ID\""
    GroupLevel =0
    Expression ="tbl_Sites.Site_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_code"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Locations with more than one best set of coordinates - each location should have"
    " one and only one record identified as best"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="N_best_recs"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x76faec08ffaea545a801f16b1f76850e
        End
    End
    Begin
        dbText "Name" ="Last_year_sampled"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0xfb4c43974094914694d936ead3bd86ce
        End
    End
    Begin
        dbText "Name" ="varObject"
        dbBinary "GUID" = Begin
            0xc5ced9b41a73454d96d194a2d6073dc9
        End
    End
    Begin
        dbText "Name" ="varFilter"
        dbBinary "GUID" = Begin
            0x4f8c0ecd4ad44e4b9eef35504cf52239
        End
    End
    Begin
        dbText "Name" ="varArgs"
        dbBinary "GUID" = Begin
            0xd4e9a3ab1e883b429a96bcd43da510b2
        End
    End
End
Begin
    State =0
    Left =10
    Top =74
    Right =1122
    Bottom =422
    Left =-1
    Top =-1
    Right =1105
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =181
        Top =11
        Right =301
        Bottom =148
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =342
        Top =17
        Right =438
        Bottom =124
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =525
        Top =17
        Right =645
        Bottom =154
        Top =0
        Name ="tbl_Coordinates"
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
End
