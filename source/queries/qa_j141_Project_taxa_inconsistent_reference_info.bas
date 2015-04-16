Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Taxon_is_active)=False) AND ((tlu_Project_Taxa.Refers_to) Is"
    " Null)) OR (((tlu_Project_Taxa.Taxon_is_active)=True) AND ((tlu_Project_Taxa.Ref"
    "ers_to) Is Not Null))"
Begin InputTables
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tlu_Project_Taxa.Species_code"
    Expression ="tlu_Project_Taxa.Scientific_name"
    Expression ="tlu_Project_Taxa.Pref_com_name"
    Expression ="tlu_Project_Taxa.Taxon_is_active"
    Expression ="tlu_Project_Taxa.Refers_to"
    Expression ="tlu_Project_Taxa.TSN"
    Expression ="tlu_Project_Taxa.Accepted_TSN"
    Expression ="tlu_Project_Taxa.Taxon_type"
    Expression ="tlu_Project_Taxa.Created_date"
    Expression ="tlu_Project_Taxa.Updated_date"
    Expression ="tlu_Project_Taxa.Updated_by"
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
dbText "Description" ="Taxon records that are not active and missing a reference to a current/active ta"
    "xon; or active records with a reference to another taxon"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
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
        Right =168
        Bottom =144
        Top =18
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
