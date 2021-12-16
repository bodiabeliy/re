page 50004 "RSH RCA Rental Car"
{

    ApplicationArea = All;
    Caption = 'Radio Show Type';
    PageType = List;
    SourceTable = "RSH RCA Rental Order Car";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Technical_charecteristics)
                {
                    ToolTip = 'Details about current car.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
