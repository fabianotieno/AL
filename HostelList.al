page 50008 HostelList
{
    Caption = 'HostelList';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Hostel;
    CardPageId = HostelCard;

    layout
    {
        area(Content)
        {
            repeater(Group)
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