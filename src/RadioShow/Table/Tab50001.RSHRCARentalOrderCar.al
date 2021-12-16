Table 50001 "RSH RCA Rental Order Car"
{
    DataClassification = CustomerContent;
    DrillDownPageID = "RCA Rental Car";
    LookupPageID = "RCA Rental Car";

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(20; Description; Text[30])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

