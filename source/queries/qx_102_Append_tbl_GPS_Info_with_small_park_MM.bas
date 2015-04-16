Operation =3
Name ="tbl_GPS_Info"
Option =0
Begin InputTables
    Name ="tmp_Small_park_MM"
End
Begin OutputColumns
    Alias ="Expr1"
    Name ="GPS_UTME"
    Expression ="tmp_Small_park_MM.Easting"
    Alias ="Expr2"
    Name ="GPS_UTMN"
    Expression ="tmp_Small_park_MM.Northing"
    Alias ="Expr3"
    Name ="Elev_m"
    Expression ="tmp_Small_park_MM.Height"
    Alias ="Expr4"
    Name ="Num_sat"
    Expression ="tmp_Small_park_MM.Num_sat"
    Alias ="Expr5"
    Name ="PDOP"
    Expression ="tmp_Small_park_MM.PDOP"
    Alias ="Expr6"
    Name ="GPS_date"
    Expression ="tmp_Small_park_MM.GPS_date"
    Alias ="Expr7"
    Name ="GPS_time"
    Expression ="tmp_Small_park_MM.GPS_time"
    Alias ="Expr8"
    Name ="GPS_duration"
    Expression ="tmp_Small_park_MM.GPS_duration"
    Alias ="Expr9"
    Name ="Corr_type"
    Expression ="tmp_Small_park_MM.Correction"
    Alias ="Expr10"
    Name ="H_err_m"
    Expression ="tmp_Small_park_MM.Horiz_err_m"
    Alias ="Expr11"
    Name ="V_err_m"
    Expression ="tmp_Small_park_MM.Vert_Err_m"
    Alias ="Expr12"
    Name ="Is_better"
    Expression ="tmp_Small_park_MM.Better"
    Alias ="Expr13"
    Name ="GPS_process_notes"
    Expression ="tmp_Small_park_MM.Notes"
    Alias ="Expr14"
    Name ="Feat_name"
    Expression ="tmp_Small_park_MM.Feat_name"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbText "Description" ="Append Mobile Mapper data from tmp_Small_Park_MM to tbl_GPS_Info for LEWI or SAJ"
    "H"
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
        dbText "Name" ="Expr10"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_Small_park_MM.Horiz_err_m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr11"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-24
    Top =40
    Right =746
    Bottom =812
    Left =-1
    Top =-1
    Right =747
    Bottom =341
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =249
        Top =0
        Name ="tmp_Small_park_MM"
        Name =""
    End
End
