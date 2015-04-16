Operation =1
Option =0
Begin InputTables
    Name ="qsub_Species_detections_sm_parks"
End
Begin OutputColumns
    Expression ="qsub_Species_detections_sm_parks.Event_year"
    Expression ="qsub_Species_detections_sm_parks.Park_code"
    Expression ="qsub_Species_detections_sm_parks.Species"
    Alias ="N_indiv"
    Expression ="Sum(qsub_Species_detections_sm_parks.N_individuals)"
End
Begin OrderBy
    Expression ="qsub_Species_detections_sm_parks.Event_year"
    Flag =0
End
Begin Groups
    Expression ="qsub_Species_detections_sm_parks.Event_year"
    GroupLevel =0
    Expression ="qsub_Species_detections_sm_parks.Park_code"
    GroupLevel =0
    Expression ="qsub_Species_detections_sm_parks.Species"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "OrderByOn" ="0"
dbText "Description" ="For small parks, total number observed by species"
Begin
    Begin
        dbText "Name" ="N_indiv"
        dbBinary "GUID" = Begin
            0x28347ab48006114c84cc6cd649c1d901
        End
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =808
    Bottom =748
    Left =-1
    Top =-1
    Right =805
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="qsub_Species_detections_sm_parks"
        Name =""
    End
End
