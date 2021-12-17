
// звіт по детальної інформації про авто
report 50001 "RSH RCA Rental Utils"
{
    ProcessingOnly = true;
    procedure DeleteDetail(RentalSalesNo: Code[20])
    var
        RentalCarsDetails: Record "RSH RCA Rental Discounts";
    begin
        RentalCarsDetails.SetRange("No.");
        RentalCarsDetails.DeleteAll(true);
    end;
}