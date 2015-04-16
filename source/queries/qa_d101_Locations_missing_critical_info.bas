Operation =1
Option =0
Where ="(((tbl_Locations.Park_code) Is Null)) OR (((tbl_Locations.Site_ID) Is Null) AND "
    "((tbl_Locations.Location_type)<>'Incidental')) OR (((tbl_Locations.Location_code"
    ") Is Null)) OR (((tbl_Locations.Location_type) Is Null)) OR (((tbl_Locations.Loc"
    "ation_status) Is Null))"
Begin InputTables
    Name ="tbl_Locations"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Locations.Site_ID"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing park code, site ID (except where loc_type = 'Incidental'), location code"
    ", location type, or location status"
Begin
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =1154
    Bottom =750
    Left =-1
    Top =-1
    Right =1153
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =7
        Right =180
        Bottom =144
        Top =15
        Name ="tbl_Locations"
        Name =""
    End
End
