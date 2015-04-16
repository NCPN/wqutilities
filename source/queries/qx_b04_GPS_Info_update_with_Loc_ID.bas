Operation =4
Option =0
Where ="(((tbl_GPS_Info.Location_ID) Is Null))"
Begin InputTables
    Name ="tbl_GPS_Info"
    Name ="qxsub_Location_feature_name"
End
Begin OutputColumns
    Name ="tbl_GPS_Info.Location_ID"
    Expression ="[qxsub_Location_feature_name].[Location_ID]"
End
Begin Joins
    LeftTable ="tbl_GPS_Info"
    RightTable ="qxsub_Location_feature_name"
    Expression ="tbl_GPS_Info.Feat_name = qxsub_Location_feature_name.Feat_name"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbText "Description" ="Updates Location_ID with matches on feature name"
Begin
End
Begin
    State =0
    Left =28
    Top =43
    Right =1062
    Bottom =526
    Left =-1
    Top =-1
    Right =1027
    Bottom =315
    Left =0
    Top =0
    ColumnsShown =579
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
        Left =613
        Top =77
        Right =709
        Bottom =184
        Top =0
        Name ="qxsub_Location_feature_name"
        Name =""
    End
End
