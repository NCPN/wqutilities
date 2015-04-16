Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Species_code)<>'NONE') AND ((tbl_Point_Counts.Prev_observed)"
    "=False))"
Having ="(((tbl_Locations.Park_code) In ('MORA','NOCA','OLYM')))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Alias ="Event_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Panel_type"
    Expression ="tbl_Sites.Site_code"
    Alias ="Species"
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name)"
    Expression ="tlu_Project_Taxa.IBP_number"
    Alias ="N_individuals"
    Expression ="Sum(tbl_Point_Counts.Group_size)"
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
End
Begin Groups
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =0
    Expression ="tbl_Locations.Park_code"
    GroupLevel =0
    Expression ="tbl_Sites.Panel_type"
    GroupLevel =0
    Expression ="tbl_Sites.Site_code"
    GroupLevel =0
    Expression ="IIf(IsNull(tlu_Project_Taxa_1.Taxon_ID),tlu_Project_Taxa.Pref_com_name,tlu_Proje"
        "ct_Taxa_1.Pref_com_name)"
    GroupLevel =0
    Expression ="tlu_Project_Taxa.IBP_number"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Point count data for large parks - species totals per transect"
Begin
    Begin
        dbText "Name" ="N_individuals"
        dbBinary "GUID" = Begin
            0xd74c386f14a24c41860998c2e2d6f007
        End
    End
    Begin
        dbText "Name" ="Species"
        dbBinary "GUID" = Begin
            0x1ef5bff465ace544af90dea2706b6d27
        End
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =374
    Left =-1
    Top =-1
    Right =1083
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =577
        Top =6
        Right =673
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =699
        Top =6
        Right =795
        Bottom =113
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
        Left =446
        Top =9
        Right =542
        Bottom =116
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
