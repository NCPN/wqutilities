Operation =1
Option =0
Where ="(((tbl_Strata.Park_code) In (SELECT [Park_code] FROM [tbl_Strata] As Tmp GROUP B"
    "Y [Park_code],[Project_code],[Stratification_date],[Stratum_name] HAVING Count(*"
    ")>1  And [Project_code] = [tbl_Strata].[Project_code] And [Stratification_date] "
    "= [tbl_Strata].[Stratification_date] And [Stratum_name] = [tbl_Strata].[Stratum_"
    "name])))"
Begin InputTables
    Name ="tbl_Strata"
End
Begin OutputColumns
    Expression ="tbl_Strata.Park_code"
    Expression ="tbl_Strata.Project_code"
    Expression ="tbl_Strata.Stratification_date"
    Expression ="tbl_Strata.Stratum_name"
    Expression ="tbl_Strata.Stratum_definition"
    Expression ="tbl_Strata.Stratum_created"
    Expression ="tbl_Strata.Stratum_updated"
    Expression ="tbl_Strata.Stratum_updated_by"
    Alias ="varObject"
    Expression ="\"tbl_Strata\""
End
Begin OrderBy
    Expression ="tbl_Strata.Park_code"
    Flag =0
    Expression ="tbl_Strata.Project_code"
    Flag =0
    Expression ="tbl_Strata.Stratification_date"
    Flag =0
    Expression ="tbl_Strata.Stratum_name"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Duplicate records on park code, project code, stratification date, and stratum n"
    "ame"
Begin
End
Begin
    State =0
    Left =83
    Top =73
    Right =1084
    Bottom =421
    Left =-1
    Top =-1
    Right =994
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
