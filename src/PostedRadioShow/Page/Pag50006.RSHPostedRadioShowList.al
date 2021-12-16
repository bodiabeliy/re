page 50006 "RSH Posted Radio Show List"
{
    Caption = 'Posted Radio Shows List';
    PageType = List;
    SourceTable = "RSH Posted Radio Show";
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "RSH Posted Radio Show Card";
    SourceTableView = sorting("Royalty Cost", "Advertising Revenue");
    Editable = false;
    DeleteAllowed = false;

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
                field("Radio Show Type"; Rec."Radio Show Type")
                {
                    ToolTip = 'Specifies the value of the Radio Show Type field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                    Visible = true;
                }
                field("Run Time"; Rec."Run Time")
                {
                    ToolTip = 'Specifies the value of the Run Time field.';
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Host No."; Rec."Host No.")
                {
                    ToolTip = 'Specifies the value of the Host No. field.';
                    ApplicationArea = All;
                    Visible = ShowCustField;
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
                field("Name 2"; Rec."Name 2")
                {
                    ToolTip = 'Specifies the value of the Name 3 field.';
                    ApplicationArea = All;
                }
                field("Name 3"; Rec."Name 3")
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
                field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.';
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
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.SetCurrentKey("Royalty Cost", "Advertising Revenue");
        ShowCustField := true;
    end;

    var
        v: Record AllObjWithCaption;
        ShowCustField: Boolean;
}
