Operation =1
Option =0
Where ="(((qxsub_GPS_Info_by_year.Is_replacement)=True))"
Begin InputTables
    Name ="qxsub_GPS_Info_by_year"
End
Begin OutputColumns
    Expression ="qxsub_GPS_Info_by_year.*"
End
Begin OrderBy
    Expression ="qxsub_GPS_Info_by_year.GPS_year"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Records marked in tbl_GPS_Info as Is_replacement=True, meaning that they need to"
    " be pointed to a different location record from the one that was active at the b"
    "eginning of the year - BE SURE TO UPDATE FEATURE_NAME PRIOR TO AUTO MATCHING!"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
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
    ColumnsShown =539
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
