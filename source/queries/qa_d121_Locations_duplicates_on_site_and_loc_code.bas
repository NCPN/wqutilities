Operation =1
Option =0
Where ="(((tbl_Locations.Site_ID) In (SELECT [Site_ID] FROM [tbl_Locations] As Tmp GROUP"
    " BY [Site_ID],[Location_code] HAVING Count(*)>1  And [Location_code] = [tbl_Loca"
    "tions].[Location_code])) AND ((tbl_Locations.Location_type)<>'Incidental'))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Locations.Site_ID"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_Locations.Loc_established"
    Expression ="tbl_Locations.Loc_discontinued"
    Expression ="tbl_Locations.Loc_created_date"
    Expression ="tbl_Locations.Loc_updated"
    Alias ="Sampled"
    Expression ="IIf(IsNull([tbl_Events].[Event_ID]),'No',[Start_date])"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =2
End
Begin OrderBy
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Locations.Location_type"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Duplicate records on site ID and loc code (where loc_type <> 'Incidental')"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="varFilter"
        dbInteger "ColumnWidth" ="5340"
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
    Bottom =166
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =7
        Right =173
        Bottom =129
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =211
        Top =6
        Right =307
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
