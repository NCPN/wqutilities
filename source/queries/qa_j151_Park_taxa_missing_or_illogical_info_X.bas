Operation =1
Option =0
Where ="(((tlu_Park_Taxa.Taxon_ID) Is Null)) OR (((tlu_Park_Taxa.Park_code) Is Null)) OR"
    " (((tlu_Park_Taxa.Park_status) Is Null)) OR (((tlu_Park_Taxa.Park_origin) Is Nul"
    "l)) OR (((tlu_Park_Taxa.Record_status) Is Null)) OR (((tlu_Park_Taxa.Updated_dat"
    "e)<[Created_date]))"
Begin InputTables
    Name ="tlu_Park_Taxa"
End
Begin OutputColumns
    Expression ="tlu_Park_Taxa.Taxon_ID"
    Expression ="tlu_Park_Taxa.Park_code"
    Expression ="tlu_Park_Taxa.Park_status"
    Expression ="tlu_Park_Taxa.Park_status_IBP"
    Expression ="tlu_Park_Taxa.Park_origin"
    Expression ="tlu_Park_Taxa.Record_status"
    Expression ="tlu_Park_Taxa.Created_date"
    Expression ="tlu_Park_Taxa.Updated_date"
    Expression ="tlu_Park_Taxa.Updated_by"
    Alias ="varObject"
    Expression ="\"tlu_Park_Taxa\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing taxon ID, park code, park status, park origin, or record status; or upda"
    "ted date prior to created date"
Begin
End
Begin
    State =0
    Left =112
    Top =73
    Right =1051
    Bottom =495
    Left =-1
    Top =-1
    Right =932
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
        Name ="tlu_Park_Taxa"
        Name =""
    End
End
