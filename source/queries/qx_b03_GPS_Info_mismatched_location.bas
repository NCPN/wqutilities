Operation =1
Option =0
Where ="(((tbl_GPS_Info.Feat_name)<>IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],"
    "[Site_code]) & '.' & IIf([Location_type]<>'Incidental',[Location_code],IIf(IsNul"
    "l([Site_code]),[Location_code],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])"
    ") & IIf([Location_type]='Incidental','.' & [Species_code],''))))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_GPS_Info"
    Name ="tbl_Sites"
    Name ="tbl_Events"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Sites].[Site_code])=False,[Site_code] & '.','') & [Location_code"
        "]"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_GPS_Info.*"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_GPS_Info"
    Expression ="tbl_Locations.Location_ID = tbl_GPS_Info.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tbl_Events.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =2
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
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
dbText "Description" ="Shows mismatches between feature name and location ID - update feature name or r"
    "ematch to correct location ID"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1122
    Bottom =545
    Left =-1
    Top =-1
    Right =1075
    Bottom =315
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =226
        Top =52
        Right =322
        Bottom =159
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =543
        Top =53
        Right =691
        Bottom =235
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
    Begin
        Left =46
        Top =25
        Right =142
        Bottom =132
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =360
        Top =6
        Right =456
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =729
        Top =6
        Right =825
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =863
        Top =6
        Right =959
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
