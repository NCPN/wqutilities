Operation =1
Option =0
Where ="(((tbl_Images.Event_ID) Is Null)) OR (((tbl_Images.Image_ID) Is Null))"
Begin InputTables
    Name ="tbl_Images"
End
Begin OutputColumns
    Expression ="tbl_Images.*"
    Alias ="varObject"
    Expression ="\"tbl_Images\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Missing image ID or event ID"
dbBoolean "OrderByOn" ="0"
dbText "DatasheetFontName" ="Arial"
dbInteger "DatasheetFontHeight" ="9"
dbInteger "DatasheetFontWeight" ="400"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="33554432"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =482
    Left =-1
    Top =-1
    Right =1083
    Bottom =252
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =553
        Top =10
        Right =681
        Bottom =147
        Top =0
        Name ="tbl_Images"
        Name =""
    End
End
