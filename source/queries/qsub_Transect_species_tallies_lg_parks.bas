Operation =6
Option =0
Begin InputTables
    Name ="qsub_Transect_species_detections_lg_parks"
End
Begin OutputColumns
    Expression ="qsub_Transect_species_detections_lg_parks.Event_year"
    GroupLevel =2
    Expression ="qsub_Transect_species_detections_lg_parks.Species"
    GroupLevel =2
    Expression ="qsub_Transect_species_detections_lg_parks.Park_code"
    GroupLevel =1
    Alias ="SumOfN_individuals"
    Expression ="Sum(qsub_Transect_species_detections_lg_parks.N_individuals)"
End
Begin OrderBy
    Expression ="qsub_Transect_species_detections_lg_parks.Event_year"
    Flag =0
    Expression ="qsub_Transect_species_detections_lg_parks.IBP_number"
    Flag =0
End
Begin Groups
    Expression ="qsub_Transect_species_detections_lg_parks.Event_year"
    GroupLevel =2
    Expression ="qsub_Transect_species_detections_lg_parks.Species"
    GroupLevel =2
    Expression ="qsub_Transect_species_detections_lg_parks.Park_code"
    GroupLevel =1
    Expression ="qsub_Transect_species_detections_lg_parks.IBP_number"
    GroupLevel =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Number of individuals of each species detected during point counts"
Begin
    Begin
        dbText "Name" ="MORA"
        dbBinary "GUID" = Begin
            0x22fd8b0a673df745b05e39a0164a9a62
        End
    End
    Begin
        dbText "Name" ="NOCA"
        dbBinary "GUID" = Begin
            0x5ac0319ec8f50c4284a3c4e948dcf1f8
        End
    End
    Begin
        dbText "Name" ="OLYM"
        dbBinary "GUID" = Begin
            0x54f6083c714bfe45b7c5198c120bc12b
        End
    End
    Begin
        dbText "Name" ="qsub_Transect_species_detections_lg_parks.Species"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
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
    Right =801
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =2
        Name ="qsub_Transect_species_detections_lg_parks"
        Name =""
    End
End
