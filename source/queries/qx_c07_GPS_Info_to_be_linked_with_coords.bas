Operation =1
Option =0
Where ="(((tbl_GPS_Info.Coord_ID) Is Null) AND ((tbl_GPS_Info.Flag)=True) AND ((tbl_GPS_"
    "Info.Location_ID) Is Not Null) AND ((qx_c02_GPS_Info_no_event.GPS_ID) Is Null))"
Begin InputTables
    Name ="tbl_GPS_Info"
    Name ="qx_c02_GPS_Info_no_event"
End
Begin OutputColumns
    Alias ="GPS_year"
    Expression ="CStr(Year(tbl_GPS_Info.GPS_date))"
    Expression ="tbl_GPS_Info.*"
End
Begin Joins
    LeftTable ="tbl_GPS_Info"
    RightTable ="qx_c02_GPS_Info_no_event"
    Expression ="tbl_GPS_Info.GPS_ID=qx_c02_GPS_Info_no_event.GPS_ID"
    Flag =2
End
Begin OrderBy
    Expression ="CStr(Year(tbl_GPS_Info.GPS_date))"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="The final set of records to be linked with coordinates records:  Loc ID is not n"
    "ull, Coord ID is null, Flag = True, and not in the set of records without matchi"
    "ng events"
Begin
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =352
    Left =-1
    Top =-1
    Right =1105
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
        Name ="qx_c02_GPS_Info_no_event"
        Name =""
    End
End
