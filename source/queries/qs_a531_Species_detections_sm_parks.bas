Operation =1
Option =0
Begin InputTables
    Name ="qsub_Species_points_sm_parks"
    Name ="qsub_Species_tallies_sm_parks"
End
Begin OutputColumns
    Expression ="qsub_Species_points_sm_parks.Event_year"
    Expression ="qsub_Species_tallies_sm_parks.Park_code"
    Expression ="qsub_Species_points_sm_parks.Species"
    Alias ="N_points_w_detections"
    Expression ="qsub_Species_points_sm_parks.N_points"
    Alias ="N_individuals"
    Expression ="qsub_Species_tallies_sm_parks.N_indiv"
End
Begin Joins
    LeftTable ="qsub_Species_points_sm_parks"
    RightTable ="qsub_Species_tallies_sm_parks"
    Expression ="qsub_Species_points_sm_parks.Species = qsub_Species_tallies_sm_parks.Species"
    Flag =2
    LeftTable ="qsub_Species_points_sm_parks"
    RightTable ="qsub_Species_tallies_sm_parks"
    Expression ="qsub_Species_points_sm_parks.Event_year = qsub_Species_tallies_sm_parks.Event_ye"
        "ar"
    Flag =2
    LeftTable ="qsub_Species_points_sm_parks"
    RightTable ="qsub_Species_tallies_sm_parks"
    Expression ="qsub_Species_points_sm_parks.Park_code = qsub_Species_tallies_sm_parks.Park_code"
    Flag =2
End
Begin OrderBy
    Expression ="qsub_Species_points_sm_parks.Event_year"
    Flag =1
    Expression ="qsub_Species_tallies_sm_parks.Park_code"
    Flag =0
    Expression ="qsub_Species_points_sm_parks.IBP_number"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Number of points with detections and number of individuals detected at small par"
    "ks"
Begin
End
Begin
    State =0
    Left =84
    Top =106
    Right =1130
    Bottom =418
    Left =-1
    Top =-1
    Right =1039
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =241
        Bottom =113
        Top =0
        Name ="qsub_Species_points_sm_parks"
        Name =""
    End
    Begin
        Left =282
        Top =6
        Right =480
        Bottom =113
        Top =0
        Name ="qsub_Species_tallies_sm_parks"
        Name =""
    End
End
