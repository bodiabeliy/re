pageextension 50001 "RSH Customer Card" extends "Customer Card" //21
{
    layout
    {
        addafter(General)
        {
            group("RSH Rental")
            {
                Caption = 'Rental';
                field("RSH Car Discount"; Rec."RSH Car Discount")
                {
                    ToolTip = 'Specifies the value of the Car Discount field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}