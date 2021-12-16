Table 50001 "RSH Radio Show Type"
{
    DataClassification = CustomerContent;
    DrillDownPageID = "RSH Radio Show Types";
    LookupPageID = "RSH Radio Show Types";

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

