Operation =1
Option =0
Where ="(((tbl_Locations.Park_code) In ('MORA','NOCA','OLYM')))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Rare_Bird_Obs"
End
Begin OutputColumns
    Alias ="Event_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Rare_Bird_Obs.Taxon_ID"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tbl_Events.Event_ID=tbl_Rare_Bird_Obs.Event_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID=tbl_Events.Location_ID"
    Flag =1
End
Begin Groups
    Expression ="CStr(Year([Start_date]))"
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
dbText "Description" ="Species observed as rare bird observations at large parks, by year"
Begin
    Begin
        dbText "Name" ="Event_year"
        dbBinary "GUID" = Begin
            0xc2dc1b70afac94428fdbda7201d92390
        End
    End
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =352
    Left =-1
    Top =-1
    Right =1105
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
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
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =574
        Top =6
        Right =670
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
End
