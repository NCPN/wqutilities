Operation =1
Option =0
Where ="(((tbl_Events.Is_excluded)=True))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
End
Begin OutputColumns
    Alias ="Sample_year"
    Expression ="CStr(Year([Start_date]))"
    Alias ="Loc_code"
    Expression ="[Park_code] & '.' & [Location_code]"
    Expression ="tbl_Events.Start_date"
    Expression ="tbl_Events.Is_excluded"
    Expression ="tbl_Events.QA_notes"
    Expression ="tbl_Events.Event_notes"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="CStr(Year([Start_date]))"
    Flag =1
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
    Expression ="tbl_Events.Start_date"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Standard query showing event records that are flagged to be excluded from data s"
    "ummary output among years"
Begin
    Begin
        dbText "Name" ="tbl_Events.Event_notes"
        dbInteger "ColumnWidth" ="1530"
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
        Left =45
        Top =12
        Right =141
        Bottom =119
        Top =5
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =179
        Top =6
        Right =275
        Bottom =113
        Top =1
        Name ="tbl_Events"
        Name =""
    End
End
