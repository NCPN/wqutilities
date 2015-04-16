Operation =1
Option =0
Where ="(((tbl_Locations.Park_code) Not In ('LEWI','SAJH')) AND ((tbl_Locations.Location"
    "_type)='Origin') AND ((tbl_Target_Coords.Location_ID) Is Null)) OR (((tbl_Locati"
    "ons.Park_code) In ('LEWI','SAJH')) AND ((tbl_Locations.Location_type) Not In ('I"
    "ncidental','Origin')) AND ((tbl_Locations.Location_status)<>'Retired') AND ((tbl"
    "_Target_Coords.Location_ID) Is Null))"
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
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
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
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Target_Coords"
    Expression ="tbl_Locations.Location_ID = tbl_Target_Coords.Location_ID"
    Flag =2
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
dbText "Description" ="Transect origins at large parks or grid points at small parks that are missing t"
    "arget coordinate records"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
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
    Top =26
    Right =1148
    Bottom =374
    Left =-1
    Top =-1
    Right =1141
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =186
        Top =24
        Right =282
        Bottom =131
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =331
        Top =22
        Right =427
        Bottom =129
        Top =0
        Name ="tbl_Target_Coords"
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
