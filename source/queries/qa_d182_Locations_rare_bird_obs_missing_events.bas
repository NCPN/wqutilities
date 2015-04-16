Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)='Incidental') AND ((tbl_Events.Event_ID) Is Null"
    "))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_name"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Rare_trans_pt"
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
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =2
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Locations.Location_name"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Unsampled incidental observation locations; confirm correct data entry and delet"
    "e unneeded records"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xca3bec073d87544d92b69a893ab9085f
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1658
    Bottom =357
    Left =-1
    Top =-1
    Right =1611
    Bottom =127
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =180
        Top =7
        Right =276
        Bottom =114
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =318
        Top =8
        Right =414
        Bottom =115
        Top =0
        Name ="tbl_Events"
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
