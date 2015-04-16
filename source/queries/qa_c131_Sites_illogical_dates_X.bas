Operation =1
Option =0
Where ="(((tbl_Sites.Site_discontinued)<[Site_established])) OR (((tbl_Sites.Site_update"
    "d)<[Site_created_date]))"
Begin InputTables
    Name ="tbl_Sites"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Sites.Site_status"
    Expression ="tbl_Sites.Site_established"
    Expression ="tbl_Sites.Site_discontinued"
    Expression ="tbl_Sites.Site_created_date"
    Expression ="tbl_Sites.Site_updated"
    Expression ="tbl_Sites.Site_updated_by"
    Alias ="varObject"
    Expression ="\"fsub_Sites_Browser\""
    Alias ="varFilter"
    Expression ="\"Site_ID='\" & [Site_ID] & \"'\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Discontinued date prior to establishment date, or updated date prior to created "
    "date"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="tbl_Sites.Site_created_date"
        dbInteger "ColumnWidth" ="1836"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1112
    Bottom =541
    Left =-1
    Top =-1
    Right =1065
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
