Operation =6
Option =0
Where ="(((tbl_Coordinates.Is_best)=True))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Point_Counts"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    GroupLevel =2
    Alias ="Event_year"
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =2
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name)"
    GroupLevel =1
    Alias ="MaxOfElevation"
    Expression ="Max(Fix([Elevation_m]))"
End
Begin Joins
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tlu_Project_Taxa_1"
    Expression ="tlu_Project_Taxa.Refers_to = tlu_Project_Taxa_1.Taxon_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Point_Counts"
    Expression ="tbl_Events.Event_ID = tbl_Point_Counts.Event_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Point_Counts"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Point_Counts.Taxon_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =2
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="CStr(Year([Start_date]))"
    Flag =1
End
Begin Groups
    Expression ="tbl_Locations.Park_code"
    GroupLevel =2
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =2
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name)"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Shows the maximum elevation associated with each species observation by park and"
    " year"
Begin
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =436
    Left =-1
    Top =-1
    Right =1105
    Bottom =228
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =574
        Top =6
        Right =670
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =698
        Top =5
        Right =898
        Bottom =112
        Top =0
        Name ="tlu_Project_Taxa_1"
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
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =440
        Top =6
        Right =536
        Bottom =113
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
    Begin
        Left =435
        Top =115
        Right =531
        Bottom =222
        Top =4
        Name ="tbl_Coordinates"
        Name =""
    End
End
