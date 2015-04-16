Operation =1
Option =0
Where ="(((qsub_Species_observations_pt_counts.Species)=[Enter the species code:]))"
Begin InputTables
    Name ="qsub_Species_observations_pt_counts"
End
Begin OutputColumns
    Expression ="qsub_Species_observations_pt_counts.Event_year"
    Expression ="qsub_Species_observations_pt_counts.Site_ID"
    Expression ="qsub_Species_observations_pt_counts.Location_ID"
    Expression ="qsub_Species_observations_pt_counts.Species"
    Expression ="qsub_Species_observations_pt_counts.Total_obs"
    Expression ="qsub_Species_observations_pt_counts.N_groups"
End
Begin Groups
    Expression ="qsub_Species_observations_pt_counts.Event_year"
    GroupLevel =0
    Expression ="qsub_Species_observations_pt_counts.Site_ID"
    GroupLevel =0
    Expression ="qsub_Species_observations_pt_counts.Location_ID"
    GroupLevel =0
    Expression ="qsub_Species_observations_pt_counts.Species"
    GroupLevel =0
    Expression ="qsub_Species_observations_pt_counts.Total_obs"
    GroupLevel =0
    Expression ="qsub_Species_observations_pt_counts.N_groups"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="List of points with detections for a user-input species, by year"
dbBinary "GUID" = Begin
    0x0f5e60ab7ecf5a488b76debc2f8d9ef0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qsub_Species_observations_pt_counts.Event_year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Species_observations_pt_counts.Total_obs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qsub_Species_observations_pt_counts.N_groups"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1172
    Bottom =980
    Left =-1
    Top =-1
    Right =1102
    Bottom =127
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =34
        Top =9
        Right =177
        Bottom =116
        Top =0
        Name ="qsub_Species_observations_pt_counts"
        Name =""
    End
End
