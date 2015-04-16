Operation =3
Name ="tbl_GPS_Info"
Option =0
Begin InputTables
    Name ="tmp_rare_XB"
End
Begin OutputColumns
    Name ="PDOP"
    Expression ="tmp_rare_XB.Max_PDOP"
    Name ="HDOP"
    Expression ="tmp_rare_XB.Max_HDOP"
    Name ="Corr_Type"
    Expression ="tmp_rare_XB.Corr_Type"
    Name ="GPS_Date"
    Expression ="tmp_rare_XB.GPS_Date"
    Name ="GPS_Time"
    Expression ="tmp_rare_XB.GPS_Time"
    Name ="GPS_file"
    Expression ="tmp_rare_XB.Datafile"
    Name ="Filt_Pos"
    Expression ="tmp_rare_XB.Filt_Pos"
    Name ="V_err_m"
    Expression ="tmp_rare_XB.Vert_Prec"
    Name ="H_err_m"
    Expression ="tmp_rare_XB.Horz_Prec"
    Name ="Std_dev_m"
    Expression ="tmp_rare_XB.Std_Dev"
    Name ="GPS_UTMN"
    Expression ="tmp_rare_XB.Northing"
    Name ="GPS_UTME"
    Expression ="tmp_rare_XB.Easting"
    Name ="Elev_m"
    Expression ="tmp_rare_XB.GPS_Height"
    Name ="Data_dict_name"
    Expression ="tmp_rare_XB.Data_Dicti"
    Name ="Feat_name"
    Expression ="tmp_rare_XB.Feat_name"
    Name ="GPS_process_notes"
    Expression ="tmp_rare_XB.Notes"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbText "Description" ="Append Trimble Recon XB data from tmp_rare_XB to tbl_GPS_Info for rare observati"
    "ons"
Begin
    Begin
        dbText "Name" ="tmp_rare_XB.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.Max_PDOP"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.Max_HDOP"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.Datafile"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.Vert_Prec"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.Horz_Prec"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.Std_Dev"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.Northing"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.Easting"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.GPS_Height"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_rare_XB.Data_Dicti"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =764
    Bottom =812
    Left =-1
    Top =-1
    Right =741
    Bottom =502
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =48
        Top =12
        Right =492
        Bottom =444
        Top =0
        Name ="tmp_rare_XB"
        Name =""
    End
End
