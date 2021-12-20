//збірна таблиця інформації щодо покупців та продавців
table 50000 "RSH RCA Rental Sales"
{
    Caption = 'Rental Order Cars';
    DataClassification = CustomerContent;


    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = '№.';
            DataClassification = CustomerContent;
            // тригер валідації (перевірка) відсотрованих даних
            trigger OnValidate()
            var
                RetalSetup: Record "RSH Rental Car Setup";
                NoSeriesMgt: Codeunit NoSeriesManagement;
            begin
                if "No." <> xRec."No." then begin
                    NoRegistred(RetalSetup);
                    NoSeriesMgt.TestManual(RetalSetup."Rental Car information");
                end;
            end;
        }
        field(10; "Order number"; Code[10])
        {
            TableRelation = "RSH RCA Rental Order Car";
            Caption = 'Order number';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(20; "Saler_name"; Text[30])
        {
            Caption = 'Saler name';
            DataClassification = CustomerContent;
            NotBlank = true;
        }

        field(40; "Ordered_rental_period"; Duration)
        {
            Caption = 'Ordered rental period';
            DataClassification = CustomerContent;
        }
        field(50; "Car_code"; Code[20])
        {
            Caption = 'Car code';
            DataClassification = CustomerContent;
        }
        field(60; "Discount_price"; Decimal)
        {
            Caption = 'Rental Price';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Saler_name)
        {

        }
    }
    // вставка полів
    trigger OnInsert()
    begin
        InitInsert();
    end;

    trigger OnDelete()
    var
        ToDeleteSales: Report "RSH RCA Rental Utils";
    begin
        ToDeleteSales.DeleteDetail(Rec."No.");
    end;

    local procedure InitInsert()
    var
        RentalSetup: Record "RSH Rental Car Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "No." <> '' then
            exit;

        NoRegistred(RentalSetup);
    end;

    local procedure NoRegistred(var RentalSalesSetup: Record "RSH Rental Car Setup")
    var
        RentalShowNosErr: Label 'The field should not be empty in Table!';
    begin
        if not RentalSalesSetup.get() then begin
            RentalSalesSetup.Insert();
            Commit();
        end;
        RentalSalesSetup.TestField("Rental Car information");
        IF true THEN;
        if RentalSalesSetup."Rental Car information" = '' then
            Error(RentalShowNosErr, RentalSalesSetup.FieldCaption("Rental Car information"), RentalSalesSetup.TableCaption());
        //
        OnValidateRrcord()
    end;
    //
    local procedure OnValidateRrcord()
    var
        Item: Record Item;
    begin
        if Rec."No." = '' then
            Rec.Validate(Saler_name, '')
        else begin
            Item.get(Rec."No.");
            RentalCarsField(Item);
        end;
        Rec.CalcFields("Order number");
    end;

    local procedure RentalCarsField(Item: Record Item)
    begin
        Rec.Validate(Saler_name, Item.Description);
    end;
}
