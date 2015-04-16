Operation =1
Option =0
Where ="(((tbl_Schedule.Calendar_year)=[Forms]![frm_Switchboard]![cTimeframe]))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="qsub_Best_coordinates"
    Name ="tbl_Schedule"
    Name ="tbl_Target_Coords"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Alias ="Scheduled"
    Expression ="tbl_Schedule.Calendar_year"
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Alias ="Nav_source"
    Expression ="IIf(IsNull([Coord_ID]),IIf(IsNull([tbl_Target_Coords].[Location_ID]),'ACK!','Tar"
        "get'),'Best')"
    Alias ="UTME"
    Expression ="IIf(IsNull([Coord_ID]),[Target_UTME],[UTM_east])"
    Alias ="UTMN"
    Expression ="IIf(IsNull([Coord_ID]),[Target_UTMN],[UTM_north])"
    Alias ="Nav_datum"
    Expression ="IIf(IsNull([Coord_ID]),[Target_datum],[Datum])"
    Expression ="qsub_Best_coordinates.Coord_type"
    Expression ="qsub_Best_coordinates.Est_horiz_error"
    Expression ="qsub_Best_coordinates.Elevation_m"
    Expression ="qsub_Best_coordinates.Slope_deg"
    Expression ="qsub_Best_coordinates.Aspect_deg"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qsub_Best_coordinates"
    Expression ="tbl_Locations.Location_ID = qsub_Best_coordinates.Location_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Target_Coords"
    Expression ="tbl_Locations.Location_ID = tbl_Target_Coords.Location_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Schedule"
    Expression ="tbl_Sites.Site_ID = tbl_Schedule.Site_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Schedule.Calendar_year"
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
dbText "Description" ="Navigation target coordinates to load into GPS units at the beginning of the fie"
    "ld season"
Begin
    Begin
        dbText "Name" ="Nav_source"
        dbInteger "ColumnWidth" ="1800"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1149
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =313
        Top =6
        Right =409
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =481
        Top =9
        Right =577
        Bottom =116
        Top =0
        Name ="qsub_Best_coordinates"
        Name =""
    End
    Begin
        Left =31
        Top =15
        Right =127
        Bottom =107
        Top =0
        Name ="tbl_Schedule"
        Name =""
    End
    Begin
        Left =628
        Top =5
        Right =724
        Bottom =112
        Top =0
        Name ="tbl_Target_Coords"
        Name =""
    End
    Begin
        Left =175
        Top =11
        Right =271
        Bottom =118
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
