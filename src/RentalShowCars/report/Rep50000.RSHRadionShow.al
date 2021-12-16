report 50000 "RSH Radion Show"
{
    ApplicationArea = All;
    Caption = 'Radion Show';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'src\RadioShow\layout\RadioShow.docx';
    RDLCLayout = 'src\RadioShow\layout\RadioShow.rdlc';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(RSHRadioShow; "RCA Rental Sales")
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