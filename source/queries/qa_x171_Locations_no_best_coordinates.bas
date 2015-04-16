Operation =1
Option =0
Having ="(((Count(qxsub_Coordinates_with_best_assigned.Location_ID))=0))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="qxsub_Coordinates_with_best_assigned"
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
    Alias ="N_sample_years"
    Expression ="Count(tbl_Events.Event_ID)"
    Alias ="Last_year_sampled"
    Expression ="Max(Year([Start_date]))"
    Alias ="N_coord_recs"
    Expression ="Count(tbl_Coordinates.Coord_ID)"
    Alias ="N_best_recs"
    Expression ="Count(qxsub_Coordinates_with_best_assigned.Location_ID)"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qxsub_Coordinates_with_best_assigned"
    Expression ="tbl_Locations.Location_ID = qxsub_Coordinates_with_best_assigned.Location_ID"
    Flag =2
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
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
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
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Locations where no best coordinates have been assigned - each location should ha"
    "ve one and only one record identified as best"
Begin
    Begin
        dbText "Name" ="N_sample_years"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x7ab6a17f2322934bbec1c8d6f802e10f
        End
    End
    Begin
        dbText "Name" ="Last_year_sampled"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x47a0971dee2b884ea5cb16c5dde57053
        End
    End
    Begin
        dbText "Name" ="N_coord_recs"
        dbBinary "GUID" = Begin
            0x34b5d7777e70d5488b4171d0fc0eab51
        End
    End
    Begin
        dbText "Name" ="N_best_recs"
        dbBinary "GUID" = Begin
            0xd9400f831a3dc344b803202861d95350
        End
    End
End
Begin
    State =0
    Left =22
    Top =73
    Right =1112
    Bottom =421
    Left =-1
    Top =-1
    Right =1083
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =169
        Top =8
        Right =289
        Bottom =145
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =402
        Top =13
        Right =597
        Bottom =75
        Top =0
        Name ="qxsub_Coordinates_with_best_assigned"
        Name =""
    End
    Begin
        Left =614
        Top =33
        Right =710
        Bottom =140
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =762
        Top =12
        Right =882
        Bottom =149
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
