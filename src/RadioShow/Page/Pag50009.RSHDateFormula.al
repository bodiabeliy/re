page 50009 "RSH Date Formula"
{

    ApplicationArea = All;
    Caption = 'RSH Date Formula';
    PageType = List;
    SourceTable = "RSH Date Formula";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field("Reference for Date Calculation"; Rec."Reference for Date Calculation")
                {
                    ToolTip = 'Specifies the value of the Reference for Date Calculation field.';
                    ApplicationArea = All;
                }
                field("Date formula to test"; Rec."Date formula to test")
                {
                    ToolTip = 'Specifies the value of the Date formula to test field.';
                    ApplicationArea = All;
                }
                field("Date Result"; Rec."Date Result")
                {
                    ToolTip = 'Specifies the value of the Date Result  field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
