Operation =4
Option =0
Where ="(((tbl_Locations.UTME_public) Is Null) AND ((tbl_Coordinates.Is_best)=True) AND "
    "((tbl_Coordinates.UTM_east) Is Not Null) AND ((tbl_Coordinates.UTM_north) Is Not"
    " Null)) OR (((tbl_Locations.UTMN_public) Is Null) AND ((tbl_Coordinates.Is_best)"
    "=True) AND ((tbl_Coordinates.UTM_east) Is Not Null) AND ((tbl_Coordinates.UTM_no"
    "rth) Is Not Null)) OR (((tbl_Locations.UTME_public) Is Not Null) AND ((tbl_Coord"
    "inates.Is_best)=True) AND ((Abs(Nz([UTME_public])-Nz([tbl_Coordinates].[UTM_east"
    "])))>0.25) AND ((tbl_Coordinates.UTM_east) Is Not Null) AND ((tbl_Coordinates.UT"
    "M_north) Is Not Null)) OR (((tbl_Locations.UTMN_public) Is Not Null) AND ((tbl_C"
    "oordinates.Is_best)=True) AND ((tbl_Coordinates.UTM_east) Is Not Null) AND ((Abs"
    "(Nz([UTMN_public])-Nz([tbl_Coordinates].[UTM_north])))>0.25) AND ((tbl_Coordinat"
    "es.UTM_north) Is Not Null))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Coordinates"
End
Begin OutputColumns
    Name ="tbl_Locations.UTME_public"
    Expression ="[tbl_Coordinates].[UTM_east]"
    Name ="tbl_Locations.UTMN_public"
    Expression ="[tbl_Coordinates].[UTM_north]"
    Name ="tbl_Locations.Public_offset"
    Expression ="\"Actual\""
    Name ="tbl_Locations.Loc_updated_by"
    Expression ="fxnUserName()"
    Name ="tbl_Locations.Loc_updated"
    Expression ="Now()"
End
Begin Joins
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tbl_Events"
    RightTable ="tbl_Coordinates"
    Expression ="tbl_Events.Event_ID = tbl_Coordinates.Event_ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0xa28b4294e2799749b7666483e5565b5e
End
dbText "Description" ="Updates public coordinates in tbl_Locations with best coordinates where public c"
    "oordinates are missing, or where best coordinates are more than 0.25 meters away"
    " from current public coordinates"
Begin
    Begin
        dbText "Name" ="tbl_Locations.UTME_public"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.UTMN_public"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Public_offset"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_updated_by"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Loc_updated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.Is_best"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.UTM_east"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Coordinates.UTM_north"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abs(Nz([UTMN_public])-Nz([tbl_Coordinates].[UTM_north]))"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abs(Nz([UTME_public])-Nz([tbl_Coordinates].[UTM_east]))"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =19
    Top =65
    Right =1408
    Bottom =539
    Left =-1
    Top =-1
    Right =1357
    Bottom =152
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="tbl_Events"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="tbl_Coordinates"
        Name =""
    End
End
