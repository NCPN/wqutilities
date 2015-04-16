Operation =1
Option =0
Where ="(((tbl_Locations.Location_code)='TO') AND ((tbl_Locations.Location_type)<>'Origi"
    "n')) OR (((tbl_Locations.Location_code)<>'TO') AND ((tbl_Locations.Location_type"
    ")='Origin')) OR (((tbl_Locations.Location_code)='Rare') AND ((tbl_Locations.Loca"
    "tion_type)<>'Incidental')) OR (((tbl_Locations.Location_code)<>'Rare') AND ((tbl"
    "_Locations.Location_type)='Incidental'))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Locations where loc code = 'TO' and loc type <> 'Origin' or vice versa, or where"
    " loc code = 'Rare' and loc type <> 'Incidental' or vice versa"
Begin
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
        Left =178
        Top =5
        Right =311
        Bottom =142
        Top =0
        Name ="tbl_Locations"
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
End
