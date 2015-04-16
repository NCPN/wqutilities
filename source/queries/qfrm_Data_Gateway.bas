Operation =1
Option =0
Where ="(((tbl_Locations.Location_status)='Active' Or (tbl_Locations.Location_status)='P"
    "roposed')) OR (((qfsub_Data_Gateway_all_events.Event_ID) Is Not Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qfsub_Data_Gateway_all_events"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & IIf([Location"
        "_type]<>'Origin','.' & [Location_code])"
    Alias ="Loc_type"
    Expression ="IIf([Location_type]='Origin','Transect origin',IIf([Location_type]='New' Or [Loc"
        "ation_type]='Survey' Or [Location_type]='Additional','Sample point',IIf([Locatio"
        "n_type]='Incidental','Rare bird obs',[Location_type])))"
    Alias ="Sample_year"
    Expression ="Year([Start_date])"
    Expression ="qfsub_Data_Gateway_all_events.Start_date"
    Alias ="Update_by"
    Expression ="IIf(IsNull([Updated_by]),[Entered_by],[Updated_by])"
    Alias ="Updated"
    Expression ="IIf(IsNull([Updated_date]),[Entered_date],[Updated_date])"
    Expression ="tbl_Sites.Panel_type"
    Expression ="qfsub_Data_Gateway_all_events.Rec_status"
    Expression ="tbl_Sites.Site_ID"
    Expression ="tbl_Locations.Location_ID"
    Expression ="qfsub_Data_Gateway_all_events.Event_ID"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qfsub_Data_Gateway_all_events"
    Expression ="tbl_Locations.Location_ID = qfsub_Data_Gateway_all_events.Location_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & IIf([Location"
        "_type]<>'Origin','.' & [Location_code])"
    Flag =0
    Expression ="Year([Start_date])"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Data gateway locations and associated events - all sites, all events"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbInteger "ColumnWidth" ="3900"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Sample_year"
        dbBinary "GUID" = Begin
            0x37e7a2ff946ecc488bb3a4e4d814ac0f
        End
        dbInteger "ColumnWidth" ="1176"
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
        dbText "Name" ="Updated"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x2aed7fff6e49d9459f04c5e7537f2af1
        End
    End
    Begin
        dbText "Name" ="Update_by"
        dbBinary "GUID" = Begin
            0xebe5018b8471324d846ea817b7d1278a
        End
        dbInteger "ColumnWidth" ="1836"
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
    Bottom =144
    Left =0
    Top =1
    ColumnsShown =539
    Begin
        Left =384
        Top =6
        Right =609
        Bottom =143
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =48
        Top =6
        Right =168
        Bottom =143
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =206
        Top =6
        Right =345
        Bottom =113
        Top =0
        Name ="qfsub_Data_Gateway_all_events"
        Name =""
    End
End
