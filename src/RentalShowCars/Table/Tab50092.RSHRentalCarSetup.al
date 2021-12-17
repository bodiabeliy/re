// таблиця авто (не відфільтрована по показникам)
table 50092 "RSH Rental Car Setup"
{
    Caption = 'Car setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "Rental Car information"; Code[20])
        {
            Caption = 'Rental information.';
            DataClassification = CustomerContent;
            TableRelation = "RSH RCA Rental Order Car";
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

}
