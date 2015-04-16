Operation =6
Option =0
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Observers"
End
Begin OutputColumns
    Alias ="Event_year"
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =2
    Alias ="Observer"
    Expression ="tbl_Observers.Contact_ID"
    GroupLevel =2
    Expression ="tbl_Observers.Observer_role"
    GroupLevel =1
    Alias ="N_points"
    Expression ="Count(tbl_Observers.Event_ID)"
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Observers"
    Expression ="tbl_Events.Event_ID = tbl_Observers.Event_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
End
Begin OrderBy
    Expression ="CStr(Year([Start_date]))"
    Flag =1
    Expression ="tbl_Observers.Contact_ID"
    Flag =0
    Expression ="tbl_Observers.Observer_role"
    Flag =0
End
Begin Groups
    Expression ="CStr(Year([Start_date]))"
    GroupLevel =2
    Expression ="tbl_Observers.Contact_ID"
    GroupLevel =2
    Expression ="tbl_Observers.Observer_role"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="List of observers and the number of associated event records by year and observe"
    "r role"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="tbl_Observers.Observer_role"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="habitat assessment"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =374
    Left =-1
    Top =-1
    Right =1083
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =27
        Top =6
        Right =123
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =159
        Top =7
        Right =255
        Bottom =114
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =294
        Top =9
        Right =390
        Bottom =116
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =434
        Top =7
        Right =530
        Bottom =114
        Top =0
        Name ="tbl_Observers"
        Name =""
    End
End
