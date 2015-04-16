Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)='Incidental') AND ((tbl_Events.Start_date)<>[GPS"
    "_date]) AND ((tbl_GPS_Info.GPS_date) Is Not Null) AND ((tbl_Events.start_date) I"
    "s Not Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_GPS_Info"
    Name ="tbl_Sites"
    Name ="tbl_Events"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Alias ="Loc_code"
    Expression ="IIf(IsNull([tbl_Sites].[Site_code])=False,[Site_code] & '.','') & [Location_code"
        "]"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Expression ="tbl_GPS_Info.GPS_date"
    Alias ="Event_date"
    Expression ="tbl_Events.Start_date"
    Expression ="tbl_GPS_Info.*"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_GPS_Info"
    Expression ="tbl_Locations.Location_ID = tbl_GPS_Info.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tbl_Events.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =2
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Mismatches between GPS date and Event date for incidental obs (which are not rev"
    "isited in a different year; records can be confused among years if same species/"
    "transect/park) - update Location_ID in tbl_GPS_Info to match with the correct lo"
    "cation rec"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_GPS_Info.HDOP"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe9528e72361f574b9457b8ca40fe4852
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_status"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9ee81416f7646245b87a611f13e0829f
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Elev_m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0f7fcf30b92cb147b2daffd0581d7b20
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Num_sat"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5194a2a9e676574080b8f0269b5c9587
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.GPS_duration"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe74cf7edbea12b4680149eea26d99abc
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.H_err_m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3cc60319d5c1e54c89795051353b201c
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.V_err_m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf1cdd9e1ded21d4d8ef4ed2396a00432
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Std_dev_m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfc302845cb2edc408acb41b8d0eca9dc
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.GPS_process_notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd921dee2fea55c40835eb32cb690509a
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeeca08df3cda524db71468cb8aca08ea
        End
    End
    Begin
        dbText "Name" ="Loc_code"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5edb43449e3f12438d6e0b53432cc9ae
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Location_type"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x260e92e0e47b714983a754fc634d38b1
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Feat_name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x661ccbd19e9bd44e93bb8d819b650937
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Flag"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb68e0f7913018d459bf72eac09b33819
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.GPS_ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x214acafc08c6ec4ab77a22a7dea085ca
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Coord_ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94cbed6acdd70642a44f5f1a992928af
        End
        dbInteger "ColumnWidth" ="3135"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Location_ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc28da35810c6f24ead5d744b1942494d
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.GPS_file"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbae13c675ca3934cb8c92a1932f2851f
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.GPS_date"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x34e98522ed30df49a214f010cccae9e6
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.GPS_time"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa91d55b39315424c9553fd0985f5855a
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Corr_type"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7ec18aefe11ddb4184fe1f90a4c0ebe5
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.GPS_UTME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9b5ff18777c9cc43844e5dbe124c16ef
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.GPS_UTMN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80d345e3e489494fa8dafb7eeee49fb6
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.UTM_zone"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb173a527d601e4b9d7273f3a2ccc390
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.GPS_datum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1d0b25fcec783e4ba6e1aa2dfde31d4e
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Feat_type"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x27d2c8ffda0c78449ddd130950849365
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Data_dict_name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2349d5b5f97ea64caa3935093ef1a9d1
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.PDOP"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9acb61c1ad2b9d49949bc0ed43e36867
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Is_better"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe6c0e2003bbc9c4596cfbef79997cb98
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Filt_pos"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe37240484fe9d242a0012cc9db63d305
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Is_replacement"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8e843d1f95c10a41aac2269715126ad0
        End
    End
    Begin
        dbText "Name" ="Event_date"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x018b353c94a46c499e281defcfe24590
        End
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1513
    Bottom =997
    Left =-1
    Top =-1
    Right =1481
    Bottom =281
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =226
        Top =52
        Right =322
        Bottom =159
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =542
        Top =89
        Right =690
        Bottom =271
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
    Begin
        Left =46
        Top =25
        Right =142
        Bottom =132
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =360
        Top =6
        Right =456
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =729
        Top =6
        Right =825
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =863
        Top =6
        Right =959
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
