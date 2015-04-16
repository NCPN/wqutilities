Operation =1
Option =0
Where ="(((qxsub_GPS_Info_flagged_grouped_by_loc_and_year.N_flagged)>1))"
Begin InputTables
    Name ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year"
End
Begin OutputColumns
    Expression ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year.GPS_year"
    Expression ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year.Location_ID"
    Expression ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year.N_flagged"
End
Begin OrderBy
    Expression ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year.GPS_year"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Records grouped by location and year with more than one record flagged to be lin"
    "ked with coordinates - each loc-year combination should have one flagged record"
Begin
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
    ColumnsShown =539
    Begin
        Left =237
        Top =16
        Right =584
        Bottom =108
        Top =0
        Name ="qxsub_GPS_Info_flagged_grouped_by_loc_and_year"
        Name =""
    End
End
