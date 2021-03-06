﻿dbMemo "SQL" ="SELECT qsub_Event_filters.Event_year, tbl_Point_Counts.Taxon_ID, qsub_Loc_filter"
    "s.Park_code, tlu_Project_Taxa.Species_code, qsub_Site_filters.Site_code, qsub_Lo"
    "c_filters.Location_code, qsub_Loc_filters.Location_type, qsub_Loc_filters.Site_I"
    "D, qsub_Loc_filters.Location_ID, qsub_Event_filters.Event_ID, 'Point count' AS D"
    "ata_source\015\012FROM tlu_Project_Taxa INNER JOIN (qsub_Site_filters RIGHT JOIN"
    " (qsub_Loc_filters INNER JOIN (qsub_Event_filters INNER JOIN tbl_Point_Counts ON"
    " qsub_Event_filters.Event_ID = tbl_Point_Counts.Event_ID) ON qsub_Loc_filters.Lo"
    "cation_ID = qsub_Event_filters.Location_ID) ON qsub_Site_filters.Site_ID = qsub_"
    "Loc_filters.Site_ID) ON tlu_Project_Taxa.Taxon_ID = tbl_Point_Counts.Taxon_ID\015"
    "\012GROUP BY qsub_Event_filters.Event_year, qsub_Loc_filters.Park_code, tlu_Proj"
    "ect_Taxa.Species_code, qsub_Site_filters.Site_code, qsub_Loc_filters.Location_co"
    "de, qsub_Loc_filters.Location_type, qsub_Loc_filters.Site_ID, qsub_Loc_filters.L"
    "ocation_ID, qsub_Event_filters.Event_ID, tbl_Point_Counts.Taxon_ID, 'Point count"
    "'\015\012\015\012UNION SELECT qsub_Event_filters.Event_year, tbl_Nesting_Obs.Tax"
    "on_ID, qsub_Loc_filters.Park_code, tlu_Project_Taxa.Species_code, qsub_Site_filt"
    "ers.Site_code, qsub_Loc_filters.Location_code, qsub_Loc_filters.Location_type, q"
    "sub_Loc_filters.Site_ID, qsub_Loc_filters.Location_ID, qsub_Event_filters.Event_"
    "ID, 'Nesting obs' AS Data_source\015\012FROM tlu_Project_Taxa INNER JOIN (qsub_S"
    "ite_filters RIGHT JOIN (qsub_Loc_filters INNER JOIN (qsub_Event_filters INNER JO"
    "IN tbl_Nesting_Obs ON qsub_Event_filters.Event_ID = tbl_Nesting_Obs.Event_ID) ON"
    " qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_ID) ON qsub_Site_fil"
    "ters.Site_ID = qsub_Loc_filters.Site_ID) ON tlu_Project_Taxa.Taxon_ID = tbl_Nest"
    "ing_Obs.Taxon_ID\015\012GROUP BY qsub_Event_filters.Event_year, qsub_Loc_filters"
    ".Park_code, tlu_Project_Taxa.Species_code, qsub_Site_filters.Site_code, qsub_Loc"
    "_filters.Location_code, qsub_Loc_filters.Location_type, qsub_Loc_filters.Site_ID"
    ", qsub_Loc_filters.Location_ID, qsub_Event_filters.Event_ID, tbl_Nesting_Obs.Tax"
    "on_ID, 'Nesting obs'\015\012\015\012UNION SELECT qsub_Event_filters.Event_year, "
    "tbl_Rare_Bird_Obs.Taxon_ID, qsub_Loc_filters.Park_code, tlu_Project_Taxa.Species"
    "_code, qsub_Site_filters.Site_code, qsub_Loc_filters.Location_code, qsub_Loc_fil"
    "ters.Location_type, qsub_Loc_filters.Site_ID, qsub_Loc_filters.Location_ID, qsub"
    "_Event_filters.Event_ID, 'Rare bird obs' AS Data_source\015\012FROM tlu_Project_"
    "Taxa INNER JOIN (qsub_Site_filters RIGHT JOIN (qsub_Loc_filters INNER JOIN (qsub"
    "_Event_filters INNER JOIN tbl_Rare_Bird_Obs ON qsub_Event_filters.Event_ID = tbl"
    "_Rare_Bird_Obs.Event_ID) ON qsub_Loc_filters.Location_ID = qsub_Event_filters.Lo"
    "cation_ID) ON qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID) ON tlu_Proje"
    "ct_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID\015\012GROUP BY qsub_Event_filters"
    ".Event_year, qsub_Loc_filters.Park_code, tlu_Project_Taxa.Species_code, qsub_Sit"
    "e_filters.Site_code, qsub_Loc_filters.Location_code, qsub_Loc_filters.Location_t"
    "ype, qsub_Loc_filters.Site_ID, qsub_Loc_filters.Location_ID, qsub_Event_filters."
    "Event_ID, tbl_Rare_Bird_Obs.Taxon_ID, 'Rare bird obs'\015\012\015\012UNION SELEC"
    "T CStr(Year([Obs_date])) AS Event_year, tbl_Incidental_Obs.Taxon_ID, tbl_Inciden"
    "tal_Obs.Park_code, tlu_Project_Taxa.Species_code, Null AS Site_code, Null AS Loc"
    "ation_code, Null AS Location_type, Null AS Site_ID, Null AS Location_ID, Null AS"
    " Event_ID, 'Incidental obs' AS Data_source\015\012FROM tlu_Project_Taxa INNER JO"
    "IN tbl_Incidental_Obs ON tlu_Project_Taxa.Taxon_ID = tbl_Incidental_Obs.Taxon_ID"
    "\015\012GROUP BY CStr(Year([Obs_date])), tbl_Incidental_Obs.Park_code, tlu_Proje"
    "ct_Taxa.Species_code, Null, Null, Null, Null, Null, Null, tbl_Incidental_Obs.Tax"
    "on_ID, 'Incidental obs'\015\012\015\012UNION SELECT qsub_Event_filters.Event_yea"
    "r, qsub_Event_filters.Response_taxon AS Taxon, qsub_Loc_filters.Park_code, tlu_P"
    "roject_Taxa.Species_code, qsub_Site_filters.Site_code, qsub_Loc_filters.Location"
    "_code, qsub_Loc_filters.Location_type, qsub_Loc_filters.Site_ID, qsub_Event_filt"
    "ers.Location_ID, qsub_Event_filters.Event_ID, 'Owl calls' AS Data_source\015\012"
    "FROM qsub_Site_filters RIGHT JOIN (qsub_Loc_filters INNER JOIN (qsub_Event_filte"
    "rs INNER JOIN tlu_Project_Taxa ON qsub_Event_filters.Response_taxon = tlu_Projec"
    "t_Taxa.Taxon_ID) ON qsub_Loc_filters.Location_ID = qsub_Event_filters.Location_I"
    "D) ON qsub_Site_filters.Site_ID = qsub_Loc_filters.Site_ID\015\012WHERE (((tlu_P"
    "roject_Taxa.Species_code)<>'NONE'))\015\012ORDER BY Event_year, qsub_Loc_filters"
    ".Park_code, tlu_Project_Taxa.Species_code, qsub_Site_filters.Site_code, qsub_Loc"
    "_filters.Location_code;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Union of species observations filtered by summary form fields - point counts, ne"
    "sting observations, rare bird observations, incidental observations, and owl cal"
    "ls"
Begin
    Begin
        dbText "Name" ="Data_source"
        dbBinary "GUID" = Begin
            0xfff7bc32770dff469261efb3cfe47fa2
        End
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Taxon_ID"
        dbInteger "ColumnWidth" ="4110"
        dbBoolean "ColumnHidden" ="0"
    End
End
