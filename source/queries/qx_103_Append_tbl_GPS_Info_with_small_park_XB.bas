Operation =3
Name ="tbl_GPS_Info"
Option =0
Begin InputTables
    Name ="tmp_Small_park_XB"
End
Begin OutputColumns
    Alias ="Expr1"
    Name ="GPS_UTME"
    Expression ="tmp_Small_park_XB.Easting"
    Alias ="Expr2"
    Name ="GPS_UTMN"
    Expression ="tmp_Small_park_XB.Northing"
    Alias ="Expr3"
    Name ="Elev_m"
    Expression ="tmp_Small_park_XB.GPS_Height"
    Alias ="Expr4"
    Name ="PDOP"
    Expression ="tmp_Small_park_XB.Max_PDOP"
    Alias ="Expr5"
    Name ="HDOP"
    Expression ="tmp_Small_park_XB.Max_HDOP"
    Alias ="Expr6"
    Name ="GPS_date"
    Expression ="tmp_Small_park_XB.GPS_Date"
    Alias ="Expr7"
    Name ="GPS_time"
    Expression ="tmp_Small_park_XB.GPS_Time"
    Alias ="Expr8"
    Name ="Corr_type"
    Expression ="tmp_Small_park_XB.Corr_Type"
    Alias ="Expr9"
    Name ="H_err_m"
    Expression ="tmp_Small_park_XB.Horz_Prec"
    Alias ="Expr10"
    Name ="V_err_m"
    Expression ="tmp_Small_park_XB.Vert_Prec"
    Alias ="Expr11"
    Name ="Std_dev_m"
    Expression ="tmp_Small_park_XB.Std_Dev"
    Alias ="Expr12"
    Name ="Is_better"
    Expression ="tmp_Small_park_XB.Better"
    Alias ="Expr13"
    Name ="GPS_process_notes"
    Expression ="tmp_Small_park_XB.Notes"
    Alias ="Expr14"
    Name ="Feat_name"
    Expression ="tmp_Small_park_XB.Feat_Name"
    Alias ="Expr15"
    Name ="GPS_file"
    Expression ="tmp_Small_park_XB.Datafile"
    Alias ="Expr16"
    Name ="Filt_pos"
    Expression ="tmp_Small_park_XB.Filt_Pos"
    Alias ="Expr17"
    Name ="Data_dict_name"
    Expression ="tmp_Small_park_XB.Data_Dicti"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbText "Description" ="Append Trimble Recon XB data from tmp_Small_Park_XB to tbl_GPS_Info for LEWI or "
    "SAJH"
dbBoolean "OrderByOn" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =74
    Top =24
    Right =952
    Bottom =778
    Left =-1
    Top =-1
    Right =855
    Bottom =530
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="tmp_Small_park_XB"
        Name =""
    End
End
