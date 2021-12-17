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
    // встановлення загальної вартості (ціни)
    local procedure SetDiscountPrice()
    var
        totalPrice: Record "RSH RCA Rental Order Car";
    begin
        if Rec.customer_name <> '' then
            totalPrice.get("No.");

        if Rec."customer_name" <> '' then
            totalPrice.get("Total price");

        Rec.Validate(discount);
        SetDiscountPrice()
    end;
}

