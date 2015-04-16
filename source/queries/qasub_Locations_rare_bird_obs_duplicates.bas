Operation =1
Option =0
Having ="(((tbl_Locations.Location_type)='Incidental') AND ((Count(tbl_Locations.Location"
    "_ID))>1))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Rare_Bird_Obs"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Locations.Location_name"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Alias ="Sample_year"
    Expression ="Year([Start_date])"
    Expression ="tbl_Rare_Bird_Obs.Taxon_ID"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tbl_Events.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
Begin Groups
    Expression ="tbl_Locations.Park_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_name"
    GroupLevel =0
    Expression ="tbl_Locations.Location_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_type"
    GroupLevel =0
    Expression ="Year([Start_date])"
    GroupLevel =0
    Expression ="tbl_Rare_Bird_Obs.Taxon_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Duplicates on park, location name, loc code, and taxon where loc type = 'inciden"
    "tal'"
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
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Locations"
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
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
End
