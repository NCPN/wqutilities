dbMemo "SQL" ="INSERT INTO tsys_Db_Templates ( version_ID, Is_Supported, context, template_Name"
    ", template, create_Date, created_By, last_Modified_Date, last_Modified_By )\015\012"
    "VALUES ('0.01', 1, 'qry_Visit_Year', 'qry_Visit_Year', 'SELECT DISTINCT Year([st"
    "art_date]) AS Visit_Year\015\012FROM tblVisits\015\012ORDER BY Year([start_date]"
    ") DESC;\015\012', Now(), 'script20140616', Now(), 'script20140616');\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xdc65c6fe0b6f7c4dab1d591e6cfcd18d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
End
