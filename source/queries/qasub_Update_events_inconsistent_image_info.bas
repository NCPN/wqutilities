Operation =4
Option =8
Where ="(((qasub_Events_scope_filter.Photos_taken)=True) AND ((tbl_Images.Image_ID) Is N"
    "ull)) OR (((qasub_Events_scope_filter.Photos_taken)=False) AND ((tbl_Images.Imag"
    "e_ID) Is Not Null))"
Begin InputTables
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Images"
End
Begin OutputColumns
    Name ="qasub_Events_scope_filter.Photos_taken"
    Expression ="Not [Photos_taken]"
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Images"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Images.Event_ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Updates tbl_Events.Photos_taken from False to True if image records exist, or fr"
    "om True to False if no image records exist"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Images.Image_desc"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =410
    Left =-1
    Top =-1
    Right =1083
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =285
        Top =6
        Right =381
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =419
        Top =6
        Right =515
        Bottom =113
        Top =0
        Name ="tbl_Images"
        Name =""
    End
End
