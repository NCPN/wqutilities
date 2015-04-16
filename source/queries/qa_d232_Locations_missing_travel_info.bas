Operation =1
Option =0
Where ="(((tbl_Locations.Park_code) Not In ('SAJH','LEWI')) AND ((tbl_Locations.Location"
    "_type)<>'Incidental' And (tbl_Locations.Location_type)<>'Origin') AND ((tbl_Loca"
    "tions.Trail_or_road)='Off trail' Or (tbl_Locations.Trail_or_road) Is Null) AND ("
    "(tbl_Locations.Azimuth_to_point) Is Null)) OR (((tbl_Locations.Park_code) Not In"
    " ('SAJH','LEWI')) AND ((tbl_Locations.Location_type)<>'Incidental' And (tbl_Loca"
    "tions.Location_type)<>'Origin') AND ((tbl_Locations.Direction_changed)=True) AND"
    " ((tbl_Locations.Reason_for_change) Is Null)) OR (((tbl_Locations.Park_code) Not"
    " In ('SAJH','LEWI')) AND ((tbl_Locations.Location_type)<>'Incidental' And (tbl_L"
    "ocations.Location_type)<>'Origin') AND ((tbl_Locations.Travel_notes) Is Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="tbl_Locations.Trail_or_road"
    Expression ="tbl_Locations.Azimuth_to_point"
    Expression ="tbl_Locations.Direction_changed"
    Expression ="tbl_Locations.Reason_for_change"
    Expression ="tbl_Locations.Travel_notes"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
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
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Sample points (except transect origins, incidental obs, or small park points) mi"
    "ssing azimuth to point (where off trail or unknown), or travel notes, or missing"
    " a reason for azimuth direction changes where direction changed = 'Yes'"
dbBoolean "OrderByOn" ="-1"
dbText "DatasheetFontName" ="Arial"
dbInteger "DatasheetFontHeight" ="9"
dbInteger "DatasheetFontWeight" ="400"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="33554432"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =1154
    Bottom =750
    Left =-1
    Top =-1
    Right =1149
    Bottom =185
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
        Left =198
        Top =7
        Right =321
        Bottom =159
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =359
        Top =6
        Right =455
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
End
