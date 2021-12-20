xmlport 50000 "RSH RentalCars"
{
    Caption = 'RentalCars';
    FormatEvaluate = Xml;
    Encoding = UTF8;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(RSHRCARentalSales; "RSH RCA Rental Sales")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
