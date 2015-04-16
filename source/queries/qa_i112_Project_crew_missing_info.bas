Operation =1
Option =0
Where ="(((tlu_Project_Crew.Organization) Is Null)) OR (((tlu_Project_Crew.Position_titl"
    "e) Is Null))"
Begin InputTables
    Name ="tlu_Project_Crew"
End
Begin OutputColumns
    Expression ="tlu_Project_Crew.Contact_ID"
    Expression ="tlu_Project_Crew.Project_code"
    Expression ="tlu_Project_Crew.Last_name"
    Expression ="tlu_Project_Crew.First_name"
    Expression ="tlu_Project_Crew.Middle_init"
    Expression ="tlu_Project_Crew.Organization"
    Expression ="tlu_Project_Crew.Position_title"
    Expression ="tlu_Project_Crew.Email"
    Expression ="tlu_Project_Crew.Work_voice"
    Expression ="tlu_Project_Crew.Work_ext"
    Expression ="tlu_Project_Crew.Mobile_voice"
    Expression ="tlu_Project_Crew.Home_voice"
    Expression ="tlu_Project_Crew.Fax"
    Expression ="tlu_Project_Crew.Contact_location"
    Expression ="tlu_Project_Crew.Contact_notes"
    Expression ="tlu_Project_Crew.Contact_created"
    Expression ="tlu_Project_Crew.Contact_updated"
    Expression ="tlu_Project_Crew.Contact_updated_by"
    Expression ="tlu_Project_Crew.Contact_is_active"
    Alias ="varObject"
    Expression ="\"frm_Contacts\""
    Alias ="varFilter"
    Expression ="\"Contact_ID='\" & [Contact_ID] & \"'\""
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing organization or position title"
Begin
End
Begin
    State =0
    Left =17
    Top =90
    Right =899
    Bottom =438
    Left =-1
    Top =-1
    Right =875
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
        Name ="tlu_Project_Crew"
        Name =""
    End
End
