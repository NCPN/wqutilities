Operation =1
Option =0
Where ="(((tbl_Training_Notes.Trainee_name) Is Null)) OR (((tbl_Training_Notes.Training_"
    "date) Is Null)) OR (((tbl_Training_Notes.Trainer_name) Is Null)) OR (((tbl_Train"
    "ing_Notes.Training_type) Is Null))"
Begin InputTables
    Name ="tbl_Training_Notes"
End
Begin OutputColumns
    Expression ="tbl_Training_Notes.Trainee_name"
    Expression ="tbl_Training_Notes.Training_date"
    Expression ="tbl_Training_Notes.Trainer_name"
    Expression ="tbl_Training_Notes.Training_type"
    Expression ="tbl_Training_Notes.Training_notes"
    Alias ="varObject"
    Expression ="\"frm_Training_Notes\""
    Alias ="varArgs"
    Expression ="CStr(Year([Training_date]))"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing trainee name, training date, trainer name or training type"
Begin
End
Begin
    State =0
    Left =68
    Top =67
    Right =1127
    Bottom =499
    Left =-1
    Top =-1
    Right =1052
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =7
        Right =168
        Bottom =144
        Top =0
        Name ="tbl_Training_Notes"
        Name =""
    End
End
