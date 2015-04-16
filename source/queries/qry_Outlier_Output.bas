dbMemo "SQL" ="SELECT tbl_wrk_Outliers.ProjectID AS Expr1, tbl_wrk_Outliers.StationID AS Expr2,"
    " tbl_wrk_Outliers.StationName AS Expr3, tbl_wrk_Outliers.Start_Date AS Expr4, tb"
    "l_wrk_Outliers.CharacteristicName AS Expr5, tbl_wrk_Outliers.DetectionCondition "
    "AS Expr6, tbl_wrk_Outliers.ResultValue AS Expr7, tbl_wrk_Outliers.RemarkCode AS "
    "Expr8, tbl_wrk_Outliers.ResultComment AS Expr9, tbl_wrk_Outliers.VisitComment AS"
    " Expr10, tbl_wrk_Outliers.Cutoff_5 AS Expr11, tbl_wrk_Outliers.Cutoff_95 AS Expr"
    "12, tbl_wrk_Outliers.Sample_Size AS Expr13\015\012FROM tbl_wrk_Outliers\015\012O"
    "RDER BY tbl_wrk_Outliers.ProjectID, tbl_wrk_Outliers.StationID, tbl_wrk_Outliers"
    ".Start_Date, tbl_wrk_Outliers.CharacteristicName;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbBinary "GUID" = Begin
    0x8cb2c30094edef47a177fb30edbdf4b1
End
Begin
    Begin
        dbText "Name" ="tbl_wrk_Outliers.VisitComment"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd5052b651140294a9be2aa9503b4bf9a
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.ProjectID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7f2eca274ec2594ca3805d90cf61913d
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf3d32409207ebd438f5c9e3d918cc4d5
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.Start_Date"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcd35265c41ef274d8a262cb051b8b5ed
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.CharacteristicName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x09ff6a76fc254145b22de50a15d750cb
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.StationName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d407d4bde539b4085025f975e20cb3d
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.DetectionCondition"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f133bb61c999941a5369044d719f55a
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.ResultValue"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfa95ac1168361c40b98fdf13819405a2
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.RemarkCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaf307ea05d2f7d4ab1d6dc8fef258ef8
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.ResultComment"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2d4628bcd4b04b4da067edf432875d66
        End
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.Sample_Size"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.Cutoff_5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_wrk_Outliers.Cutoff_95"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
End
