Operation =1
Option =0
Where ="(((tbl_Features.Feature_status)='Active'))"
Begin InputTables
    Name ="tbl_Features"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Features.Feature_type"
    Expression ="tbl_Features.Feature_desc"
    Expression ="tbl_Features.Distance_m"
    Expression ="tbl_Features.Feature_azimuth"
    Expression ="tbl_Features.Feature_status"
    Expression ="tbl_Features.Feature_updated"
    Expression ="tbl_Events.Location_ID"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Features"
    Expression ="tbl_Events.Event_ID = tbl_Features.Event_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Subquery showing navigation features for the navigation report"
Begin
    Begin
        dbText "Name" ="tbl_Features.Feature_type"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Features.Feature_azimuth"
        dbInteger "ColumnWidth" ="1596"
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
        Left =235
        Top =13
        Right =398
        Bottom =135
        Top =0
        Name ="tbl_Features"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
