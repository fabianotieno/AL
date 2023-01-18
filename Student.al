table 50005 Student
{
    Caption = 'Student Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student Id"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; FirstName; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; LastName; Text[100])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                FullName := FirstName + ' ' + LastName;
            end;
        }
        field(4; Age; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Gender; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = MALE,FEMALE,TransGender,"Not Willing to Say";
        }
        field(6; DOB; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Age := Date2DMY(Today, 3) - Date2DMY(DOB, 3);

                if Age < 18 then
                    Error('Too Young, Must be above 18yrs!');
            end;
        }
        field(7; "Hostel No"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Hostel."Hostel Id";
            trigger OnValidate()
            begin
                Hostel.Reset();
                Hostel.SetRange("Hostel Id", "Hostel No");
                if Hostel.FindFirst() then begin
                    HostelName := Hostel."Hostel Name";
                end;
            end;
        }
        field(8; HostelName; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(9; FullName; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(10; CreatedBy; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(11; CreatedDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(12; StudentImage; Blob)
        {
            DataClassification = ToBeClassified;
            Subtype = Bitmap;
        }

    }

    keys
    {
        key(Key1; "Student Id")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        Hostel: Record Hostel;

    trigger OnInsert()
    begin
        CreatedBy := UserId;
        CreatedDate := Today;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}