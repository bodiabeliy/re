Table 50003 "RSH Playlist Line"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(20; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        // field(30; Type; Option)
        // {
        //     Description = ',Resource,Show,Item';
        //     OptionCaption = ',Resource,Show,Item';
        //     OptionMembers = ,Resource,Show,Item;
        //     Caption = 'Type';
        //     DataClassification = CustomerContent;
        // }
        field(30; Type; Enum "RSH Playlist Type")
        {
            TableRelation = IF (Type = Const(Resource)) Resource."No."
            ELSE
            IF (Type = Const(Show)) "RSH Radio Show"."No."
            ELSE
            IF (Type = Const(Item)) Item."No.";
            Caption = 'Type';
            DataClassification = CustomerContent;
        }
        field(40; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        // field(50; "Data Format"; Option)
        // {
        //     Description = ',Vinyl,CD,MP3,PSA,Advertisement';
        //     OptionCaption = ',Vinyl,CD,MP3,PSA,Advertisement';
        //     OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
        //     Caption = 'Data Format';
        //     DataClassification = CustomerContent;
        // }
        field(50; "Data Format"; Enum "RSH Data Format")
        {
            // Description = ',Vinyl,CD,MP3,PSA,Advertisement';
            // OptionCaption = ',Vinyl,CD,MP3,PSA,Advertisement';
            // OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
            Caption = 'Data Format';
            DataClassification = CustomerContent;
        }
        field(60; Publisher; Code[10])
        {
            Caption = 'Publisher';
            DataClassification = CustomerContent;
        }
        field(70; Description; Text[30])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(80; "Duration"; Duration)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        field(90; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = CustomerContent;
        }
        field(100; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

