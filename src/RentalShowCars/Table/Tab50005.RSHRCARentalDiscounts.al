Table 50005 "RSH RCA Rental Discounts"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = '№';
        }
        field(20; "customer_name"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'customer name';
        }
        field(30; discount; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Discount to car';
        }
        field(40; "Total price"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Total price';
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

