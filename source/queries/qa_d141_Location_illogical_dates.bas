Operation =1
Option =0
Where ="(((tbl_Locations.Loc_discontinued)<[Loc_established])) OR (((tbl_Locations.Loc_u"
    "pdated)<[Loc_created_date]))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Loc_established"
    Expression ="tbl_Locations.Loc_discontinued"
    Expression ="tbl_Locations.Loc_created_date"
    Expression ="tbl_Locations.Loc_updated"
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
Begin OrderBy
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
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Discontinued date prior to establishment date, or updated date prior to created "
    "date"
Begin
End
Begin
    State =0
    Left =10
    Top =78
    Right =1002
    Bottom =476
    Left =-1
    Top =-1
    Right =985
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =194
        Top =7
        Right =309
        Bottom =144
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
