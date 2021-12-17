// таблиця зі списком усіх авто
Table 50001 "RSH RCA Rental Order Car"
{
    DataClassification = CustomerContent;
    DrillDownPageID = "RSH RCA Rental Car";
    LookupPageID = "RSH RCA Rental Car";

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
        field(40; "Rental_price"; Decimal)
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

