Operation =1
Option =0
Where ="(((qry_NCPN_UTE_pH_WT.ProjectID) Is Null))"
Begin InputTables
    Name ="qry_NCPN_UTE_Ammonia"
    Name ="qry_NCPN_UTE_pH_WT"
End
Begin OutputColumns
    Expression ="qry_NCPN_UTE_Ammonia.ProjectID"
    Expression ="qry_NCPN_UTE_Ammonia.StationID"
    Expression ="qry_NCPN_UTE_Ammonia.[Station Name]"
    Expression ="qry_NCPN_UTE_Ammonia.START_DATE"
    Expression ="qry_NCPN_UTE_Ammonia.RESULT_TEXT"
    Expression ="qry_NCPN_UTE_Ammonia.VALUE_STATUS"
    Expression ="qry_NCPN_UTE_Ammonia.LOWER_QUANT_LIMIT"
End
Begin Joins
    LeftTable ="qry_NCPN_UTE_Ammonia"
    RightTable ="qry_NCPN_UTE_pH_WT"
    Expression ="qry_NCPN_UTE_Ammonia.ProjectID = qry_NCPN_UTE_pH_WT.ProjectID"
    Flag =2
    LeftTable ="qry_NCPN_UTE_Ammonia"
    RightTable ="qry_NCPN_UTE_pH_WT"
    Expression ="qry_NCPN_UTE_Ammonia.StationID = qry_NCPN_UTE_pH_WT.StationID"
    Flag =2
    LeftTable ="qry_NCPN_UTE_Ammonia"
    RightTable ="qry_NCPN_UTE_pH_WT"
    Expression ="qry_NCPN_UTE_Ammonia.START_DATE = qry_NCPN_UTE_pH_WT.START_DATE"
    Flag =2
End
Begin OrderBy
    Expression ="qry_NCPN_UTE_Ammonia.StationID"
    Flag =0
    Expression ="qry_NCPN_UTE_Ammonia.START_DATE"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qry_NCPN_UTE_Ammonia.LOWER_QUANT_LIMIT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1d3b68d995ff344cb41d20120e164749
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_Ammonia.RESULT_TEXT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x052a83ffc5617a4c960d38c8bbf6f723
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_Ammonia.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5b975d3dfe913843837453a81b0ea5c7
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_Ammonia.START_DATE"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa3a8664a55a364e98dddc3a66379cec
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_Ammonia.ProjectID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe20d394f008b824285f00d9eed288ace
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_Ammonia.[Station Name]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb6da8b9eb35ae245aa894d619278eaa0
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_Ammonia.VALUE_STATUS"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd6d865efc7156f4fa7de256469d45ac2
        End
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1196
    Bottom =758
    Left =-1
    Top =-1
    Right =1164
    Bottom =384
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =213
        Bottom =156
        Top =0
        Name ="qry_NCPN_UTE_Ammonia"
        Name =""
    End
    Begin
        Left =260
        Top =12
        Right =425
        Bottom =156
        Top =0
        Name ="qry_NCPN_UTE_pH_WT"
        Name =""
    End
End
