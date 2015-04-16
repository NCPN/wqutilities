Operation =1
Option =0
Where ="(((tbl_Locations.UTME_public) Is Null) AND ((tbl_Locations.UTMN_public) Is Not N"
    "ull)) OR (((tbl_Locations.UTME_public) Is Not Null) AND ((tbl_Locations.UTMN_pub"
    "lic) Is Null)) OR (((tbl_Locations.UTMN_public) Is Not Null) AND ((tbl_Locations"
    ".Public_offset) Is Null)) OR (((tbl_Locations.UTMN_public) Is Null) AND ((tbl_Lo"
    "cations.Public_offset) Is Not Null)) OR (((tbl_Locations.UTME_public) Is Not Nul"
    "l) AND ((Len(CStr(Round([UTME_public],0))))<>6)) OR (((tbl_Locations.UTMN_public"
    ") Is Not Null) AND ((Len(CStr(Round([UTMN_public],0))))<>7))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Sites].[Site_code])=False,[Site_code] & '.','') & [Location_code"
        "]"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.UTME_public"
    Expression ="tbl_Locations.UTMN_public"
    Expression ="tbl_Locations.Public_offset"
    Expression ="tbl_Locations.Loc_updated"
    Expression ="tbl_Locations.Loc_updated_by"
    Expression ="tbl_Locations.Location_ID"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
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
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Public UTM coordinates are incomplete or have the wrong number of digits; or the"
    "y are present and the public offset is missing; or public offset is present and "
    "the public coordinates are missing"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1148
    Bottom =360
    Left =-1
    Top =-1
    Right =1141
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =205
        Top =20
        Right =301
        Bottom =127
        Top =0
        Name ="tbl_Locations"
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
