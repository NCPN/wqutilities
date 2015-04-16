Operation =1
Option =0
Begin InputTables
    Name ="qsub_Transect_species_transects_lg_parks"
    Name ="qsub_Transect_species_tallies_lg_parks"
End
Begin OutputColumns
    Expression ="qsub_Transect_species_transects_lg_parks.Event_year"
    Expression ="qsub_Transect_species_transects_lg_parks.Species"
    Alias ="N_transects_MORA"
    Expression ="qsub_Transect_species_transects_lg_parks.MORA"
    Alias ="N_transects_NOCA"
    Expression ="qsub_Transect_species_transects_lg_parks.NOCA"
    Alias ="N_transects_OLYM"
    Expression ="qsub_Transect_species_transects_lg_parks.OLYM"
    Alias ="All"
    Expression ="Nz(qsub_Transect_species_transects_lg_parks.MORA)+Nz(qsub_Transect_species_trans"
        "ects_lg_parks.NOCA)+Nz(qsub_Transect_species_transects_lg_parks.OLYM)"
    Alias ="N_individuals_MORA"
    Expression ="qsub_Transect_species_tallies_lg_parks.MORA"
    Alias ="N_individuals_NOCA"
    Expression ="qsub_Transect_species_tallies_lg_parks.NOCA"
    Alias ="N_individuals_OLYM"
    Expression ="qsub_Transect_species_tallies_lg_parks.OLYM"
    Alias ="Total"
    Expression ="Nz(qsub_Transect_species_tallies_lg_parks.MORA)+Nz(qsub_Transect_species_tallies"
        "_lg_parks.NOCA)+Nz(qsub_Transect_species_tallies_lg_parks.OLYM)"
End
Begin Joins
    LeftTable ="qsub_Transect_species_transects_lg_parks"
    RightTable ="qsub_Transect_species_tallies_lg_parks"
    Expression ="qsub_Transect_species_transects_lg_parks.Event_year = qsub_Transect_species_tall"
        "ies_lg_parks.Event_year"
    Flag =2
    LeftTable ="qsub_Transect_species_transects_lg_parks"
    RightTable ="qsub_Transect_species_tallies_lg_parks"
    Expression ="qsub_Transect_species_transects_lg_parks.Species = qsub_Transect_species_tallies"
        "_lg_parks.Species"
    Flag =2
End
Begin OrderBy
    Expression ="qsub_Transect_species_transects_lg_parks.Event_year"
    Flag =1
    Expression ="qsub_Transect_species_transects_lg_parks.Species"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Number of individuals of each species detected during point counts, and the numb"
    "er of transects at which each species was detected"
Begin
    Begin
        dbText "Name" ="qsub_Transect_species_transects_lg_parks.Pref_com_name"
        dbInteger "ColumnWidth" ="2925"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_Transect_species_transects_lg_parks.Species"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =374
    Left =-1
    Top =-1
    Right =1083
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="qsub_Transect_species_transects_lg_parks"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="qsub_Transect_species_tallies_lg_parks"
        Name =""
    End
End
