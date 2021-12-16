Table 50002 "RSH RCA Rental Purcher"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = '№';
        }
        field(20; "Register_code"; Code[20])
        {
            Enabled = false;
            DataClassification = CustomerContent;
            Caption = 'Register code';
        }
        field(30; "Technical_charecteristics"; Text[200])
        {
            DataClassification = CustomerContent;
            Caption = 'Technical charecteristics';
        }
        field(40; "Rental_price"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Rental price';
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

