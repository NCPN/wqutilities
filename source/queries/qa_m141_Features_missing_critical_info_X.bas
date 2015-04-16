Operation =1
Option =0
Where ="(((tbl_Features.Event_ID) Is Null)) OR (((tbl_Features.Feature_type) Is Null)) O"
    "R (((tbl_Features.Feature_desc) Is Null)) OR (((tbl_Features.Feature_status) Is "
    "Null))"
Begin InputTables
    Name ="tbl_Features"
End
Begin OutputColumns
    Expression ="tbl_Features.Event_ID"
    Expression ="tbl_Features.Feature_type"
    Expression ="tbl_Features.Feature_desc"
    Expression ="tbl_Features.Feature_status"
    Expression ="tbl_Features.Feature_updated"
    Expression ="tbl_Features.Feature_ID"
    Alias ="varObject"
    Expression ="\"tbl_Features\""
End
Begin OrderBy
    Expression ="tbl_Features.Event_ID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Event ID, feature type, feature description, or feature status is missing"
Begin
    Begin
        dbText "Name" ="tbl_Features.Feature_updated"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Features.Feature_type"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
    End
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
        Name ="tbl_Features"
        Name =""
    End
End
