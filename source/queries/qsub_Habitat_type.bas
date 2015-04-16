Operation =1
Option =0
Where ="(((tbl_Habitat.Habitat_num)=1))"
Begin InputTables
    Name ="tbl_Habitat"
End
Begin OutputColumns
    Expression ="tbl_Habitat.Event_ID"
    Expression ="tbl_Habitat.Habitat_num"
    Expression ="tbl_Habitat.PMR_code"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x637b71c2c53b244cb1e5c43be6598962
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "Description" ="Shows the primary habitat type observed at the point (where Habitat_num=1)"
Begin
    Begin
        dbText "Name" ="tbl_Habitat.Habitat_num"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xec13b74eeee6994a97231363b2897f19
        End
    End
    Begin
        dbText "Name" ="tbl_Habitat.Event_ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4c0b1d6e29694c46b545f620583f2ef2
        End
    End
    Begin
        dbText "Name" ="tbl_Habitat.PMR_code"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc97a320bcb67064994fcf83bf9385f1e
        End
    End
End
Begin
    State =0
    Left =68
    Top =39
    Right =1053
    Bottom =919
    Left =-1
    Top =-1
    Right =953
    Bottom =611
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =239
        Bottom =216
        Top =0
        Name ="tbl_Habitat"
        Name =""
    End
End
