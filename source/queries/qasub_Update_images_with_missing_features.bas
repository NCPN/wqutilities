Operation =4
Option =0
Where ="(((tbl_Features.Feature_ID) Is Null) AND ((tbl_Images.Feature_ID) Is Not Null))"
Begin InputTables
    Name ="tbl_Images"
    Name ="tbl_Features"
End
Begin OutputColumns
    Name ="tbl_Images.Feature_ID"
    Expression ="Null"
End
Begin Joins
    LeftTable ="tbl_Features"
    RightTable ="tbl_Images"
    Expression ="tbl_Features.Feature_ID = tbl_Images.Feature_ID"
    Flag =3
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbText "Description" ="Updates tbl_Images.Feature_ID to be null where it no longer refers to an existin"
    "g record in tbl_Features. This should be run only after relinking tbl_Images.Fea"
    "ture_ID where an existing record can be found."
Begin
    Begin
        dbText "Name" ="tbl_Images.Feature_ID"
        dbInteger "ColumnWidth" ="2670"
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
        Top =8
        Name ="tbl_Images"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Features"
        Name =""
    End
End
