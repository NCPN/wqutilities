Operation =1
Option =0
Where ="(((tbl_GPS_Info.Flag)=True) AND ((tbl_GPS_Info.Location_ID) Is Not Null))"
Begin InputTables
    Name ="tbl_GPS_Info"
End
Begin OutputColumns
    Alias ="GPS_year"
    Expression ="IIf(IsNull([GPS_date])=False,CStr(Year([GPS_date])))"
    Expression ="tbl_GPS_Info.Location_ID"
    Alias ="N_flagged"
    Expression ="Count(tbl_GPS_Info.GPS_ID)"
End
Begin Groups
    Expression ="IIf(IsNull([GPS_date])=False,CStr(Year([GPS_date])))"
    GroupLevel =0
    Expression ="tbl_GPS_Info.Location_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Number of GPS Info records flagged by location and GPS year, where Loc ID is not"
    " null"
Begin
    Begin
        dbText "Name" ="GPS_year"
        dbBinary "GUID" = Begin
            0xb09db7db7505be419b3e39959245833a
        End
    End
    Begin
        dbText "Name" ="tbl_GPS_Info.Location_ID"
        dbInteger "ColumnWidth" ="4275"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="N_flagged"
        dbBinary "GUID" = Begin
            0x3588cc01565132478820fbd850f2c7e0
        End
    End
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =352
    Left =-1
    Top =-1
    Right =1105
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
End
