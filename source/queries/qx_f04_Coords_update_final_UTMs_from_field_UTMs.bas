Operation =4
Option =0
Where ="(((tbl_Coordinates.UTM_east) Is Null) AND ((tbl_Coordinates.UTM_north) Is Null))"
Begin InputTables
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Name ="tbl_Coordinates.UTM_east"
    Expression ="[Field_UTME]"
    Name ="tbl_Coordinates.UTM_north"
    Expression ="[Field_UTMN]"
    Name ="tbl_Coordinates.Datum"
    Expression ="[Field_datum]"
    Name ="tbl_Coordinates.Coord_type"
    Expression ="\"Field\""
    Name ="tbl_Coordinates.Est_horiz_error"
    Expression ="[Field_horiz_error]"
    Name ="tbl_Coordinates.Coord_updated"
    Expression ="Now()"
    Name ="tbl_Coordinates.Coord_updated_by"
    Expression ="fxnUserName()"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbText "Description" ="Update final coordinates with field coordinates if still blank following GPS upd"
    "ates in previous steps"
Begin
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1145
    Bottom =255
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =38
        Top =6
        Right =184
        Bottom =218
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
