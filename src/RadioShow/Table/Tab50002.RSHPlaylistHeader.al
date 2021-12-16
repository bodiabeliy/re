Table 50002 "RSH Playlist Header"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(20; "Radio Show No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Radio Show No.';
        }
        field(30; Description; Text[30])
        {
            Enabled = false;
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(40; "Broadcast Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Broadcast Date';
        }
        field(50; "Duration"; Duration)
        {
            DataClassification = CustomerContent;
            Caption = 'Duration';
        }
        field(60; "Start Time"; Time)
        {
            DataClassification = CustomerContent;
            Caption = 'Start Time';
        }
        field(70; "End Time"; Time)
        {
            DataClassification = CustomerContent;
            Caption = 'End Time';
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

