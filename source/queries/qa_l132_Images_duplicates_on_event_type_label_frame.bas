Operation =1
Option =0
Where ="(((tbl_Images.Event_ID) In (SELECT [Event_ID] FROM [tbl_Images] As Tmp GROUP BY "
    "[Event_ID],[Image_type],[Image_label],[Frame_number] HAVING Count(*)>1  And [Ima"
    "ge_type] = [tbl_Images].[Image_type] And [Image_label] = [tbl_Images].[Image_lab"
    "el] And [Frame_number] = [tbl_Images].[Frame_number])))"
Begin InputTables
    Name ="tbl_Images"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="tbl_Images.Image_type"
    Expression ="tbl_Images.Image_label"
    Expression ="tbl_Images.Frame_number"
    Expression ="tbl_Images.Image_ID"
    Expression ="tbl_Images.Image_desc"
    Expression ="tbl_Images.Image_date"
    Expression ="tbl_Images.Image_source"
    Expression ="tbl_Images.Image_quality"
    Expression ="tbl_Images.Is_edited_version"
    Expression ="tbl_Images.Object_format"
    Expression ="tbl_Images.Orig_format"
    Expression ="tbl_Images.Image_edit_notes"
    Expression ="tbl_Images.Image_is_active"
    Expression ="tbl_Images.Image_root_path"
    Expression ="tbl_Images.Image_project_path"
    Expression ="tbl_Images.Image_filename"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Images"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Images.Event_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Images.Event_ID"
    Flag =0
    Expression ="tbl_Images.Image_type"
    Flag =0
    Expression ="tbl_Images.Image_label"
    Flag =0
    Expression ="tbl_Images.Frame_number"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Image duplicates on event, image type, image label, and frame number"
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
        Left =436
        Top =13
        Right =532
        Bottom =120
        Top =0
        Name ="tbl_Images"
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
        Left =303
        Top =11
        Right =399
        Bottom =118
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
End
