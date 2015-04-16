Operation =1
Option =0
Begin InputTables
    Name ="qrsub_Navigation_report_base"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="qrsub_Navigation_report_base.Site_ID"
    Expression ="qrsub_Navigation_report_base.Location_ID"
    Alias ="MaxOfStart_date"
    Expression ="Max(tbl_Events.Start_date)"
End
Begin Joins
    LeftTable ="qrsub_Navigation_report_base"
    RightTable ="tbl_Events"
    Expression ="qrsub_Navigation_report_base.Location_ID = tbl_Events.Location_ID"
    Flag =2
End
Begin Groups
    Expression ="qrsub_Navigation_report_base.Site_ID"
    GroupLevel =0
    Expression ="qrsub_Navigation_report_base.Location_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Subquery showing the most recent sampling event for the navigation report"
Begin
    Begin
        dbText "Name" ="MaxOfStart_date"
        dbInteger "ColumnWidth" ="1584"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0xdaa4111f289bb34c87a44da01403c6a3
        End
    End
End
Begin
    State =0
    Left =80
    Top =56
    Right =1115
    Bottom =404
    Left =-1
    Top =-1
    Right =1028
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="qrsub_Navigation_report_base"
        Name =""
    End
    Begin
        Left =334
        Top =3
        Right =536
        Bottom =140
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
