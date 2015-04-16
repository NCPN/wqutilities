Operation =1
Option =0
Where ="(((tbl_Sites.Park_code) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFilterByP"
    "ark])=1,[Forms]![frm_Summary_Tool]![cmbParkFilter],Null),\"*\")) AND ((tbl_Sites"
    ".Site_ID) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFilterBySite])=1,[Forms"
    "]![frm_Summary_Tool]![cmbSiteFilter],Null),\"*\")) AND ((tbl_Sites.Site_status) "
    "Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFilterByStatus])=1,[Forms]![frm_S"
    "ummary_Tool]![cmbStatusFilter],Null),\"*\")) AND ((tbl_Sites.Stratum_ID) Like Nz"
    "(IIf(Abs([Forms]![frm_Summary_Tool]![togFilterByStratum])=1,[Forms]![frm_Summary"
    "_Tool]![cmbStratumFilter],Null),\"*\")) AND ((Nz([Park_region],'*')) Like Nz(IIf"
    "(Abs([Forms]![frm_Summary_Tool]![togFilterByRegion])=1,[Forms]![frm_Summary_Tool"
    "]![cmbRegionFilter],Null),\"*\")) AND ((Nz([Panel_type],'*')) Like Nz(IIf(Abs([F"
    "orms]![frm_Summary_Tool]![togFilterByPanelType])=1,[Forms]![frm_Summary_Tool]![c"
    "mbPanelTypeFilter],Null),\"*\")) AND ((Nz([Panel_name],'*')) Like Nz(IIf(Abs([Fo"
    "rms]![frm_Summary_Tool]![togFilterByPanelName])=1,[Forms]![frm_Summary_Tool]![cm"
    "bPanelNameFilter],Null),\"*\")))"
Begin InputTables
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Sites.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Standard subquery to filter site records based on filter values in frm_Summary_T"
    "ool"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x6b3b86e6d40ccd499e5d8416e3fc5e03
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Sites.Site_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Park_region"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Stratum_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Slope_class"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Substratum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_established"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_discontinued"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_created_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_updated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_updated_by"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Panel_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Panel_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Firing_order"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Evaluation_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Evaluation_notes"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1496
    Bottom =997
    Left =-1
    Top =-1
    Right =1426
    Bottom =110
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =172
        Top =6
        Right =311
        Bottom =126
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
