Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)<>'Incidental') AND ((tbl_Point_Counts.Observatio"
    "n_ID) Is Not Null))"
Having ="(((tbl_Sites.Site_status) Is Null)) OR (((tbl_Sites.Site_status)='Retired') AND "
    "((tbl_Sites.Site_discontinued) Is Null)) OR (((tbl_Sites.Site_status)<>'Retired'"
    ") AND ((tbl_Sites.Site_discontinued) Is Not Null)) OR (((tbl_Sites.Site_status)="
    "'Incidental'))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Strata"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Sites.Site_name"
    Alias ="Stratum"
    Expression ="[tbl_Strata].[Park_code] & \" - \" & [Stratum_name]"
    Expression ="tbl_Sites.Site_status"
    Expression ="tbl_Sites.Site_notes"
    Expression ="tbl_Sites.Site_established"
    Expression ="tbl_Sites.Site_discontinued"
    Alias ="varObject"
    Expression ="\"fsub_Sites_Browser\""
    Alias ="varFilter"
    Expression ="\"Site_ID='\" & [tbl_Sites].[Site_ID] & \"'\""
End
Begin Joins
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =2
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =2
    LeftTable ="tbl_Events"
    RightTable ="tbl_Point_Counts"
    Expression ="tbl_Events.Event_ID = tbl_Point_Counts.Event_ID"
    Flag =2
    LeftTable ="tbl_Strata"
    RightTable ="tbl_Sites"
    Expression ="tbl_Strata.Stratum_ID = tbl_Sites.Stratum_ID"
    Flag =1
End
Begin Groups
    Expression ="tbl_Sites.Park_code"
    GroupLevel =0
    Expression ="tbl_Sites.Site_code"
    GroupLevel =0
    Expression ="tbl_Sites.Site_name"
    GroupLevel =0
    Expression ="[tbl_Strata].[Park_code] & \" - \" & [Stratum_name]"
    GroupLevel =0
    Expression ="tbl_Sites.Site_status"
    GroupLevel =0
    Expression ="tbl_Sites.Site_notes"
    GroupLevel =0
    Expression ="tbl_Sites.Site_established"
    GroupLevel =0
    Expression ="tbl_Sites.Site_discontinued"
    GroupLevel =0
    Expression ="\"fsub_Sites_Browser\""
    GroupLevel =0
    Expression ="\"Site_ID='\" & [tbl_Sites].[Site_ID] & \"'\""
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Missing site status; ‘Retired’ sites without discontinued dates; discontinued da"
    "tes w/ status other than ‘Retired’; or sites w/ events and point count data but "
    "which are listed as status='Proposed'; or sites w/ site status of 'Incidental' ("
    "illogical)"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
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
    ColumnsShown =543
    Begin
        Left =174
        Top =5
        Right =294
        Bottom =142
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
    Begin
        Left =332
        Top =6
        Right =428
        Bottom =113
        Top =3
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =466
        Top =6
        Right =562
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =600
        Top =6
        Right =696
        Bottom =113
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
