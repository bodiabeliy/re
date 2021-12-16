page 50005 "RSH PlayLitstItemRate"
{

    ApplicationArea = All;
    Caption = 'PlayLitstItemRate';
    PageType = List;
    SourceTable = "RSH Playlist Item Rate";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("End Date"; Rec."End Date")
                {
                    ToolTip = 'Specifies the value of the End Date field.';
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                    ApplicationArea = All;
                }
                field("Rate Amount"; Rec."Rate Amount")
                {
                    ToolTip = 'Specifies the value of the Rate Amount field.';
                    ApplicationArea = All;
                }
                field("Publisher Code"; Rec."Publisher Code")
                {
                    ToolTip = 'Specifies the value of the Publisher Code field.';
                    ApplicationArea = All;
                }
                field("Source Type"; Rec."Source Type")
                {
                    ToolTip = 'Specifies the value of the Source Type field.';
                    ApplicationArea = All;
                }
                field("Source No."; Rec."Source No.")
                {
                    ToolTip = 'Specifies the value of the Source No. field.';
                    ApplicationArea = All;
                }
                field("Start Date"; Rec."Start Date")
                {
                    ToolTip = 'Specifies the value of the Start Date field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
