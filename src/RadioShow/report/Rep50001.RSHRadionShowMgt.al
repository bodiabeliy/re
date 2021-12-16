report 50001 "RSH Radion Show Mgt."
{
    ProcessingOnly = true;
    procedure DeleteRadioShowdetail(RadionShowNo: Code[20])
    var
        RSHRadioShowdetail: Record "RSH Radio Show detail";
    begin
        RSHRadioShowdetail.SetRange("Radion Show No.", RadionShowNo);
        RSHRadioShowdetail.DeleteAll(true);
    end;
}