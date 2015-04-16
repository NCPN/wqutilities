Operation =6
Option =0
Where ="(((qsub_Transect_species_detections_lg_parks.Panel_type)='Annual'))"
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
    Alias ="CountOfSite_code"
    Expression ="Count(qsub_Transect_species_detections_lg_parks.Site_code)"
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
dbText "Description" ="For annual panel only, the number of transects at which each species was detecte"
    "d"
Begin
    Begin
        dbText "Name" ="MORA"
        dbBinary "GUID" = Begin
            0x7d942b9378fa6e4b97ecaf9fb83b805e
        End
    End
    Begin
        dbText "Name" ="NOCA"
        dbBinary "GUID" = Begin
            0x598364f3f9c9814e99ec74aee0db8c7a
        End
    End
    Begin
        dbText "Name" ="OLYM"
        dbBinary "GUID" = Begin
            0xfc0d300d5b09bd40b0a9349f260c705d
        End
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
    ColumnsShown =559
    Begin
        Left =38
        Top =6
        Right =165
        Bottom =113
        Top =0
        Name ="qsub_Transect_species_detections_lg_parks"
        Name =""
    End
End
