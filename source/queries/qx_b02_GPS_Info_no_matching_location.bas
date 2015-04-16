Operation =1
Option =0
Where ="(((qxsub_Location_feature_name.Location_ID) Is Null) AND ((tbl_GPS_Info.Location"
    "_ID) Is Null))"
Begin InputTables
    Name ="tbl_GPS_Info"
    Name ="qxsub_Location_feature_name"
End
Begin OutputColumns
    Expression ="tbl_GPS_Info.*"
End
Begin Joins
    LeftTable ="tbl_GPS_Info"
    RightTable ="qxsub_Location_feature_name"
    Expression ="tbl_GPS_Info.Feat_name = qxsub_Location_feature_name.Feat_name"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Shows orphaned GPS Info records with missing Location ID that have no matching l"
    "ocation records (joined on feature name - look for incorrect feature name string"
    "s in GPS Info, or possibly new locations not entered correctly in db)"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =0
    Left =18
    Top =40
    Right =1130
    Bottom =523
    Left =-1
    Top =-1
    Right =1105
    Bottom =315
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =191
        Top =44
        Right =339
        Bottom =226
        Top =0
        Name ="tbl_GPS_Info"
        Name =""
    End
    Begin
        Left =392
        Top =48
        Right =488
        Bottom =155
        Top =0
        Name ="qxsub_Location_feature_name"
        Name =""
    End
End
