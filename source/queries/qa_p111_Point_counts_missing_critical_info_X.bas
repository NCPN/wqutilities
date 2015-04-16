Operation =1
Option =0
Where ="(((tbl_Point_Counts.Event_ID) Is Null)) OR (((tbl_Point_Counts.Taxon_ID) Is Null"
    ")) OR (((tbl_Point_Counts.Group_size) Is Null)) OR (((tbl_Point_Counts.Seen_firs"
    "t) Is Null)) OR (((tbl_Point_Counts.Ever_sang) Is Null)) OR (((tbl_Point_Counts."
    "Prev_observed) Is Null)) OR (((tbl_Point_Counts.Flyover) Is Null))"
Begin InputTables
    Name ="tbl_Point_Counts"
End
Begin OutputColumns
    Expression ="tbl_Point_Counts.Event_ID"
    Expression ="tbl_Point_Counts.Taxon_ID"
    Expression ="tbl_Point_Counts.Group_size"
    Expression ="tbl_Point_Counts.Seen_first"
    Expression ="tbl_Point_Counts.Ever_sang"
    Expression ="tbl_Point_Counts.Prev_observed"
    Expression ="tbl_Point_Counts.Flyover"
    Expression ="tbl_Point_Counts.Obs_distance_m"
    Expression ="tbl_Point_Counts.Obs_notes"
    Expression ="tbl_Point_Counts.Observation_ID"
    Alias ="varObject"
    Expression ="\"tbl_Point_Counts\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing event ID, taxon ID, group size, seen first, ever sang, prev observed, or"
    " flyover"
dbBinary "GUID" = Begin
    0x05f6e1448cbd9e489329bcef32cd7166
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Point_Counts.Obs_distance_m"
        dbInteger "ColumnWidth" ="1596"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Event_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Int_0_3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Taxon_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Group_size"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Seen_first"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Ever_sang"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Prev_observed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Flyover"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Obs_notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Observation_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =976
    Bottom =863
    Left =-1
    Top =-1
    Right =957
    Bottom =164
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =161
        Top =11
        Right =355
        Bottom =148
        Top =0
        Name ="tbl_Point_Counts"
        Name =""
    End
End
