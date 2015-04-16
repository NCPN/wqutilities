Operation =6
Option =0
Begin InputTables
    Name ="qa_p703_Incidental_obs_summary"
End
Begin OutputColumns
    Expression ="qa_p703_Incidental_obs_summary.Taxon"
    GroupLevel =2
    Expression ="qa_p703_Incidental_obs_summary.Park_code"
    GroupLevel =2
    Expression ="qa_p703_Incidental_obs_summary.Calendar_year"
    GroupLevel =1
    Alias ="MaxOfObs_date"
    Expression ="Max(qa_p703_Incidental_obs_summary.Obs_date)"
End
Begin Groups
    Expression ="qa_p703_Incidental_obs_summary.Taxon"
    GroupLevel =2
    Expression ="qa_p703_Incidental_obs_summary.Park_code"
    GroupLevel =2
    Expression ="qa_p703_Incidental_obs_summary.Calendar_year"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Summary of incidental species observations by calendar year"
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
    Right =1145
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =3
        Name ="qa_p703_Incidental_obs_summary"
        Name =""
    End
End
