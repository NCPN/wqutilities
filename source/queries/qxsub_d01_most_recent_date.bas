Operation =1
Option =0
Begin InputTables
    Name ="tbl_Events"
    Name ="qx_d01_Locations_missing_coord_records"
End
Begin OutputColumns
    Expression ="qx_d01_Locations_missing_coord_records.Location_ID"
    Alias ="Most_recent_date"
    Expression ="Max(tbl_Events.Start_date)"
End
Begin Joins
    LeftTable ="qx_d01_Locations_missing_coord_records"
    RightTable ="tbl_Events"
    Expression ="qx_d01_Locations_missing_coord_records.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
Begin Groups
    Expression ="qx_d01_Locations_missing_coord_records.Location_ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Provides the most recent sampling event to resolve missing coordinate records"
Begin
    Begin
        dbText "Name" ="Most_recent_date"
        dbBinary "GUID" = Begin
            0x0852f0acd62b534bb1fd32ef09ec4e9d
        End
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =1154
    Bottom =750
    Left =-1
    Top =-1
    Right =1153
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =371
        Top =10
        Right =467
        Bottom =117
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="qx_d01_Locations_missing_coord_records"
        Name =""
    End
End
