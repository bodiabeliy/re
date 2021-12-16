page 50001 "RSH Radio Show Card"
{
    Caption = 'Radio Show';
    PageType = Card;
    SourceTable = "RSH Radio Show";
    PromotedActionCategories = 'New,Process,Report,Approve,Release,Posting,Prepare,Order,Request Approval,History,Print/Send,Navigate';
    layout
    {
        area(content)
        {
            group(General)
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
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                    ApplicationArea = All;
                }
                field("Item Description"; Rec."Item Description")
                {
                    ToolTip = 'Specifies the value of the Item Description field.';
                    ApplicationArea = All;
                }
                field("Detail Average Qty"; Rec."Detail Average Qty")
                {
                    ToolTip = 'Specifies the value of the Detail Average Qty field.';
                    ApplicationArea = All;
                }
                field("Detail count Qty"; Rec."Detail count Qty")
                {
                    ToolTip = 'Specifies the value of the Detail count Qty field.';
                    ApplicationArea = All;
                }
                field("Detail sum Qty"; Rec."Detail sum Qty")
                {
                    ToolTip = 'Specifies the value of the Detail sum Qty field.';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                    ApplicationArea = All;
                }
                field(Discount; Rec.Discount)
                {
                    ToolTip = 'Specifies the value of the Discount field.';
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                    ApplicationArea = All;
                }
            }
            part(SalesLines; "RSH Radio Show detail")
            {
                ApplicationArea = All;
                SubPageLink = "Radion Show No." = FIELD("No.");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Post)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'P&ost';
                Ellipsis = true;
                Image = PostOrder;
                Promoted = true;
                PromotedCategory = Category6;
                PromotedIsBig = true;
                ShortCutKey = 'F9';
                ToolTip = 'Finalize the document';

                AboutTitle = 'Posting the order';
                AboutText = 'Posting will post the quantities on the order.';

                trigger OnAction()
                var
                    RSHPostRadionShow: Codeunit "RSH Post Radion Show";
                begin
                    RSHPostRadionShow.PostRadioShow(Rec);
                end;
            }
        }
    }
}