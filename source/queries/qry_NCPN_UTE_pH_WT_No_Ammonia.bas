Operation =1
Option =0
Where ="(((qry_NCPN_UTE_Ammonia.ProjectID) Is Null))"
Begin InputTables
    Name ="qry_NCPN_UTE_pH_WT"
    Name ="qry_NCPN_UTE_Ammonia"
End
Begin OutputColumns
    Expression ="qry_NCPN_UTE_pH_WT.ProjectID"
    Expression ="qry_NCPN_UTE_pH_WT.StationID"
    Expression ="qry_NCPN_UTE_pH_WT.[Station Name]"
    Expression ="qry_NCPN_UTE_pH_WT.START_DATE"
    Expression ="qry_NCPN_UTE_pH_WT.pH_Result"
    Expression ="qry_NCPN_UTE_pH_WT.pH_Status"
    Expression ="qry_NCPN_UTE_pH_WT.Water_Temp_Result"
    Expression ="qry_NCPN_UTE_pH_WT.Water_Temp_Status"
End
Begin Joins
    LeftTable ="qry_NCPN_UTE_pH_WT"
    RightTable ="qry_NCPN_UTE_Ammonia"
    Expression ="qry_NCPN_UTE_pH_WT.ProjectID = qry_NCPN_UTE_Ammonia.ProjectID"
    Flag =2
    LeftTable ="qry_NCPN_UTE_pH_WT"
    RightTable ="qry_NCPN_UTE_Ammonia"
    Expression ="qry_NCPN_UTE_pH_WT.StationID = qry_NCPN_UTE_Ammonia.StationID"
    Flag =2
    LeftTable ="qry_NCPN_UTE_pH_WT"
    RightTable ="qry_NCPN_UTE_Ammonia"
    Expression ="qry_NCPN_UTE_pH_WT.START_DATE = qry_NCPN_UTE_Ammonia.START_DATE"
    Flag =2
End
Begin OrderBy
    Expression ="qry_NCPN_UTE_pH_WT.StationID"
    Flag =0
    Expression ="qry_NCPN_UTE_pH_WT.START_DATE"
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
        dbText "Name" ="qry_NCPN_UTE_pH_WT.Water_Temp_Status"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbcabca798f37ae4895892308b84ba70d
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_pH_WT.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1b1c523b1677164ba5e96b68f2a3d69a
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_pH_WT.START_DATE"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0a5e147ad4aca24fbbda605d33e570e6
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_pH_WT.ProjectID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x09ab84acd242db4c8e625ce2094ee2c2
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_pH_WT.[Station Name]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d1df3eb8917d2439d18219df24f94b1
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_pH_WT.pH_Result"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x39dc2fae13d4b2448bb2a38340e17a36
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_pH_WT.pH_Status"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ab7ac8589f1924e8322beb361b2dbab
        End
    End
    Begin
        dbText "Name" ="qry_NCPN_UTE_pH_WT.Water_Temp_Result"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd2cdaf8f1bdb044c95198f0b5b6b944d
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
    Bottom =401
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =203
        Bottom =156
        Top =0
        Name ="qry_NCPN_UTE_pH_WT"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =411
        Bottom =156
        Top =0
        Name ="qry_NCPN_UTE_Ammonia"
        Name =""
    End
End
