
// звіт по детальної інформації про авто
report 50001 "RSH RCA Rental Utils"
{
    ApplicationArea = All;
    Caption = 'Car informathion';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'src\RentalShowCars\GeneralInfo.docx';
    RDLCLayout = 'src\RentalShowCars\GeneralInfo.rdlc';
    DefaultLayout = Word;

    dataset
    {
        dataitem("Car Info"; "RSH RCA Rental Order Car")
        {
            column(No; "No.")
            {
                IncludeCaption = true;
            }
            column("car_number"; "Register_code")
            {
            }
            column(rental_info_car; Technical_charecteristics)
            {
            }

        }
    }

    internal procedure DeleteDetail(No: Code[20])
    begin
        Error('Procedure DeleteDetail not implemented.');
    end;
}