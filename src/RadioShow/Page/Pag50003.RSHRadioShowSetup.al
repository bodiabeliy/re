page 50003 "RSH Radio Show Setup"
{

    Caption = 'Radio Show Setup';
    PageType = Card;
    SourceTable = "RSH Radio Show Setup";
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(Numberig)
            {
                field("Radio Show Nos."; Rec."Radio Show Nos.")
                {
                    ToolTip = 'Specifies the value of the Radio Show Nos. field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
