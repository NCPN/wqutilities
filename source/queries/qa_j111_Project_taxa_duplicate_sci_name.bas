Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Scientific_name) In (SELECT [Scientific_name] FROM [tlu_Proj"
    "ect_Taxa] As Tmp2 GROUP BY [Scientific_name] HAVING Count(*)>1 )))"
Begin InputTables
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tlu_Project_Taxa.Project_code"
    Expression ="tlu_Project_Taxa.Species_code"
    Expression ="tlu_Project_Taxa.Scientific_name"
    Expression ="tlu_Project_Taxa.Common_name"
    Expression ="tlu_Project_Taxa.Pref_com_name"
    Expression ="tlu_Project_Taxa.TSN"
    Expression ="tlu_Project_Taxa.Accepted_TSN"
    Expression ="tlu_Project_Taxa.Category"
    Expression ="tlu_Project_Taxa.Subcategory"
    Expression ="tlu_Project_Taxa.Authority"
    Expression ="tlu_Project_Taxa.Authority_subsp"
    Expression ="tlu_Project_Taxa.Family"
    Expression ="tlu_Project_Taxa.Taxon_type"
    Expression ="tlu_Project_Taxa.Created_date"
    Expression ="tlu_Project_Taxa.Updated_date"
    Expression ="tlu_Project_Taxa.Updated_by"
    Expression ="tlu_Project_Taxa.Taxon_is_active"
    Expression ="tlu_Project_Taxa.Record_status"
    Expression ="tlu_Project_Taxa.Rec_status_notes"
    Alias ="varObject"
    Expression ="\"fsub_Project_Taxa\""
    Alias ="varFilter"
    Expression ="\"Taxon_ID='\" & [Taxon_ID] & \"'\""
End
Begin OrderBy
    Expression ="tlu_Project_Taxa.Species_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Duplicates on scientific name"
Begin
End
Begin
    State =0
    Left =34
    Top =56
    Right =1130
    Bottom =404
    Left =-1
    Top =-1
    Right =1089
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
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
