Operation =1
Option =0
Where ="(((tbl_Observers.Event_ID) Is Null)) OR (((tbl_Observers.Contact_ID) Is Null)) O"
    "R (((tbl_Observers.Observer_role) Is Null))"
Begin InputTables
    Name ="tbl_Observers"
End
Begin OutputColumns
    Expression ="tbl_Observers.Event_ID"
    Expression ="tbl_Observers.Contact_ID"
    Expression ="tbl_Observers.Observer_role"
    Expression ="tbl_Observers.Observer_notes"
    Alias ="varObject"
    Expression ="\"tbl_Observers\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing event ID, contact ID, or observer role"
Begin
End
Begin
    State =0
    Left =77
    Top =41
    Right =1093
    Bottom =389
    Left =-1
    Top =-1
    Right =1009
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =73
        Top =14
        Right =193
        Bottom =121
        Top =0
        Name ="tbl_Observers"
        Name =""
    End
End
