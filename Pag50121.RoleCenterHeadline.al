/// <summary>
/// Page RoleCenterHeadline (ID 50121).
/// </summary>
page 50121 RoleCenterHeadline
{
    PageType = HeadLinePart;

    layout
    {
        area(content)
        {
            field(Headline1; Headline1)
            {
                ApplicationArea = All;
            }
            field(Headline2; hdl2Txt)
            {
                ApplicationArea = All;
            }
            field(Headline3; hdl3Txt)
            {
                ApplicationArea = All;
            }
            field(Headline4; hdl4Txt)
            {
                ApplicationArea = All;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Headline1 := hdl1Txt;
    end;


    var
        hdl1Txt: Label '<qualifier>Developer Space</qualifier><payload>This is the <emphasize>Buffalo Millers Company Setup</emphasize>.</payload>';
        hdl2Txt: Label 'Profit maximization scale index';
        hdl3Txt: Label 'Creating a flexible Farming Enterprise';
        hdl4Txt: Label 'Business Automation with improved workflow of processes';
        Headline1: Text;
}