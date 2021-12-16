table 50091 "RSH Radio Show detail"
{
    Caption = 'Radio Show detail';
    DataClassification = CustomerContent;
    LookupPageId = "RSH Radio Show detail";
    DrillDownPageId = "RSH Radio Show detail";
    fields
    {
        field(1; "Radion Show No."; Code[20])
        {
            Caption = 'Radion Show No.';
            DataClassification = CustomerContent;
            TableRelation = "RSH Radio Show"."No.";
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(10; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(20; "Starting Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Starting Date';

            trigger OnValidate()
            begin
                CalcDuretion();
            end;
        }
        field(30; "End Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'End Date';

            trigger OnValidate()
            begin
                CalcDuretion();
            end;
        }
        field(35; Qty; Decimal)
        {
            Caption = 'Qty';
            DataClassification = CustomerContent;
        }
        field(40; Duretion; Integer)
        {
            Caption = 'Duretion';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Radion Show No.", "Line No.")
        {
            Clustered = true;
        }
    }
    local procedure CalcDuretion()
    begin
        if (Rec."Starting Date" = 0D)
           or (Rec."End Date" = 0D)
        then
            Duretion := 0
        else
            Duretion := Rec."End Date" - Rec."Starting Date";
    end;
}
