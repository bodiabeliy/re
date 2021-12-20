// звіт щодо інформації оренди між продавцем і покупцем
report 50000 "RSH RCA Rental sales"
{
    ApplicationArea = All;
    Caption = 'Customer profit';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'src\RentalShowCars\CustomerProfit.docx';
    RDLCLayout = 'src\RentalShowCars\CustomerProfit.rdlc';
    DefaultLayout = Word;

    dataset
    {
        dataitem("RSH RCA Rental Order Car"; "RSH RCA Rental Sales")
        {
            column(No; "No.")
            {
                IncludeCaption = true;
            }
            column(Registred_code; "Car_code")
            {
            }
            column(Name; Saler_name)
            {
            }
            column(rental_date; "Ordered_rental_period")
            {
            }
            column(Total_price; "Discount_price")
            {
            }

        }
    }

}