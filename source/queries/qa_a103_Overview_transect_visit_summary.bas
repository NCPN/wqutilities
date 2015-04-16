Operation =1
Option =0
Begin InputTables
    Name ="qa_a123_Overview_transect_points_visited"
End
Begin OutputColumns
    Alias ="Park"
    Expression ="qa_a123_Overview_transect_points_visited.Park_code"
    Alias ="Transect"
    Expression ="qa_a123_Overview_transect_points_visited.Site_code"
    Alias ="Transect_arm"
    Expression ="Left([Location_code],2)"
    Alias ="N_points"
    Expression ="Sum(qa_a123_Overview_transect_points_visited.N)"
    Expression ="qa_a123_Overview_transect_points_visited.Location_type"
End
Begin OrderBy
    Expression ="qa_a123_Overview_transect_points_visited.Park_code"
    Flag =0
    Expression ="qa_a123_Overview_transect_points_visited.Site_code"
    Flag =0
    Expression ="Left([Location_code],2)"
    Flag =0
    Expression ="qa_a123_Overview_transect_points_visited.Location_type"
    Flag =1
End
Begin Groups
    Expression ="qa_a123_Overview_transect_points_visited.Park_code"
    GroupLevel =0
    Expression ="qa_a123_Overview_transect_points_visited.Site_code"
    GroupLevel =0
    Expression ="Left([Location_code],2)"
    GroupLevel =0
    Expression ="qa_a123_Overview_transect_points_visited.Location_type"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Transects visited at each park, and the number of points along each transect arm"
    ", grouped by location type"
Begin
End
Begin
    State =0
    Left =47
    Top =133
    Right =1094
    Bottom =481
    Left =-1
    Top =-1
    Right =1040
    Bottom =180
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="qa_a123_Overview_transect_points_visited"
        Name =""
    End
End
