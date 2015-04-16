Operation =1
Option =0
Where ="(((tbl_Strata.Park_code) Is Null)) OR (((tbl_Strata.Project_code) Is Null)) OR ("
    "((tbl_Strata.Stratification_date) Is Null)) OR (((tbl_Strata.Stratum_name) Is Nu"
    "ll)) OR (((tbl_Strata.Stratum_definition) Is Null))"
Begin InputTables
    Name ="tbl_Strata"
End
Begin OutputColumns
    Expression ="tbl_Strata.Park_code"
    Expression ="tbl_Strata.Project_code"
    Expression ="tbl_Strata.Stratification_date"
    Expression ="tbl_Strata.Stratum_name"
    Expression ="tbl_Strata.Stratum_definition"
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
dbText "Description" ="Missing park code, project code, stratification date, stratum name, or stratum d"
    "efinition"
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
    Right =1149
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =7
        Right =236
        Bottom =144
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
End
