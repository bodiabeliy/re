Table 50006 "RSH Listenership Entry"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }
        field(20; "Ratings Source Entry No"; Integer)
        {
            Caption = 'Ratings Source Entry No';
            DataClassification = CustomerContent;
        }
        field(30; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(40; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = CustomerContent;
        }
        field(50; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = CustomerContent;
        }
        field(60; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = CustomerContent;
        }
        field(70; "Listener Count"; Decimal)
        {
            Caption = 'Listener Count';
            DataClassification = CustomerContent;
        }
        field(80; "Audience Share"; Decimal)
        {
            Caption = 'Audience Share';
            DataClassification = CustomerContent;
        }
        field(90; "Age Demographic"; Option)
        {
            OptionCaption = ',0-12,13-18,19-34,35-50,51+';
            OptionMembers = ,"0-12","13-18","19-34","35-50","51+";
            Caption = 'Age Demographic';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Radio Show No.", Date, "Start Time", "Age Demographic")
        {
            SumIndexFields = "Listener Count", "Audience Share";
        }
    }

    fieldgroups
    {
    }
}

