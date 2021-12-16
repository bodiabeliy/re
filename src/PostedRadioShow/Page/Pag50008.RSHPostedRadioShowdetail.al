page 50008 "RSH Posted Radio Show detail"
{
    Caption = 'RSH Posted Radio Show detail';
    PageType = ListPart;
    SourceTable = "RSH Posted Radio Show detail";
    AutoSplitKey = true;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Radion Show No."; Rec."Radion Show No.")
                {
                    ToolTip = 'Specifies the value of the Radion Show No. field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ToolTip = 'Specifies the value of the Starting Date field.';
                    ApplicationArea = All;
                }
                field("End Date"; Rec."End Date")
                {
                    ToolTip = 'Specifies the value of the End Date field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
