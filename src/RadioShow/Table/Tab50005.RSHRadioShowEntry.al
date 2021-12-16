Table 50005 "RSH Radio Show Entry"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
        }
        field(20; "Radio Show No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Radio Show No.';
        }
        // field(30; Type; Option)
        // {
        //     OptionCaption = ',Resource,Show,Item';
        //     OptionMembers = ,Resource,Show,Item;
        //     DataClassification = CustomerContent;
        //     Caption = 'Type';
        // }
        field(30; Type; Enum "RSH Playlist Type")
        {

            DataClassification = CustomerContent;
            Caption = 'Type';
        }
        field(40; "No."; Code[20])
        {
            TableRelation = if (Type = const(Resource)) Resource."No."
            else
            if (Type = const(Show)) "RSH Radio Show"."No."
            else
            if (Type = const(Item)) Item."No.";
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(50; DataFormat; Option)
        {
            OptionCaption = ',Vinyl,CD,MP3,PSA,Advertisement';
            OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
            DataClassification = CustomerContent;
            Caption = 'DataFormat';
        }
        field(60; Description; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(70; "Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date';
        }
        field(80; "Time"; Time)
        {
            DataClassification = CustomerContent;
            Caption = 'Time';
        }
        field(90; "Duration"; Duration)
        {
            DataClassification = CustomerContent;
            Caption = 'Duration';
        }
        field(100; "Fee Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Fee Amount';
        }
        field(110; "ASCAP ID"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'ASCAP ID';
        }
        field(120; "Publisher Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Publisher Code';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Radio Show No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
        key(Key3; Type, "No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
    }

    fieldgroups
    {
    }
}

