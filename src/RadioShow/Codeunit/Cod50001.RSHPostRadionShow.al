codeunit 50001 "RSH Post Radion Show"
{
    procedure PostRadioShow(RSHRadioShow: Record "RSH Radio Show")
    var
        RSHRadioShowdetail: Record "RSH Radio Show detail";
        RSHPostedRadioShow: Record "RSH Posted Radio Show";
        RSHPostedRadioShowdetail: Record "RSH Posted Radio Show detail";
        OrderPostedMsg: Label 'The order is posted as number %1 and moved to the %2', Comment = '%1 = No, %2 = TableCaption';
    begin
        RSHPostedRadioShow.TransferFields(RSHRadioShow);
        RSHPostedRadioShow."No." := '';
        RSHPostedRadioShow.Insert(true);

        RSHRadioShowdetail.SetRange("Radion Show No.", RSHRadioShow."No.");
        if RSHRadioShowdetail.FindSet() then
            repeat
                RSHPostedRadioShowdetail.TransferFields(RSHRadioShowdetail);
                RSHPostedRadioShowdetail.Validate("Radion Show No.", RSHPostedRadioShow."No.");
                RSHPostedRadioShowdetail.Insert(true);
            until RSHRadioShowdetail.Next() = 0;

        RSHRadioShow.Delete(true);
        RSHRadioShowdetail.DeleteAll(true);
        Message(OrderPostedMsg, RSHPostedRadioShow."No.", RSHPostedRadioShow.TableCaption());
    end;
}