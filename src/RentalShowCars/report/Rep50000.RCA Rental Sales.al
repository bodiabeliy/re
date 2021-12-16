report 50000 "RCA Rental sales"
{
    ApplicationArea = All;
    Caption = 'Radion Show';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'src\RentalShowCars\GeneralInfo.docx';
    RDLCLayout = 'src\RentalShowCars\GeneralInfo.rdlc';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(RSHRadioShow; "RSH RCA Rental Sales")
        {
            column(No; "No.")
            {
                IncludeCaption = true;
            }
            column(Name; Saler_name)
            {
            }
            column(NameCaption; NameLbl)
            {
            }
        }
    }
    var
        NameLbl: Label 'Name';
}