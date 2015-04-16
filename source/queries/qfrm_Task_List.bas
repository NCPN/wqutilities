Operation =1
Option =0
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Task_List"
End
Begin OutputColumns
    Alias ="Request_year"
    Expression ="Year([Request_date])"
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Locations.Site_ID"
    Expression ="tbl_Locations.Location_ID"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & IIf([Location"
        "_type]<>'Origin','.' & [Location_code])"
    Alias ="Loc_type"
    Expression ="IIf([Location_type]='Origin','Transect origin',IIf([Location_type]='New' Or [Loc"
        "ation_type]='Survey' Or [Location_type]='Additional','Sample point',[Location_ty"
        "pe]))"
    Expression ="tbl_Task_List.Request_date"
    Expression ="tbl_Task_List.Task_desc"
    Expression ="tbl_Task_List.Date_completed"
    Expression ="tbl_Task_List.Task_status"
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Task_List"
    Expression ="tbl_Locations.Location_ID = tbl_Task_List.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="Year([Request_date])"
    Flag =1
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & IIf([Location"
        "_type]<>'Origin','.' & [Location_code])"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Standard subquery listing tasks associated with sample locations"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbInteger "ColumnWidth" ="3900"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Loc_code"
        dbBinary "GUID" = Begin
            0x6dfece0e8516c3469df85c41de26d743
        End
        dbInteger "ColumnWidth" ="1308"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbInteger "ColumnWidth" ="984"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Loc_type"
        dbInteger "ColumnWidth" ="1392"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x95c6c942f903134ebd203500acdac898
        End
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
    Bottom =207
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =384
        Top =7
        Right =504
        Bottom =144
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =48
        Top =7
        Right =168
        Bottom =144
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =216
        Top =7
        Right =336
        Bottom =144
        Top =1
        Name ="tbl_Task_List"
        Name =""
    End
End
