Operation =1
Option =0
Where ="(((IIf(IsNull([Certified_date])=False And ([Certified_date]>=[Updated_date] Or I"
    "sNull([Updated_date])),0,1))=Nz([Forms]![frm_Summary_Tool]![optgScope]) Or (IIf("
    "IsNull([Certified_date])=False And ([Certified_date]>=[Updated_date] Or IsNull(["
    "Updated_date])),0,1))=0) AND ((Year([Start_date])) Like Nz(IIf(Abs([Forms]![frm_"
    "Summary_Tool]![togFilterByYear])=1,[Forms]![frm_Summary_Tool]![cmbYearFilter],Nu"
    "ll),\"*\")) AND ((tbl_Events.Start_date)>=Nz(IIf(Abs([Forms]![frm_Summary_Tool]!"
    "[togFilterByRange])=1,Nz([Forms]![frm_Summary_Tool]![txtStartDateFilter],#1/1/18"
    "00#),#1/1/1800#)) And (tbl_Events.Start_date)<=Nz(IIf(Abs([Forms]![frm_Summary_T"
    "ool]![togFilterByRange])=1,Nz([Forms]![frm_Summary_Tool]![txtEndDateFilter]+1,#1"
    "2/31/2200#),#12/31/2200#))) AND ((Abs([Is_excluded]))=Nz([Forms]![frm_Summary_To"
    "ol]![optgExcluded]) Or (Abs([Is_excluded]))=0))"
Begin InputTables
    Name ="tbl_Events"
End
Begin OutputColumns
    Alias ="Event_year"
    Expression ="CStr(Year([Start_date]))"
    Expression ="tbl_Events.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Standard subquery to filter event records based on filter values in frm_Summary_"
    "Tool"
dbBinary "GUID" = Begin
    0x1e7b55603d2d744abedc816cdf8fb11c
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Event_year"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1496
    Bottom =997
    Left =-1
    Top =-1
    Right =1426
    Bottom =93
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tbl_Events"
        Name =""
    End
End
