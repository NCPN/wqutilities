Operation =1
Option =0
Where ="(((tlu_Project_Taxa.Taxon_ID) Is Null)) OR (((tlu_Project_Taxa.Project_code) Is "
    "Null)) OR (((tlu_Project_Taxa.Species_code) Is Null)) OR (((tlu_Project_Taxa.Sci"
    "entific_name) Is Null)) OR (((tlu_Project_Taxa.Pref_com_name) Is Null)) OR (((tl"
    "u_Project_Taxa.Category) Is Null)) OR (((tlu_Project_Taxa.Taxon_type) Is Null)) "
    "OR (((tlu_Project_Taxa.Record_status) Is Null)) OR (((tlu_Project_Taxa.Updated_d"
    "ate)<[Created_date]))"
Begin InputTables
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tlu_Project_Taxa.Taxon_ID"
    Expression ="tlu_Project_Taxa.Project_code"
    Expression ="tlu_Project_Taxa.Species_code"
    Expression ="tlu_Project_Taxa.Scientific_name"
    Expression ="tlu_Project_Taxa.Common_name"
    Expression ="tlu_Project_Taxa.Pref_com_name"
    Expression ="tlu_Project_Taxa.Category"
    Expression ="tlu_Project_Taxa.Taxon_type"
    Expression ="tlu_Project_Taxa.Taxon_notes"
    Expression ="tlu_Project_Taxa.Taxon_is_active"
    Expression ="tlu_Project_Taxa.Record_status"
    Expression ="tlu_Project_Taxa.Rec_status_notes"
    Expression ="tlu_Project_Taxa.Created_date"
    Expression ="tlu_Project_Taxa.Updated_date"
    Expression ="tlu_Project_Taxa.Updated_by"
    Expression ="tlu_Project_Taxa.Project_taxon_notes"
    Expression ="tlu_Project_Taxa.IBP_number"
    Alias ="varObject"
    Expression ="\"fsub_Project_Taxa\""
    Alias ="varFilter"
    Expression ="\"Taxon_ID='\" & [Taxon_ID] & \"'\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing taxon ID, project code, species code, scientific name, preferred common "
    "name, category, taxon type, or record status; or updated date prior to created d"
    "ate"
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
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
