Operation =1
Option =0
Begin InputTables
    Name ="qsub_Transect_species_transects_lg_parks_annual"
    Name ="qsub_Transect_species_tallies_lg_parks_annual"
End
Begin OutputColumns
    Expression ="qsub_Transect_species_transects_lg_parks_annual.Event_year"
    Expression ="qsub_Transect_species_transects_lg_parks_annual.Species"
    Alias ="N_transects_MORA"
    Expression ="qsub_Transect_species_transects_lg_parks_annual.MORA"
    Alias ="N_transects_NOCA"
    Expression ="qsub_Transect_species_transects_lg_parks_annual.NOCA"
    Alias ="N_transects_OLYM"
    Expression ="qsub_Transect_species_transects_lg_parks_annual.OLYM"
    Alias ="All"
    Expression ="Nz(qsub_Transect_species_transects_lg_parks_annual.MORA)+Nz(qsub_Transect_specie"
        "s_transects_lg_parks_annual.NOCA)+Nz(qsub_Transect_species_transects_lg_parks_an"
        "nual.OLYM)"
    Alias ="N_individuals_MORA"
    Expression ="qsub_Transect_species_tallies_lg_parks_annual.MORA"
    Alias ="N_individuals_NOCA"
    Expression ="qsub_Transect_species_tallies_lg_parks_annual.NOCA"
    Alias ="N_individuals_OLYM"
    Expression ="qsub_Transect_species_tallies_lg_parks_annual.OLYM"
    Alias ="Total"
    Expression ="Nz(qsub_Transect_species_tallies_lg_parks_annual.MORA)+Nz(qsub_Transect_species_"
        "tallies_lg_parks_annual.NOCA)+Nz(qsub_Transect_species_tallies_lg_parks_annual.O"
        "LYM)"
End
Begin Joins
    LeftTable ="qsub_Transect_species_transects_lg_parks_annual"
    RightTable ="qsub_Transect_species_tallies_lg_parks_annual"
    Expression ="qsub_Transect_species_transects_lg_parks_annual.Event_year = qsub_Transect_speci"
        "es_tallies_lg_parks_annual.Event_year"
    Flag =2
    LeftTable ="qsub_Transect_species_transects_lg_parks_annual"
    RightTable ="qsub_Transect_species_tallies_lg_parks_annual"
    Expression ="qsub_Transect_species_transects_lg_parks_annual.Species = qsub_Transect_species_"
        "tallies_lg_parks_annual.Species"
    Flag =2
End
Begin OrderBy
    Expression ="qsub_Transect_species_transects_lg_parks_annual.Event_year"
    Flag =1
    Expression ="qsub_Transect_species_transects_lg_parks_annual.Species"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="For annual panel only, the number of individuals of each species detected during"
    " point counts, and the number of transects at which each species was detected"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="qsub_Transect_species_transects_lg_parks.Pref_com_name"
        dbInteger "ColumnWidth" ="2925"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_Transect_species_transects_lg_parks_annual.Pref_com_name"
        dbInteger "ColumnWidth" ="2925"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qsub_Transect_species_transects_lg_parks_annual.Species"
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
        Name ="qsub_Transect_species_transects_lg_parks_annual"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="qsub_Transect_species_tallies_lg_parks_annual"
        Name =""
    End
End
