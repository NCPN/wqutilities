Operation =6
Option =0
Where ="(((tbl_Sites.Park_code)='OLYM' Or (tbl_Sites.Park_code)='NOCA' Or (tbl_Sites.Par"
    "k_code)='MORA') AND ((tbl_Locations.Location_type)<>'Incidental' And (tbl_Locati"
    "ons.Location_type)<>'Origin'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Expression ="tbl_Sites.Site_code"
    GroupLevel =2
    Alias ="Transect_arm"
    Expression ="Left([Location_code],2)"
    GroupLevel =2
    Expression ="tbl_Locations.Location_type"
    GroupLevel =2
    Alias ="Event_year"
    Expression ="Year([Start_date])"
    GroupLevel =1
    Alias ="N_points"
    Expression ="Count(tbl_Events.Event_ID)"
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="Left([Location_code],2)"
    Flag =0
    Expression ="tbl_Locations.Location_type"
    Flag =1
    Expression ="Year([Start_date])"
    Flag =1
End
Begin Groups
    Expression ="tbl_Sites.Park_code"
    GroupLevel =2
    Expression ="tbl_Sites.Site_code"
    GroupLevel =2
    Expression ="Left([Location_code],2)"
    GroupLevel =2
    Expression ="tbl_Locations.Location_type"
    GroupLevel =2
    Expression ="Year([Start_date])"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Number of points visited along each transect arm, grouped by location type and y"
    "ear"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="tbl_Sites.Site_code"
        dbInteger "ColumnWidth" ="924"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_code"
        dbInteger "ColumnWidth" ="1284"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Sites.Park_code"
        dbInteger "ColumnWidth" ="984"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Transect_arm"
        dbInteger "ColumnWidth" ="1284"
        dbBoolean "ColumnHidden" ="0"
    End
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
    ColumnsShown =559
    Begin
        Left =48
        Top =7
        Right =168
        Bottom =144
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =216
        Top =7
        Right =336
        Bottom =144
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =384
        Top =7
        Right =504
        Bottom =144
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
