Operation =1
Option =0
Begin InputTables
    Name ="qsub_Site_filters"
    Name ="qsub_Loc_filters"
    Name ="qsub_Missing_habitat_data_recs"
    Name ="qsub_Event_filters"
    Name ="tbl_Habitat"
    Name ="tlu_PMR_Veg_Type"
End
Begin OutputColumns
    Expression ="qsub_Loc_filters.Park_code"
    Alias ="Loc_code"
    Expression ="[Site_code] & '.' & [Location_code]"
    Expression ="qsub_Loc_filters.Location_type"
    Expression ="qsub_Site_filters.Panel_type"
    Expression ="qsub_Site_filters.Panel_name"
    Expression ="qsub_Missing_habitat_data_recs.Missing_yr"
    Alias ="Substitute_yr"
    Expression ="Year([Start_date])"
    Expression ="qsub_Event_filters.Start_date"
    Expression ="tbl_Habitat.Habitat_num"
    Expression ="tlu_PMR_Veg_Type.Detection_class"
    Expression ="tbl_Habitat.PMR_code"
    Expression ="tbl_Habitat.Canopy_cover"
    Expression ="tbl_Habitat.Tree_size_class"
    Expression ="tbl_Habitat.Habitat_notes"
End
Begin Joins
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Missing_habitat_data_recs"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Missing_habitat_data_recs.Location_ID"
    Flag =1
    LeftTable ="qsub_Site_filters"
    RightTable ="qsub_Loc_filters"
    Expression ="qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID"
    Flag =1
    LeftTable ="tbl_Habitat"
    RightTable ="tlu_PMR_Veg_Type"
    Expression ="tbl_Habitat.PMR_code = tlu_PMR_Veg_Type.PMR_type_code"
    Flag =1
    LeftTable ="qsub_Event_filters"
    RightTable ="tbl_Habitat"
    Expression ="qsub_Event_filters.Event_ID = tbl_Habitat.Event_ID"
    Flag =1
    LeftTable ="qsub_Loc_filters"
    RightTable ="qsub_Event_filters"
    Expression ="qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="qsub_Loc_filters.Park_code"
    Flag =0
    Expression ="qsub_Site_filters.Site_code"
    Flag =0
    Expression ="qsub_Loc_filters.Location_code"
    Flag =0
    Expression ="Year([Start_date])"
    Flag =0
    Expression ="tbl_Habitat.Habitat_num"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Candidate records for habitat data which can be used to substitute for missing h"
    "abitat values during analysis"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x04ccfc9858c9454cad265b81406d74e9
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Habitat.Habitat_num"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Habitat.PMR_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Habitat.Canopy_cover"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Habitat.Tree_size_class"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Habitat.Habitat_notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_PMR_Veg_Type.Detection_class"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Substitute_yr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Missing_habitat_data_recs.Missing_yr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Loc_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Loc_filters.Park_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =44
    Right =1496
    Bottom =997
    Left =-1
    Top =-1
    Right =1464
    Bottom =112
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
        Left =351
        Top =12
        Right =495
        Bottom =156
        Top =0
        Name ="qsub_Missing_habitat_data_recs"
        Name =""
    End
    Begin
        Left =543
        Top =12
        Right =687
        Bottom =156
        Top =0
        Name ="qsub_Event_filters"
        Name =""
    End
    Begin
        Left =799
        Top =54
        Right =959
        Bottom =210
        Top =0
        Name ="tbl_Habitat"
        Name =""
    End
    Begin
        Left =988
        Top =59
        Right =1132
        Bottom =203
        Top =0
        Name ="tlu_PMR_Veg_Type"
        Name =""
    End
End
