Table 50007 "RSH Publisher"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(20; Name; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

