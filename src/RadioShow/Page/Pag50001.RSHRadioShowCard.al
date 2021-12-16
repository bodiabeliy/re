page 50001 "RSH Radio Show Card"
{
    Caption = 'Radio Show';
    PageType = Card;
    SourceTable = "RCA Rental Sales";
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
                field("Radio Show Type"; Rec."Order number")
                {
                    ToolTip = 'Specifies the value of the Radio Show Type field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Name; Rec.Saler_name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                    Visible = true;
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field("Run Time"; Rec."Ordered_rental_period")
                {
                    ToolTip = 'period of rental.';
                    ApplicationArea = All;
                }
                field("Host No."; Rec."Host No.")
                {
                    ToolTip = 'Specifies the value of the Host No. field.';
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