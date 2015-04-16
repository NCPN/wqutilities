Operation =3
Name ="tbl_GPS_Info"
Option =0
Begin InputTables
    Name ="tmp_Large_park_MM"
End
Begin OutputColumns
    Alias ="Expr1"
    Name ="GPS_UTME"
    Expression ="tmp_Large_park_MM.Easting"
    Alias ="Expr2"
    Name ="GPS_UTMN"
    Expression ="tmp_Large_park_MM.Northing"
    Alias ="Expr3"
    Name ="Elev_m"
    Expression ="tmp_Large_park_MM.Height"
    Alias ="Expr4"
    Name ="Num_sat"
    Expression ="tmp_Large_park_MM.Num_Sat"
    Alias ="Expr5"
    Name ="PDOP"
    Expression ="tmp_Large_park_MM.PDOP"
    Alias ="Expr6"
    Name ="GPS_date"
    Expression ="tmp_Large_park_MM.GPS_date"
    Alias ="Expr7"
    Name ="GPS_time"
    Expression ="tmp_Large_park_MM.GPS_time"
    Alias ="Expr8"
    Name ="GPS_duration"
    Expression ="tmp_Large_park_MM.GPS_duration"
    Alias ="Expr9"
    Name ="Corr_type"
    Expression ="tmp_Large_park_MM.Correction"
    Alias ="Expr10"
    Name ="H_err_m"
    Expression ="tmp_Large_park_MM.Horiz_err_m"
    Alias ="Expr11"
    Name ="V_err_m"
    Expression ="tmp_Large_park_MM.Vert_err_m"
    Alias ="Expr12"
    Name ="Is_better"
    Expression ="tmp_Large_park_MM.Better"
    Alias ="Expr13"
    Name ="GPS_process_notes"
    Expression ="tmp_Large_park_MM.Notes"
    Alias ="Expr14"
    Name ="Feat_name"
    Expression ="tmp_Large_park_MM.Feat_name"
    Alias ="Expr15"
    Name ="Is_replacement"
    Expression ="tmp_Large_park_MM.Replaced"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbText "Description" ="Append Mobile Mapper data from tmp_Large_Park_MM to tbl_GPS_Info from for OLYM, "
    "NOCA and MORA"
dbBoolean "OrderByOn" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_Large_park_MM.Horiz_err_m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr8"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_Large_park_MM.Vert_err_m"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =1
    Top =97
    Right =1042
    Bottom =662
    Left =-1
    Top =-1
    Right =1018
    Bottom =325
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="tmp_Large_park_MM"
        Name =""
    End
End
