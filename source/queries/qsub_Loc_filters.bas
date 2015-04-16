Operation =1
Option =0
Where ="(((tbl_Locations.Park_code) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFilte"
    "rByPark])=1,[Forms]![frm_Summary_Tool]![cmbParkFilter],Null),\"*\")) AND ((tbl_L"
    "ocations.Location_type) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFilterByT"
    "ype])=1,[Forms]![frm_Summary_Tool]![cmbTypeFilter],Null),\"*\")) AND ((tbl_Locat"
    "ions.Location_status) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFilterBySta"
    "tus])=1,[Forms]![frm_Summary_Tool]![cmbStatusFilter],Null),\"*\")) AND ((tbl_Loc"
    "ations.Location_ID) Like Nz(IIf(Abs([Forms]![frm_Summary_Tool]![togFilterByLoc])"
    "=1,[Forms]![frm_Summary_Tool]![cmbLocFilter],Null),\"*\")))"
Begin InputTables
    Name ="tbl_Locations"
End
Begin OutputColumns
    Expression ="tbl_Locations.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Standard subquery to filter location records based on filter values in frm_Summa"
    "ry_Tool"
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
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
End
