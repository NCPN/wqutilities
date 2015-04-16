Operation =1
Option =0
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Images"
    Name ="tbl_Features"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Features.Feature_type"
    Expression ="tbl_Features.Feature_desc"
    Expression ="tbl_Features.Feature_status"
    Alias ="Image_date"
    Expression ="tbl_Events.Start_date"
    Expression ="tbl_Images.Image_type"
    Expression ="tbl_Images.Image_label"
    Expression ="tbl_Images.Image_desc"
    Expression ="tbl_Images.Frame_number"
    Expression ="tbl_Images.Image_filename"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Features"
    RightTable ="tbl_Images"
    Expression ="tbl_Features.Feature_ID = tbl_Images.Feature_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Images"
    Expression ="tbl_Events.Event_ID = tbl_Images.Event_ID"
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
dbText "Description" ="Image records that are linked to a record in tbl_Features"
Begin
    Begin
        dbText "Name" ="tbl_Images.Image_label"
        dbInteger "ColumnWidth" ="2175"
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
        Left =524
        Top =11
        Right =652
        Bottom =148
        Top =0
        Name ="tbl_Images"
        Name =""
    End
    Begin
        Left =713
        Top =6
        Right =809
        Bottom =113
        Top =0
        Name ="tbl_Features"
        Name =""
    End
    Begin
        Left =389
        Top =12
        Right =485
        Bottom =119
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
