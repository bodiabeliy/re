table 50010 "RSH Date Formula"
{
    Caption = 'Date Formula';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "Reference for Date Calculation"; Date)
        {
            Caption = 'Reference for Date Calculation';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                CalculateNewDate()
            end;
        }
        field(3; "Date formula to test"; DateFormula)
        {
            Caption = 'Date formula to test';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                CalculateNewDate()
            end;
        }
        field(4; "Date Result"; Date)
        {
            Caption = 'Date Result ';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

    local procedure CalculateNewDate()
    var
        EmptyDF: DateFormula;
    begin
        if (Rec."Date Formula to Test" = EmptyDF)
           or (Rec."Reference for Date Calculation" = 0D)
        then begin
            Rec."Date Result" := 0D;
            exit;
        end;

        Rec."Date Result" := CalcDate(Rec."Date Formula to Test", Rec."Reference for Date Calculation");
    end;
}
