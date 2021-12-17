page 50103 "RSH Radio Show Setup"
{

    Caption = 'Radio Show Setup';
    PageType = Card;
    SourceTable = "RSH Rental Car Setup";
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(Numberig)
            {
                field("Radio Show Nos."; Rec."Rental Nos.")
                {
                    ToolTip = 'Sorted field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
