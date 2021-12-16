page 50007 "RSH Posted Radio Show Card"
{
    Caption = 'Posted Radio Show';
    PageType = Card;
    SourceTable = "RSH Posted Radio Show";
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                Editable = false;
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field("Radio Show Type"; Rec."Radio Show Type")
                {
                    ToolTip = 'Specifies the value of the Radio Show Type field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                    Visible = true;
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field("Run Time"; Rec."Run Time")
                {
                    ToolTip = 'Specifies the value of the Run Time field.';
                    ApplicationArea = All;
                }
                field("Host No."; Rec."Host No.")
                {
                    ToolTip = 'Specifies the value of the Host No. field.';
                    ApplicationArea = All;
                }
                field("Host Name"; Rec."Host Name")
                {
                    ToolTip = 'Specifies the value of the Host Name field.';
                    ApplicationArea = All;
                }
                field("Average Listeners"; Rec."Average Listeners")
                {
                    ToolTip = 'Specifies the value of the Average Listeners  field.';
                    ApplicationArea = All;
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ToolTip = 'Specifies the value of the Audience Share field.';
                    ApplicationArea = All;
                }
                field("Advertising Revenue"; Rec."Advertising Revenue")
                {
                    ToolTip = 'Specifies the value of the Advertising Revenue field.';
                    ApplicationArea = All;
                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ToolTip = 'Specifies the value of the Royalty Cost field.';
                    ApplicationArea = All;
                }
                field("Ads Planned Quantity"; Rec."Ads Planned Quantity")
                {
                    ToolTip = 'Specifies the value of the Ads Planned Quantity field.';
                    ApplicationArea = All;
                }
                field(Frequency; Rec.Frequency)
                {
                    ToolTip = 'Specifies the value of the Frequency field.';
                    ApplicationArea = All;
                }
                field("Frequency Enum"; Rec."Frequency Enum")
                {
                    ToolTip = 'Specifies the value of the Frequency field.';
                    ApplicationArea = All;
                }
                field("Name 3"; Rec."Name 3")
                {
                    ToolTip = 'Specifies the value of the Name 3 field.';
                    ApplicationArea = All;
                }
                field("Name 2"; Rec."Name 2")
                {
                    ToolTip = 'Specifies the value of the Name 3 field.';
                    ApplicationArea = All;
                }
                field("News Duration"; Rec."News Duration")
                {
                    ToolTip = 'Specifies the value of the News Duration field.';
                    ApplicationArea = All;
                }
                field("News Required"; Rec."News Required")
                {
                    ToolTip = 'Specifies the value of the News Required field.';
                    ApplicationArea = All;
                }
                field("PSA Planned Quantity"; Rec."PSA Planned Quantity")
                {
                    ToolTip = 'Specifies the value of the PSA Planned Quantity field.';
                    ApplicationArea = All;
                }
                field("Sports Duration"; Rec."Sports Duration")
                {
                    ToolTip = 'Specifies the value of the Sports Duration field.';
                    ApplicationArea = All;
                }
                field("Sports Required"; Rec."Sports Required")
                {
                    ToolTip = 'Specifies the value of the Sports Required field.';
                    ApplicationArea = All;
                }
                field("Weather Required"; Rec."Weather Required")
                {
                    ToolTip = 'Specifies the value of the Weather Required field.';
                    ApplicationArea = All;
                }
                field("Weather Duration"; Rec."Weather Duration")
                {
                    ToolTip = 'Specifies the value of the Weather Duration field.';
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Emailr field.';
                    ApplicationArea = All;
                }
            }
            part(SalesLines; "RSH Posted Radio Show detail")
            {
                ApplicationArea = All;
                SubPageLink = "Radion Show No." = FIELD("No.");
                Editable = false;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                RunObject = codeunit "Sales Post via Job Queue";

                trigger OnAction()
                var
                    JobQueueEntry: Record "Job Queue Entry";
                    SalesPostviaJobQueue: Codeunit "Sales Post via Job Queue";
                begin
                    Codeunit.Run(codeunit::"Sales Post via Job Queue");
                    SalesPostviaJobQueue.Run(JobQueueEntry);
                end;
            }
        }
    }
}