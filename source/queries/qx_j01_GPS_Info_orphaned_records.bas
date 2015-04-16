Operation =1
Option =0
Where ="(((tbl_Locations.Location_ID) Is Null)) OR (((tbl_Coordinates.Coord_ID) Is Null)"
    ")"
Begin InputTables
    Name ="tbl_GPS_Info"
    Name ="tbl_Locations"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Locations.Location_code"
    Alias ="GPS_year"
    Expression ="IIf(IsNull([GPS_date])=False,CStr(Year([GPS_date])))"
    Expression ="tbl_GPS_Info.*"
End
Begin Joins
    LeftTable ="tbl_GPS_Info"
    RightTable ="tbl_Locations"
    Expression ="tbl_GPS_Info.Location_ID = tbl_Locations.Location_ID"
    Flag =2
    LeftTable ="tbl_GPS_Info"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_GPS_Info.Coord_ID = tbl_Coordinates.Coord_ID"
    Flag =2
End
Begin OrderBy
    Expression ="IIf(IsNull([GPS_date])=False,CStr(Year([GPS_date])))"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Shows remaining GPS Info records where Loc ID or Coord ID is not populated - as "
    "a final check only"
Begin
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
        Name ="tbl_GPS_Info"
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
        Name ="tbl_Coordinates"
        Name =""
    End
End
