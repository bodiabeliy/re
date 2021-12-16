codeunit 50001 "RSH Post Radion Show"
{
    procedure PostRadioShow(RSHRadioShow: Record "RCA Rental Sales")
    var
        RSHPostedRadioShow: Record "RSH Posted Radio Show";
        RSHPostedRadioShowdetail: Record "RSH Posted Radio Show detail";
        OrderPostedMsg: Label 'The order is posted as number %1 and moved to the %2', Comment = '%1 = No, %2 = TableCaption';
    begin
        RSHPostedRadioShow.TransferFields(RSHRadioShow);
        RSHPostedRadioShow."No." := '';
        RSHPostedRadioShow.Insert(true);
        Message(OrderPostedMsg, RSHPostedRadioShow."No.", RSHPostedRadioShow.TableCaption());
    end;
}