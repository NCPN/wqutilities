Operation =1
Option =0
Where ="(((IIf(IsNull([Certified_date])=False And ([Certified_date]>=[Updated_date] Or I"
    "sNull([Updated_date])),2,0))=Nz([Forms]![frm_QA_Tool]![optgScope]) Or (IIf(IsNul"
    "l([Certified_date])=False And ([Certified_date]>=[Updated_date] Or IsNull([Updat"
    "ed_date])),2,0))=Nz(IIf([Forms]![frm_QA_Tool]![optgScope]=1,0,1)) Or (IIf(IsNull"
    "([Certified_date])=False And ([Certified_date]>=[Updated_date] Or IsNull([Update"
    "d_date])),2,0))=Nz(IIf([Forms]![frm_QA_Tool]![optgScope]=1,2,1))))"
Begin InputTables
    Name ="tbl_Events"
End
Begin OutputColumns
    Alias ="Sample_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Events.*"
    Alias ="Data_scope"
    Expression ="IIf(IsNull([Certified_date])=False And ([Certified_date]>=[Updated_date] Or IsNu"
        "ll([Updated_date])),2,0)"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Standard subquery to filter event records based on the data scope specified in f"
    "rm_QA_Tool"
Begin
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =1154
    Bottom =750
    Left =-1
    Top =-1
    Right =1153
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
        Name ="tbl_Events"
        Name =""
    End
End
