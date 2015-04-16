Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Species_code)<>'NONE') AND ((tbl_Locations_1.Location_type)="
    "'Origin'))"
Begin InputTables
    Name ="tlu_Project_Taxa"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Alias ="tbl_Locations_1"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Point_Counts"
    Name ="tlu_Project_Taxa"
    Alias ="tlu_Project_Taxa_1"
    Name ="qrsub_Scheduled_sites"
End
Begin OutputColumns
    Expression ="tbl_Sites.Site_ID"
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Alias ="Species"
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[Taxon_ID]),[tlu_Project_Taxa].[Pref_com_name],["
        "tlu_Project_Taxa_1].[Pref_com_name])"
    Alias ="IBP_num"
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[IBP_number]),[tlu_Project_Taxa].[IBP_number],[t"
        "lu_Project_Taxa_1].[IBP_number])"
    Alias ="Most_recent_obs"
    Expression ="Max(tbl_Events.Start_date)"
    Expression ="tbl_Locations_1.Location_ID"
    Expression ="qrsub_Scheduled_sites.Calendar_year"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tlu_Project_Taxa_1"
    Expression ="tlu_Project_Taxa.Refers_to = tlu_Project_Taxa_1.Taxon_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="qrsub_Scheduled_sites"
    Expression ="tbl_Sites.Site_ID = qrsub_Scheduled_sites.Site_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations_1"
    Expression ="tbl_Sites.Site_ID = tbl_Locations_1.Site_ID"
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
Begin OrderBy
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[IBP_number]),[tlu_Project_Taxa].[IBP_number],[t"
        "lu_Project_Taxa_1].[IBP_number])"
    Flag =0
End
Begin Groups
    Expression ="tbl_Sites.Site_ID"
    GroupLevel =0
    Expression ="tbl_Sites.Park_code"
    GroupLevel =0
    Expression ="tbl_Sites.Site_code"
    GroupLevel =0
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[Taxon_ID]),[tlu_Project_Taxa].[Pref_com_name],["
        "tlu_Project_Taxa_1].[Pref_com_name])"
    GroupLevel =0
    Expression ="IIf(IsNull([tlu_Project_Taxa_1].[IBP_number]),[tlu_Project_Taxa].[IBP_number],[t"
        "lu_Project_Taxa_1].[IBP_number])"
    GroupLevel =0
    Expression ="tbl_Locations_1.Location_ID"
    GroupLevel =0
    Expression ="qrsub_Scheduled_sites.Calendar_year"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Subquery for generating the transect species report for scheduled sites"
Begin
    Begin
        dbText "Name" ="Most_recent_obs"
        dbBinary "GUID" = Begin
            0x5f62dbbc47bf7449a8e427e6f19b9e48
        End
    End
    Begin
        dbText "Name" ="Species"
        dbBinary "GUID" = Begin
            0xb3ce2e1108979a4a860cd1e1f51123e1
        End
    End
    Begin
        dbText "Name" ="IBP_num"
        dbBinary "GUID" = Begin
            0xab47e13dadb2c640883084349afc481e
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
    Bottom =199
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =570
        Top =61
        Right =666
        Bottom =168
        Top =0
        Name ="tlu_Project_Taxa"
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
        Left =842
        Top =6
        Right =949
        Bottom =113
        Top =0
        Name ="tbl_Locations_1"
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
        Left =305
        Top =32
        Right =401
        Bottom =139
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
        Left =709
        Top =63
        Right =805
        Bottom =170
        Top =0
        Name ="tlu_Project_Taxa_1"
        Name =""
    End
    Begin
        Left =987
        Top =6
        Right =1083
        Bottom =83
        Top =0
        Name ="qrsub_Scheduled_sites"
        Name =""
    End
End
