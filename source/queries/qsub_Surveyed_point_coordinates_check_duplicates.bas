Operation =1
Option =0
Where ="(((CStr(Year([Start_date])))=Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFilterByY"
    "ear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilter],[Enter the year to filter by:"
    "]),[Enter the year to filter by:])) AND ((qsub_Loc_filters.Location_type)<>'Inci"
    "dental') AND ((IIf(IsNull([Certified_date])=False And ([Certified_date]>=[Update"
    "d_date] Or IsNull([Updated_date])),0,1))=Nz([Forms]![frm_Summary_Tool]![optgScop"
    "e]) Or (IIf(IsNull([Certified_date])=False And ([Certified_date]>=[Updated_date]"
    " Or IsNull([Updated_date])),0,1))=0) AND ((tbl_Events.Start_date)>=Nz(IIf(Abs([F"
    "orms]![frm_Summary_Tool]![togFilterByRange])=1,Nz([Forms]![frm_Summary_Tool]![tx"
    "tStartDateFilter],#1/1/1800#),#1/1/1800#)) And (tbl_Events.Start_date)<=Nz(IIf(A"
    "bs([Forms]![frm_Summary_Tool]![togFilterByRange])=1,Nz([Forms]![frm_Summary_Tool"
    "]![txtEndDateFilter]+1,#12/31/2200#),#12/31/2200#))) AND ((Abs([Is_excluded]))=N"
    "z([Forms]![frm_Summary_Tool]![optgExcluded]) Or (Abs([Is_excluded]))=0))"
Begin InputTables
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
    Name ="tbl_Target_Coords"
End
Begin OutputColumns
    Alias ="Event_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="qsub_Site_filters.Park_code"
    Expression ="qsub_Site_filters.Site_code"
    Expression ="qsub_Loc_filters.Location_code"
    Expression ="qsub_Loc_filters.Location_type"
    Expression ="tbl_Events.Start_date"
    Expression ="qsub_Loc_filters.UTME_public"
    Expression ="qsub_Loc_filters.UTMN_public"
    Expression ="qsub_Loc_filters.Public_offset"
    Expression ="tbl_Coordinates.Is_best"
    Expression ="tbl_Coordinates.UTM_east"
    Expression ="tbl_Coordinates.UTM_north"
    Expression ="tbl_Coordinates.Coord_type"
    Expression ="tbl_Coordinates.Datum"
    Expression ="tbl_Coordinates.Est_horiz_error"
    Expression ="tbl_Target_Coords.Target_UTME"
    Expression ="tbl_Target_Coords.Target_UTMN"
    Expression ="tbl_Target_Coords.Target_datum"
    Expression ="tbl_Target_Coords.Target_updated"
    Expression ="qsub_Loc_filters.Site_ID"
    Expression ="qsub_Loc_filters.Location_ID"
End
Begin Joins
    LeftTable ="qsub_Loc_filters"
    RightTable ="tbl_Events"
    Expression ="qsub_Loc_filters.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="qsub_Loc_filters"
    RightTable ="tbl_Target_Coords"
    Expression ="qsub_Loc_filters.Location_ID = tbl_Target_Coords.Location_ID"
    Flag =2
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =2
End
Begin OrderBy
    Expression ="CStr(Year([Start_date]))"
    Flag =1
    Expression ="qsub_Site_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
    Expression ="qsub_Loc_filters.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="GIS output query for all sampled transect points - with altered filtering to all"
    "ow check for duplicate records"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Event_year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x29d9dac437fcac438b096598fd68774b
        End
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Is_best"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfc3d187a27e56746a7c5556427a4f511
        End
    End
    Begin
        dbText "Name" ="tbl_Coordinates.UTM_east"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xca50c850500a4242b50199d64ef07cc8
        End
    End
    Begin
        dbText "Name" ="tbl_Coordinates.UTM_north"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x360f6b921d6128488c4a1fddbda3c2a6
        End
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Coord_type"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xab444e9e77fc864e868e21a6f955f64f
        End
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Datum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d135d8856063347865f84e1a6289d14
        End
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Est_horiz_error"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56268abb9eae7443b52709b18d37b6c0
        End
    End
    Begin
        dbText "Name" ="tbl_Target_Coords.Target_UTME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf833f2a8881d0242ab081d98c4c3e3c9
        End
    End
    Begin
        dbText "Name" ="tbl_Target_Coords.Target_UTMN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7a8e35694a360f4d818c1ae3d30a6761
        End
    End
    Begin
        dbText "Name" ="tbl_Target_Coords.Target_datum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5cf05d124b3869429945fe4ac4f714e8
        End
    End
    Begin
        dbText "Name" ="tbl_Target_Coords.Target_updated"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x463e5af24eef414ba5c92725501b4440
        End
    End
    Begin
        dbText "Name" ="tbl_Events.Start_date"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1556
    Bottom =997
    Left =-1
    Top =-1
    Right =1410
    Bottom =67
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qsub_Site_filters"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="qsub_Loc_filters"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =658
        Top =20
        Right =796
        Bottom =127
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =853
        Top =6
        Right =1023
        Bottom =102
        Top =0
        Name ="tbl_Target_Coords"
        Name =""
    End
End
