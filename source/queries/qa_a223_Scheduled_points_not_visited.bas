Operation =1
Option =0
Where ="(((tbl_Locations.Location_status)='Active') AND ((Year([Loc_established]))<=Nz(C"
    "Int([Calendar_year]))) AND ((Year([Loc_discontinued])) Is Null Or (Year([Loc_dis"
    "continued]))>Nz(CInt([Calendar_year]))) AND ((qsub_Event_years.Location_ID) Is N"
    "ull)) OR (((tbl_Locations.Location_status)='Retired' Or (tbl_Locations.Location_"
    "status)='Rejected') AND ((Year([Loc_established])) Is Null Or (Year([Loc_establi"
    "shed]))<=Nz(CInt([Calendar_year]))) AND ((Year([Loc_discontinued]))>Nz(CInt([Cal"
    "endar_year]))) AND ((qsub_Event_years.Location_ID) Is Null)) OR (((tbl_Locations"
    ".Location_status)='Proposed') AND ((qsub_Event_years.Location_ID) Is Null)) OR ("
    "((qsub_Event_years.Location_ID) Is Null) AND ((tbl_Locations.Loc_established) Is"
    " Null) AND ((tbl_Locations.Loc_discontinued) Is Null)) OR (((tbl_Locations.Locat"
    "ion_type) Not In ('Incidental','Origin')) AND ((qsub_Event_years.N_obs_recs)=0) "
    "AND ((qsub_Event_years.Location_ID) Is Not Null))"
Begin InputTables
    Name ="tbl_Strata"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qsub_Scheduled_points"
    Name ="qsub_Event_years"
End
Begin OutputColumns
    Expression ="qsub_Scheduled_points.Calendar_year"
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Alias ="Stratum"
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Alias ="Year_established"
    Expression ="Year([Loc_established])"
    Alias ="Year_discontinued"
    Expression ="Year([Loc_discontinued])"
    Expression ="qsub_Event_years.N_obs_recs"
    Alias ="varObject"
    Expression ="\"frm_Data_Gateway\""
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="qsub_Scheduled_points"
    Expression ="tbl_Locations.Location_ID = qsub_Scheduled_points.Location_ID"
    Flag =1
    LeftTable ="qsub_Scheduled_points"
    RightTable ="qsub_Event_years"
    Expression ="qsub_Scheduled_points.Calendar_year = qsub_Event_years.Event_year"
    Flag =2
    LeftTable ="qsub_Scheduled_points"
    RightTable ="qsub_Event_years"
    Expression ="qsub_Scheduled_points.Location_ID = qsub_Event_years.Location_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Strata"
    RightTable ="tbl_Sites"
    Expression ="tbl_Strata.Stratum_ID = tbl_Sites.Stratum_ID"
    Flag =1
End
Begin OrderBy
    Expression ="qsub_Scheduled_points.Calendar_year"
    Flag =1
    Expression ="tbl_Sites.Park_code"
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
dbText "Description" ="Active points associated with scheduled sites that were not sampled in a given y"
    "ear"
Begin
    Begin
        dbText "Name" ="Year_established"
        dbInteger "ColumnWidth" ="1635"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Year_discontinued"
        dbInteger "ColumnWidth" ="1635"
        dbBoolean "ColumnHidden" ="0"
    End
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
    ColumnsShown =539
    Begin
        Left =52
        Top =5
        Right =148
        Bottom =112
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
    Begin
        Left =185
        Top =5
        Right =281
        Bottom =112
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =319
        Top =5
        Right =415
        Bottom =112
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =448
        Top =8
        Right =599
        Bottom =85
        Top =0
        Name ="qsub_Scheduled_points"
        Name =""
    End
    Begin
        Left =638
        Top =8
        Right =760
        Bottom =115
        Top =0
        Name ="qsub_Event_years"
        Name =""
    End
End
