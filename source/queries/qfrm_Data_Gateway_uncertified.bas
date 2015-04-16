Operation =1
Option =0
Where ="(((tbl_Locations.Location_status)='Active' Or (tbl_Locations.Location_status)='P"
    "roposed')) OR (((qfsub_Data_Gateway_uncertified.Event_ID) Is Not Null) AND ((tbl"
    "_Locations.Location_status)='Incidental'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qfsub_Data_Gateway_uncertified"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Locations.Location_ID"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & IIf([Location"
        "_type]<>'Origin','.' & [Location_code])"
    Alias ="Loc_type"
    Expression ="IIf([Location_type]='Origin','Transect origin',IIf([Location_type]='New' Or [Loc"
        "ation_type]='Survey' Or [Location_type]='Additional','Sample point',IIf([Locatio"
        "n_type]='Incidental','Rare bird obs',[Location_type])))"
    Expression ="qfsub_Data_Gateway_uncertified.Start_date"
    Alias ="Sample_year"
    Expression ="Year([Start_date])"
    Alias ="Update_by"
    Expression ="IIf(IsNull([Updated_by]),[Entered_by],[Updated_by])"
    Alias ="Updated"
    Expression ="IIf(IsNull([Updated_date]),[Entered_date],[Updated_date])"
    Expression ="qfsub_Data_Gateway_uncertified.Event_ID"
    Expression ="tbl_Sites.Site_ID"
    Expression ="tbl_Sites.Panel_type"
    Expression ="qfsub_Data_Gateway_uncertified.Rec_status"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qfsub_Data_Gateway_uncertified"
    Expression ="tbl_Locations.Location_ID = qfsub_Data_Gateway_uncertified.Location_ID"
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
dbText "Description" ="Data gateway locations and associated events - all sites, uncertified events"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbInteger "ColumnWidth" ="3900"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Sample_year"
        dbInteger "ColumnWidth" ="1176"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Loc_code"
        dbInteger "ColumnWidth" ="1308"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Updated"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Update_by"
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
        Right =302
        Bottom =113
        Top =0
        Name ="qfsub_Data_Gateway_uncertified"
        Name =""
    End
End
