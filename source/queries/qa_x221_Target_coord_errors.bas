Operation =1
Option =0
Where ="(((tbl_Target_Coords.Target_UTME) Is Null)) OR (((tbl_Target_Coords.Target_UTMN)"
    " Is Null)) OR (((tbl_Target_Coords.Target_UTMN) Is Not Null) AND ((tbl_Target_Co"
    "ords.Target_datum) Is Null)) OR (((tbl_Target_Coords.Target_updated)<[Target_cre"
    "ated_date])) OR (((tbl_Target_Coords.Target_UTME) Is Not Null) AND ((Len(CStr(Ro"
    "und([Target_UTME],0))))<>6)) OR (((tbl_Target_Coords.Target_UTMN) Is Not Null) A"
    "ND ((Len(CStr(Round([Target_UTMN],0))))<>7))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Target_Coords"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Sites].[Site_code])=False,[Site_code] & '.','') & [Location_code"
        "]"
    Expression ="tbl_Target_Coords.Target_UTME"
    Expression ="tbl_Target_Coords.Target_UTMN"
    Expression ="tbl_Target_Coords.Target_datum"
    Expression ="tbl_Target_Coords.Target_notes"
    Expression ="tbl_Target_Coords.Target_created_date"
    Expression ="tbl_Target_Coords.Target_updated"
    Expression ="tbl_Target_Coords.Target_updated_by"
    Expression ="tbl_Locations.Location_ID"
    Alias ="varObject"
    Expression ="\"tbl_Target_Coords\""
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Target_Coords"
    Expression ="tbl_Locations.Location_ID = tbl_Target_Coords.Location_ID"
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
dbText "Description" ="Target coordinates with incomplete UTMs, the wrong number of digits, missing dat"
    "um, or illogical created/updated dates"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =0
    Left =62
    Top =84
    Right =1130
    Bottom =432
    Left =-1
    Top =-1
    Right =1061
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =217
        Top =22
        Right =313
        Bottom =129
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =381
        Top =22
        Right =477
        Bottom =129
        Top =0
        Name ="tbl_Target_Coords"
        Name =""
    End
    Begin
        Left =65
        Top =18
        Right =161
        Bottom =125
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
