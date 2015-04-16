Operation =4
Option =0
Where ="(((qxsub_GPS_Info_by_year.Flag)=0) AND ((qxsub_GPS_Info_by_year.GPS_year) In (SE"
    "LECT Cstr(Year([GPS_date])) FROM [qxsub_GPS_Info_by_year] As Tmp GROUP BY Cstr(Y"
    "ear([GPS_date])),[Location_ID] HAVING Count(*)=1  And [Location_ID] = [qxsub_GPS"
    "_Info_by_year].[Location_ID])) AND ((qxsub_GPS_Info_by_year.Coord_ID) Is Null))"
Begin InputTables
    Name ="qxsub_GPS_Info_by_year"
End
Begin OutputColumns
    Name ="qxsub_GPS_Info_by_year.Flag"
    Expression ="-1"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbText "Description" ="Flags GPS Info records without Coord_ID where only one record exists for each lo"
    "cation-year combination"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="qxsub_GPS_Info_missing_Coord_ID.GPS_year"
        dbInteger "ColumnWidth" ="1005"
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
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="qxsub_GPS_Info_by_year"
        Name =""
    End
End
