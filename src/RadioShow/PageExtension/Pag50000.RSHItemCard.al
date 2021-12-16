pageextension 50000 "RSH Item Card" extends "Item Card" //30
{
    layout
    {
        addafter(Item)
        {
            group("RSH Group Rental")
            {
                Caption = 'Rental';
                field("RSH Car Discount"; Rec."RSH Car Discount")
                {
                    ToolTip = 'Specifies the value of the Car Discount field.';
                    ApplicationArea = All;
                }
            }
            field("RSH field Rental"; Rec."RSH Rental")
            {
                ToolTip = 'Specifies the value of the Rental field.';
                ApplicationArea = All;
            }
        }
    }

}