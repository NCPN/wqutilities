Operation =1
Option =0
Where ="(((tbl_Strata.Stratum_updated)<[Stratum_created]))"
Begin InputTables
    Name ="tbl_Strata"
End
Begin OutputColumns
    Expression ="tbl_Strata.Park_code"
    Expression ="tbl_Strata.Project_code"
    Expression ="tbl_Strata.Stratification_date"
    Expression ="tbl_Strata.Stratum_name"
    Expression ="tbl_Strata.Stratum_definition"
    Expression ="tbl_Strata.Stratum_notes"
    Expression ="tbl_Strata.Stratum_created"
    Expression ="tbl_Strata.Stratum_updated"
    Expression ="tbl_Strata.Stratum_updated_by"
    Alias ="varObject"
    Expression ="\"tbl_Strata\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Stratum record updated date prior to created date"
Begin
End
Begin
    State =0
    Left =2
    Top =40
    Right =1067
    Bottom =388
    Left =-1
    Top =-1
    Right =1058
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
        Name ="tbl_Strata"
        Name =""
    End
End
