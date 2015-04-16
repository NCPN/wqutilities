Operation =1
Option =0
Where ="(((tbl_Locations.Location_status)='Proposed') AND ((tbl_Events.Start_date) Is No"
    "t Null)) OR (((tbl_Locations.Location_status)='Proposed') AND ((tbl_Locations.Lo"
    "c_established) Is Not Null)) OR (((tbl_Locations.Location_status)='Proposed') AN"
    "D ((tbl_Coordinates.Coord_ID) Is Not Null)) OR (((tbl_Locations.Location_status)"
    "='Retired') AND ((tbl_Locations.Loc_discontinued) Is Null)) OR (((tbl_Locations."
    "Location_status)<>'Retired' And (tbl_Locations.Location_status)<>'Rejected') AND"
    " ((tbl_Locations.Loc_discontinued) Is Not Null)) OR (((tbl_Sites.Site_status)<>'"
    "Active') AND ((tbl_Locations.Location_status)='Active')) OR (((tbl_Locations.Loc"
    "ation_type)='Incidental') AND ((tbl_Locations.Location_status)<>'Incidental')) O"
    "R (((tbl_Locations.Location_type)<>'Incidental') AND ((tbl_Locations.Location_st"
    "atus)='Incidental'))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Coordinates"
    Name ="tbl_Events"
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Sites.Site_status"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_Events.Start_date"
    Expression ="tbl_Locations.Loc_established"
    Expression ="tbl_Locations.Loc_discontinued"
    Alias ="Has_coordinates"
    Expression ="IIf(IsNull([Coord_ID]),'No','Yes')"
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
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =2
End
Begin OrderBy
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Locations.Location_status"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Locs w/ status='Proposed' that have events, or having either establishment dates"
    " or event coords; or 'Retired' locs missing discont. dates; or having discont. d"
    "ates w/ status other than 'Retired' or 'Rejected'; or site status<>'Active' w/ a"
    "ctive locs"
dbBinary "GUID" = Begin
    0x56e1121a79077b48a3169f38137f44b3
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Has_coordinates"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Park_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1043
    Bottom =688
    Left =-1
    Top =-1
    Right =1019
    Bottom =146
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =255
        Top =9
        Right =388
        Bottom =146
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =650
        Top =10
        Right =770
        Bottom =147
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =447
        Top =6
        Right =567
        Bottom =143
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
