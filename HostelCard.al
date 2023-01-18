page 50005 HostelCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Hostel;

    layout
    {
        area(Content)
        {
            group("Hostel Details")
            {
                field("Hostel Id"; Rec."Hostel Id")
                {
                    ApplicationArea = All;

                }
                field("Hostel Name"; Rec."Hostel Name")
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}