tableextension 50000 "RSH Item" extends Item
{
    fields
    {
        field(50000; "RSH Publisher Code"; Code[10])
        {
            Caption = 'Publisher Code';
            DataClassification = CustomerContent;
        }
        field(50001; "RSH ACSAP ID"; Integer)
        {
            Caption = 'ACSAP ID';
            DataClassification = CustomerContent;
        }
        field(50002; "RSH Duration"; Duration)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        field(50003; "RSH Data Format"; Enum "RSH Data Format")
        {
            Caption = 'Data Format';
            DataClassification = CustomerContent;
        }
        field(50004; "RSH MP3 Location"; Text[250])
        {
            Caption = 'MP3 Location';
            DataClassification = CustomerContent;
        }
        field(50005; "RSH Rental"; Boolean)
        {
            Caption = 'Rental';
            DataClassification = CustomerContent;
        }
        field(50010; "RSH Car Discount"; Decimal)
        {
            Caption = 'Car Discount';
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 100;
        }
    }
}
