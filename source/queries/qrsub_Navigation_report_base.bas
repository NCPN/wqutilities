Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)<>'Incidental') AND ((tbl_Locations.Location_stat"
    "us)='Active' Or (tbl_Locations.Location_status)='Proposed') AND ((tbl_Sites.Site"
    "_status)='Active' Or (tbl_Sites.Site_status)='Proposed'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
End
Begin OutputColumns
    Expression ="tbl_Sites.Site_ID"
    Expression ="tbl_Locations.Location_ID"
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Alias ="Arm_sort"
    Expression ="IIf([tbl_Sites].[Park_code]<>'SAJH' And [tbl_Sites].[Park_code]<>'LEWI',IIf([Loc"
        "ation_type]='Origin',0,1))"
    Alias ="Transect_arm"
    Expression ="IIf([tbl_Sites].[Park_code]<>'SAJH' And [tbl_Sites].[Park_code]<>'LEWI',IIf([Loc"
        "ation_type]<>'Origin',Left([Location_code],2),'Origin'))"
    Alias ="Loc_sort"
    Expression ="IIf([Location_type]='Origin',0,1)"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Trail_or_road"
    Expression ="tbl_Locations.Azimuth_to_point"
    Expression ="tbl_Locations.Travel_notes"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_Locations.Loc_established"
    Expression ="tbl_Locations.Location_desc"
    Expression ="tbl_Locations.Location_notes"
    Expression ="tbl_Sites.Panel_type"
    Expression ="tbl_Sites.Panel_name"
    Expression ="tbl_Sites.Site_status"
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="IIf([tbl_Sites].[Park_code]<>'SAJH' And [tbl_Sites].[Park_code]<>'LEWI',IIf([Loc"
        "ation_type]='Origin',0,1))"
    Flag =0
    Expression ="IIf([tbl_Sites].[Park_code]<>'SAJH' And [tbl_Sites].[Park_code]<>'LEWI',IIf([Loc"
        "ation_type]<>'Origin',Left([Location_code],2),'Origin'))"
    Flag =0
    Expression ="IIf([Location_type]='Origin',0,1)"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Subquery showing all events and active sample points associated with scheduled s"
    "ites for the navigation report"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Azimuth_to_point"
        dbInteger "ColumnWidth" ="1632"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Locations.Travel_notes"
        dbInteger "ColumnWidth" ="9624"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Loc_sort"
        dbBinary "GUID" = Begin
            0x21bbd9c7200e534cbb83f0bcdbc1e708
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
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =180
        Top =9
        Right =300
        Bottom =146
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =357
        Top =12
        Right =477
        Bottom =149
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
End
