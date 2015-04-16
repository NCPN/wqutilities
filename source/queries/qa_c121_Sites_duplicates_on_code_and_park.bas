Operation =1
Option =0
Where ="(((tbl_Sites.Park_code) In (SELECT [Park_code] FROM [tbl_Sites] As Tmp GROUP BY "
    "[Park_code],[Site_code] HAVING Count(*)>1  And [Site_code] = [tbl_Sites].[Site_c"
    "ode])))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Strata"
End
Begin OutputColumns
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Sites.Site_name"
    Expression ="tbl_Sites.Park_region"
    Alias ="Stratum"
    Expression ="[tbl_Strata].[Park_code] & \" - \" & [Stratum_name]"
    Expression ="tbl_Sites.Slope_class"
    Expression ="tbl_Sites.Substratum"
    Expression ="tbl_Sites.Panel_type"
    Expression ="tbl_Sites.Panel_name"
    Expression ="tbl_Sites.Evaluation_code"
    Expression ="tbl_Sites.Evaluation_notes"
    Expression ="tbl_Sites.Site_status"
    Expression ="tbl_Sites.Site_established"
    Expression ="tbl_Sites.Site_discontinued"
    Expression ="tbl_Sites.Site_created_date"
    Expression ="tbl_Sites.Site_updated"
    Expression ="tbl_Sites.Site_updated_by"
    Alias ="varObject"
    Expression ="\"fsub_Sites_Browser\""
    Alias ="varFilter"
    Expression ="\"Site_ID='\" & [Site_ID] & \"'\""
End
Begin Joins
    LeftTable ="tbl_Strata"
    RightTable ="tbl_Sites"
    Expression ="tbl_Strata.Stratum_ID = tbl_Sites.Stratum_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Duplicate records on site code and park code"
Begin
End
Begin
    State =0
    Left =34
    Top =93
    Right =1069
    Bottom =413
    Left =-1
    Top =-1
    Right =1028
    Bottom =152
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =203
        Top =10
        Right =323
        Bottom =117
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
End
