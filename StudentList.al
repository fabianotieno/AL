page 50007 StudentList
{
    Caption = 'StudentList';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Student;
    CardPageId = StudentCard;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Student Id"; Rec."Student Id")
                {
                    ApplicationArea = All;
                }
                field(FullName; Rec.FullName)
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
                field(HostelName; Rec.HostelName)
                {
                    ApplicationArea = All;
                }
                field(CreatedBy; Rec.CreatedBy)
                {
                    ApplicationArea = All;
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}