Operation =1
Option =0
Where ="(((qxsub_GPS_Info_by_year.GPS_year) In (SELECT Cstr(Year([GPS_date])) FROM [qxsu"
    "b_GPS_Info_by_year] As Tmp GROUP BY Cstr(Year([GPS_date])),[Location_ID] HAVING "
    "Count(*)>1  And [Location_ID] = [qxsub_GPS_Info_by_year].[Location_ID])))"
Begin InputTables
    Name ="qxsub_GPS_Info_by_year"
End
Begin OutputColumns
    Expression ="qxsub_GPS_Info_by_year.GPS_year"
    Expression ="qxsub_GPS_Info_by_year.Feat_name"
    Expression ="qxsub_GPS_Info_by_year.GPS_date"
    Expression ="qxsub_GPS_Info_by_year.Flag"
    Expression ="qxsub_GPS_Info_by_year.Is_better"
    Expression ="qxsub_GPS_Info_by_year.Is_replacement"
    Expression ="qxsub_GPS_Info_by_year.GPS_ID"
    Expression ="qxsub_GPS_Info_by_year.Location_ID"
    Expression ="qxsub_GPS_Info_by_year.Coord_ID"
    Expression ="qxsub_GPS_Info_by_year.GPS_file"
    Expression ="qxsub_GPS_Info_by_year.GPS_time"
    Expression ="qxsub_GPS_Info_by_year.Corr_type"
    Expression ="qxsub_GPS_Info_by_year.GPS_UTME"
    Expression ="qxsub_GPS_Info_by_year.GPS_UTMN"
    Expression ="qxsub_GPS_Info_by_year.UTM_zone"
    Expression ="qxsub_GPS_Info_by_year.GPS_datum"
    Expression ="qxsub_GPS_Info_by_year.Feat_type"
    Expression ="qxsub_GPS_Info_by_year.Data_dict_name"
    Expression ="qxsub_GPS_Info_by_year.Elev_m"
    Expression ="qxsub_GPS_Info_by_year.Num_sat"
    Expression ="qxsub_GPS_Info_by_year.GPS_duration"
    Expression ="qxsub_GPS_Info_by_year.Filt_pos"
    Expression ="qxsub_GPS_Info_by_year.PDOP"
    Expression ="qxsub_GPS_Info_by_year.HDOP"
    Expression ="qxsub_GPS_Info_by_year.H_err_m"
    Expression ="qxsub_GPS_Info_by_year.V_err_m"
    Expression ="qxsub_GPS_Info_by_year.Std_dev_m"
    Expression ="qxsub_GPS_Info_by_year.GPS_process_notes"
End
Begin OrderBy
    Expression ="qxsub_GPS_Info_by_year.GPS_year"
    Flag =1
    Expression ="qxsub_GPS_Info_by_year.Feat_name"
    Flag =0
    Expression ="qxsub_GPS_Info_by_year.Flag"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Shows records to be flagged manually where there are multiple records for each l"
    "ocation-year combination - each location-year combination should have one record"
    " flagged"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =1154
    Bottom =750
    Left =-1
    Top =-1
    Right =1153
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
        Name ="qxsub_GPS_Info_by_year"
        Name =""
    End
End
