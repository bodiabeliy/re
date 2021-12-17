
// таблиця з інформацією про окремого покупця
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
        field(20; "purcher_name"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'purcher_name';
        }
        field(30; "rental_cars"; Text[200])
        {
            DataClassification = CustomerContent;
            Caption = 'Retal cars';
        }
        field(40; "Rental_document"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Rental document';
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

