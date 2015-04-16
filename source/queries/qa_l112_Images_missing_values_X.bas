Operation =1
Option =0
Where ="(((tbl_Images.Image_label) Is Null) AND ((tbl_Images.Image_desc) Is Null)) OR (("
    "(tbl_Images.Frame_number) Is Null)) OR (((tbl_Images.Image_filename) Is Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Images"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="tbl_Images.Image_type"
    Expression ="tbl_Images.Image_label"
    Expression ="tbl_Images.Image_desc"
    Expression ="tbl_Images.Frame_number"
    Expression ="tbl_Images.Image_filename"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Images"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Images.Event_ID"
    Flag =1
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
dbText "Description" ="Image records missing both image label and image description, or frame number, o"
    "r image filename"
dbBoolean "OrderByOn" ="0"
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
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =410
    Left =-1
    Top =-1
    Right =1083
    Bottom =180
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
        Left =226
        Top =8
        Right =339
        Bottom =130
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =377
        Top =6
        Right =473
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =547
        Top =9
        Right =675
        Bottom =146
        Top =0
        Name ="tbl_Images"
        Name =""
    End
End
