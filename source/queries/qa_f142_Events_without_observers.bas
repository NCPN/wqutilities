Operation =1
Option =0
Where ="(((tbl_Observers.Contact_ID) Is Null))"
Begin InputTables
    Name ="tbl_Observers"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Alias ="Feat_name"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([Lo"
        "cation_type]<>'Incidental',[Location_code],IIf(IsNull([Site_code]),[Location_cod"
        "e],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])) & IIf([Location_type]='Inc"
        "idental','.' & [Species_code],''))"
    Alias ="Date_sampled"
    Expression ="Format([Start_date],\"yyyy mmm dd\")"
    Alias ="varObject"
    Expression ="IIf([Location_type]='Incidental','frm_Rare_Bird_Obs','frm_Data_Entry')"
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Observers"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Observers.Event_ID"
    Flag =2
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Locations"
    Expression ="qasub_Events_scope_filter.Location_ID = tbl_Locations.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =3
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =2
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
dbText "Description" ="Events records without observers"
dbBinary "GUID" = Begin
    0xb1c2c7295721d14cbee6d768b11a1013
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varFilter"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =393
    Left =-1
    Top =-1
    Right =1083
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =461
        Top =10
        Right =563
        Bottom =117
        Top =0
        Name ="tbl_Observers"
        Name =""
    End
    Begin
        Left =304
        Top =8
        Right =400
        Bottom =115
        Top =0
        Name ="qasub_Events_scope_filter"
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
    Begin
        Left =169
        Top =5
        Right =265
        Bottom =112
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =601
        Top =6
        Right =697
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =735
        Top =6
        Right =831
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
