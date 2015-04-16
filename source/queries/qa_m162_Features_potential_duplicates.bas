Operation =1
Option =0
Where ="(((tbl_Features.Event_ID) In (SELECT [Event_ID] FROM [tbl_Features] As Tmp GROUP"
    " BY [Event_ID],[Feature_type],[Feature_desc] HAVING Count(*)>1  And [Feature_typ"
    "e] = [tbl_Features].[Feature_type] And [Feature_desc] = [tbl_Features].[Feature_"
    "desc])))"
Begin InputTables
    Name ="tbl_Features"
    Name ="tbl_Events"
    Name ="tbl_Locations"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Event_code"
    Expression ="[Site_code] & '.' & [Location_code] & ' on ' & [Start_date]"
    Expression ="tbl_Features.Feature_type"
    Expression ="tbl_Features.Feature_desc"
    Expression ="tbl_Features.Feature_status"
    Expression ="tbl_Features.Distance_m"
    Expression ="tbl_Features.Feature_azimuth"
    Expression ="tbl_Features.Feature_updated"
    Expression ="tbl_Features.Feature_ID"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
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
    LeftTable ="tbl_Events"
    RightTable ="tbl_Features"
    Expression ="tbl_Events.Event_ID = tbl_Features.Event_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Features.Event_ID"
    Flag =0
    Expression ="tbl_Features.Feature_type"
    Flag =0
    Expression ="tbl_Features.Feature_desc"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Potential duplicates on event, feature type and feature description"
Begin
    Begin
        dbText "Name" ="Event_code"
        dbInteger "ColumnWidth" ="2310"
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
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Features"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =440
        Top =6
        Right =536
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
