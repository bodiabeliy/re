page 50000 "RSH Rental Sales"
{
    Caption = 'Rental Sales List';
    PageType = List;
    SourceTable = "RCA Rental Sales";
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "RSH Radio Show Card";
    // SourceTableView = sorting("Royalty Cost", "Advertising Revenue");

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field("Radio Show Type"; Rec."Order number")
                {
                    ToolTip = 'Specifies the value of the Radio Show Type field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Saler_name)
                {
                    ToolTip = 'name of current saller.';
                    ApplicationArea = All;
                    Visible = true;
                }
                field("Run Time"; Rec."Ordered_rental_period")
                {
                    ToolTip = 'Specifies the value of the Run Time field.';
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Host No."; Rec."Host No.")
                {
                    ToolTip = 'Specifies the value of the Host No. field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
