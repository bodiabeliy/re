Table 50004 "RSH Playlist Item Rate"
{
    // DrillDownPageID = "Playlist Item Rates";
    // LookupPageID = "Playlist Item Rates";
    DataClassification = CustomerContent;

    fields
    {
        // field(10; "Source Type"; Option)
        // {
        //     Description = 'Vendor,Customer';
        //     OptionCaption = 'Vendor,Customer';
        //     OptionMembers = Vendor,Customer;
        //     TableRelation = if ("Source Type" = const(Vendor)) Vendor."No."
        //     else
        //     if ("Source Type" = const(Customer)) Customer."No.";
        //     Caption = 'Source Type';
        //     DataClassification = CustomerContent;
        // }
        field(10; "Source Type"; Enum "RSH Source Type")
        {
            Caption = 'Source Type';
            DataClassification = CustomerContent;
        }
        field(20; "Source No."; Code[20])
        {
            TableRelation = if ("Source Type" = const(Vendor)) Vendor."No."
            else
            if ("Source Type" = const(Customer)) Customer."No.";
            Caption = 'Source No.';
            DataClassification = CustomerContent;
        }
        field(30; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
        }
        field(40; "Start Date"; Date)
        {
            Caption = 'Start Date';
            DataClassification = CustomerContent;
        }
        field(50; "End Date"; Date)
        {
            Caption = 'End Date';
            DataClassification = CustomerContent;
        }
        field(60; "Rate Amount"; Decimal)
        {
            Caption = 'Rate Amount';
            DataClassification = CustomerContent;
        }
        field(70; "Publisher Code"; Code[20])
        {
            Caption = 'Publisher Code';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Source Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

