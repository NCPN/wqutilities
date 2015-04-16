Operation =1
Option =0
Having ="(((Count(q_sys_QA_set_sequence.Name))>1))"
Begin InputTables
    Name ="q_sys_QA_set_sequence"
End
Begin OutputColumns
    Expression ="q_sys_QA_set_sequence.Seq1"
    Expression ="q_sys_QA_set_sequence.Seq2"
    Alias ="CountOfName"
    Expression ="Count(q_sys_QA_set_sequence.Name)"
End
Begin Groups
    Expression ="q_sys_QA_set_sequence.Seq1"
    GroupLevel =0
    Expression ="q_sys_QA_set_sequence.Seq2"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "Description" ="QA query set revision tool - shows duplicate sequence numbers among the QA queri"
    "es, to help when renumbering"
Begin
    Begin
        dbText "Name" ="q_sys_QA_set_sequence.Seq1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="q_sys_QA_set_sequence.Seq2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CountOfName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =39
    Right =1483
    Bottom =997
    Left =-1
    Top =-1
    Right =1451
    Bottom =572
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="q_sys_QA_set_sequence"
        Name =""
    End
End
