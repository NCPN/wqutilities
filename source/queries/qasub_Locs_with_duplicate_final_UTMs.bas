Operation =1
Option =0
Begin InputTables
    Name ="qasub_Coords_duplicates_on_final_UTMs"
    Name ="tbl_Coordinates"
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Events.Location_ID"
    Expression ="qasub_Coords_duplicates_on_final_UTMs.UTM_east"
    Expression ="qasub_Coords_duplicates_on_final_UTMs.UTM_north"
End
Begin Joins
    LeftTable ="tbl_Coordinates"
    RightTable ="tbl_Events"
    Expression ="tbl_Coordinates.Event_ID = tbl_Events.Event_ID"
    Flag =1
    LeftTable ="qasub_Coords_duplicates_on_final_UTMs"
    RightTable ="tbl_Coordinates"
    Expression ="qasub_Coords_duplicates_on_final_UTMs.UTM_east = tbl_Coordinates.UTM_east"
    Flag =1
    LeftTable ="qasub_Coords_duplicates_on_final_UTMs"
    RightTable ="tbl_Coordinates"
    Expression ="qasub_Coords_duplicates_on_final_UTMs.UTM_north = tbl_Coordinates.UTM_north"
    Flag =1
End
Begin Groups
    Expression ="tbl_Events.Location_ID"
    GroupLevel =0
    Expression ="qasub_Coords_duplicates_on_final_UTMs.UTM_east"
    GroupLevel =0
    Expression ="qasub_Coords_duplicates_on_final_UTMs.UTM_north"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Locations that correspond to final coordinates that are duplicated within the da"
    "ta set"
Begin
End
Begin
    State =0
    Left =62
    Top =84
    Right =1130
    Bottom =396
    Left =-1
    Top =-1
    Right =1061
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =83
        Top =0
        Name ="qasub_Coords_duplicates_on_final_UTMs"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
