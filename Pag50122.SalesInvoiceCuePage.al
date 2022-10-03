/// <summary>
/// Page SalesInvoiceCuePage (ID 50122).
/// </summary>
page 50124 SalesInvoiceCuePage
{
    PageType = CardPart;
    SourceTable = SalesInvCue;

    layout
    {
        area(content)
        {
            cuegroup(SalesCueContainer)
            {
                Caption = 'Sales Invoices';
                // CuegroupLayout=Wide;
                field(SalesCue; SalesInvoicesOpen)
                {
                    Caption = 'Open';
                    DrillDownPageId = "Sales Invoice";
                    ApplicationArea = all;
                }
            }
            cuegroup(PurchaseOrders)
            {
                field(PurchaseOrder; PurchaseOrder)
                {
                    ApplicationArea = all;
                    DrillDownPageId = "Purchase Order";
                }
            }
            cuegroup(SellingOrders)
            {
                field(SoldOrders; SoldOrders)
                {
                    ApplicationArea = all;
                    DrillDownPageId = "Sales Order";
                }
            }
            cuegroup(Employees)
            {
                field(EmployeeActive; Active)
                {
                    ApplicationArea = all;
                    DrillDownPageId = "Employee List";
                }
                field(EmployeeInactive; Inactive)
                {
                    ApplicationArea = all;
                    DrillDownPageId = "Employee List";
                }
                 field(EmployeeTerminated; Terminated)
                {
                    ApplicationArea = all;
                    DrillDownPageId = "Employee List";
                }
            }
           
        }
    }

    trigger OnOpenPage();
    begin
        RESET;
        if not get then begin
            INIT;
            INSERT;
        end;
    end;
}