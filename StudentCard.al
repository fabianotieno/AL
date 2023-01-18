page 50006 StudentCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group("Student Details")
            {
                field("Student Id"; Rec."Student Id")
                {
                    ApplicationArea = All;

                }
                field(FirstName; Rec.FirstName)
                {
                    ApplicationArea = All;
                    NotBlank = true;
                }
                field(LastName; Rec.LastName)
                {
                    ApplicationArea = All;
                    NotBlank = true;
                }
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;

                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;

                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;

                }
                field(StudentImage; Rec.StudentImage)
                {
                    ApplicationArea = All;
                }
            }
            group("Hostel Details")
            {
                field(FullName; Rec.FullName)
                {
                    ApplicationArea = All;

                }
                field("Hostel No"; Rec."Hostel No")
                {
                    ApplicationArea = All;

                }
                field(HostelName; Rec.HostelName)
                {
                    ApplicationArea = All;

                }

            }
            group("Audit Trail")
            {
                field(CreatedBy; Rec.CreatedBy)
                {
                    ApplicationArea = All;

                }
                field(CreatedDate; Rec.CreatedDate)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Submit Form")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    Message('Form Submitted Successfuly');
                    CurrPage.Close();
                end;
            }
        }
    }

    var
        myInt: Integer;
}