Operation =1
Option =0
Where ="(((tbl_Sites.Site_code) Is Null)) OR (((tbl_Sites.Park_code) Is Null)) OR (((tbl"
    "_Sites.Stratum_ID) Is Null))"
Begin InputTables
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Sites.Stratum_ID"
    Alias ="varObject"
    Expression ="\"fsub_Sites_Browser\""
    Alias ="varFilter"
    Expression ="\"Site_ID='\" & [Site_ID] & \"'\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing site code, park code, or stratum ID"
Begin
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1149
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =7
        Right =168
        Bottom =144
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
End
