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
dbText "Description" ="Number of transects at which each species was detected"
Begin
    Begin
        dbText "Name" ="MORA"
        dbBinary "GUID" = Begin
            0x9b593968b37c204f9ed856a4d4d3ab1e
        End
    End
    Begin
        dbText "Name" ="NOCA"
        dbBinary "GUID" = Begin
            0xa3155fd0e2ae9b4aa0715ac5c2b8a7a7
        End
    End
    Begin
        dbText "Name" ="OLYM"
        dbBinary "GUID" = Begin
            0x9f547f277b157d469ef0456ffa694f5c
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
        Top =0
        Name ="qsub_Transect_species_detections_lg_parks"
        Name =""
    End
End
