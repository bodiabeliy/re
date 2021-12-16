tableextension 50001 "RSH Customer" extends Customer //18
{
    fields
    {
        field(50010; "RSH Car Discount"; Decimal)
        {
            Caption = 'Car Discount';
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 100;
        }
    }
}