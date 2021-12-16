table 50008 "RSH Posted Radio Show"
{
    Caption = 'Posted Radio Show';
    DataClassification = CustomerContent;
    LookupPageId = "RSH Radio Show List";
    DrillDownPageId = "RSH Radio Show List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.', comment = 'ESP="Code."';
            DataClassification = CustomerContent;
            NotBlank = true;

            trigger OnValidate()
            var
                RadioShowSetup: Record "RSH Radio Show Setup";
                NoSeriesMgt: Codeunit NoSeriesManagement;
            begin
                if "No." <> xRec."No." then begin
                    TestNoSeries(RadioShowSetup);
                    NoSeriesMgt.TestManual(RadioShowSetup."Radio Show Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(10; "Radio Show Type"; Code[10])
        {
            TableRelation = "RSH Radio Show Type";
            Caption = 'Radio Show Type';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
            NotBlank = true;
        }
        field(21; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
            DataClassification = CustomerContent;
        }
        field(22; "Name 3"; Text[50])
        {
            Caption = 'Name 3';
            DataClassification = CustomerContent;
        }
        field(40; "Run Time"; Duration)
        {
            Caption = 'Run Time';
            DataClassification = CustomerContent;
        }
        field(50; "Host No."; Code[20])
        {
            Caption = 'Host No.';
            DataClassification = CustomerContent;
        }
        field(60; "Host Name"; Text[50])
        {
            Caption = 'Host Name';
            DataClassification = CustomerContent;
        }
        field(100; "Average Listeners"; Decimal)
        {
            Caption = 'Average Listeners ';
            DataClassification = CustomerContent;
        }
        field(110; "Audience Share"; Decimal)
        {
            Caption = 'Audience Share';
            DataClassification = CustomerContent;
        }
        field(120; "Advertising Revenue"; Decimal)
        {
            Caption = 'Advertising Revenue';
            DataClassification = CustomerContent;
        }
        field(130; "Royalty Cost"; Decimal)
        {
            Caption = 'Royalty Cost';
            DataClassification = CustomerContent;
        }
        field(140; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
            DataClassification = CustomerContent;
        }
        field(1000; Frequency; Option)
        {
            OptionMembers = Hourly,Daily,Weekly,Monthly,"Every day";
            Caption = 'Frequency';
            DataClassification = CustomerContent;
        }
        field(1003; "Frequency Enum"; Enum "RSH Frequency")
        {
            Caption = 'Frequency';
            DataClassification = CustomerContent;
        }
        field(1010; "PSA Planned Quantity"; Integer)
        {
            Caption = 'PSA Planned Quantity';
            DataClassification = CustomerContent;
        }
        field(1020; "Ads Planned Quantity"; Integer)
        {
            Caption = 'Ads Planned Quantity';
            DataClassification = CustomerContent;
        }
        field(1030; "News Required"; Boolean)
        {
            InitValue = true;
            Caption = 'News Required';
            DataClassification = CustomerContent;
        }
        field(1040; "News Duration"; Duration)
        {
            Caption = 'News Duration';
            DataClassification = CustomerContent;
        }
        field(1050; "Sports Required"; Boolean)
        {
            Caption = 'Sports Required';
            DataClassification = CustomerContent;
        }
        field(1060; "Sports Duration"; Duration)
        {
            Caption = 'Sports Duration';
            DataClassification = CustomerContent;
        }
        field(1070; "Weather Required"; Boolean)
        {
            Caption = 'Weather Required';
            DataClassification = CustomerContent;
        }
        field(1080; "Weather Duration"; Duration)
        {
            Caption = 'Weather Duration';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Message('Onvalidate "Weather Duration"');
            end;

            trigger OnLookup()
            begin

            end;
        }
        field(1090; "Date Filter"; date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(2000; Email; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Email';
            ExtendedDatatype = Masked;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(MyKey; "Royalty Cost")
        {

        }
        key(MyKey2; "Royalty Cost", "Advertising Revenue")
        {

        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Host Name")
        {

        }
    }
    trigger OnInsert()
    begin
        InitInsert();
    end;

    local procedure InitInsert()
    var
        RadioShowSetup: Record "RSH Radio Show Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "No." <> '' then
            exit;

        TestNoSeries(RadioShowSetup);
        NoSeriesMgt.InitSeries(RadioShowSetup."Radio Show Nos.", xRec."No. Series", 0D, "No.", "No. Series");
    end;

    local procedure TestNoSeries(var RadioShowSetup: Record "RSH Radio Show Setup")
    // var
    //     RadioShowNosErr: Label 'The field %1 should not be empty in Table %2!', Comment = '%1 = fieldCaption,%2 = TableCaption';
    begin
        if not RadioShowSetup.get() then begin
            RadioShowSetup.Insert();
            Commit();
        end;
        RadioShowSetup.TestField("Radio Show Nos.");

        // if RadioShowSetup."Radio Show Nos." = '' then
        //     Error(RadioShowNosErr, RadioShowSetup.FieldCaption("Radio Show Nos."), RadioShowSetup.TableCaption());
    end;

}
