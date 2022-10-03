/// <summary>
/// Page MyRoleCenter (ID 50120).
/// </summary>
page 50120 MyRoleCenter
{
    PageType = RoleCenter;
    Caption = 'My Role Center';

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(Part1; RoleCenterHeadline)
                {
                    ApplicationArea = All;
                }

                part(Part2; SalesInvoiceCuePage)
                {
                    Caption = 'Invoices';
                    ApplicationArea = All;

                }
                part(Part3; EmployeePage)
                {
                    Caption = 'Invoices';
                    ApplicationArea = All;

                }

            
                
            }
        }
    }


    actions
    {
        area(Sections)
        {
            group(PostedInvoices)
            {
                Caption = 'Posted Invoices';
                Image = RegisteredDocs;
                action(PostedServiceInvoices)
                {
                    Caption = 'Posted Service Invoices';
                    RunObject = Page "Posted Service Invoices";
                    ApplicationArea = All;
                }

                action(PostedSalesInvoices)
                {
                    Caption = 'Posted Sales Invoices';
                    RunObject = Page "Posted Sales Invoices";
                    ApplicationArea = All;
                }
                action(PostedPurchaseInvoices)
                {
                    Caption = 'Posted Purchase Invoices';
                    RunObject = Page "Posted Purchase Invoices";
                    ApplicationArea = All;
                }
            }
            group(MySales)
            {
                Caption = 'Sales';
                Image = RegisteredDocs;

                action(SalesInvoices)
                {
                    Caption = 'Sales Invoices';
                    RunObject = Page "Sales Invoice";
                    ApplicationArea = All;
                }

                action(SalesQuotes)
                {
                    Caption = 'Sales Quotes';
                    RunObject = Page "Sales Quotes";
                    ApplicationArea = All;
                }
                action(SalesOrders)
                {
                    Caption = 'Sales Orders';
                    RunObject = Page "Sales Orders";
                    ApplicationArea = All;
                }
            }
            group(MyPurchases)
            {
                Caption = 'Purchases';
                Image = RegisteredDocs;

                action(PurchaseInvoices)
                {
                    Caption = 'Purchase Invoices';
                    RunObject = Page "Purchase Invoice";
                    ApplicationArea = All;
                }

                action(PurchaseQuotes)
                {
                    Caption = 'Purchase Quotes';
                    RunObject = Page "Purchase Quotes";
                    ApplicationArea = All;
                }
                action(PurchaseOrders)
                {
                    Caption = 'Purchase Orders';
                    RunObject = Page "Purchase Orders";
                    ApplicationArea = All;
                }
            }
           
           

            group(SalesDocuments)
            {
                Caption = 'Sales Documents';
                action("Sales Document Entity")
                {
                    ApplicationArea = All;
                    RunObject = page "Sales Document Entity";
                }
                action("Sales Document Line Entity")
                {
                    ApplicationArea = All;
                    RunObject = page "Sales Document Line Entity";
                }
            }
            group(Employees)
            {
                Caption = 'Employees';
                Image = RegisteredDocs;

                action(Employee)
                {
                    Caption = 'Employee List';
                    RunObject = Page "Employee List";
                    ApplicationArea = All;
                }
            }



        }

        area(Embedding)
        {
            action(ChartofAccounts)
            {
                Caption = 'Chart of Accounts';
                RunObject = Page "Chart of Accounts";
                ApplicationArea = All;

            }

            action(Sales)
            {
                Caption = 'Sales lists';
                RunObject = Page "Sales list";
                ApplicationArea = All;
            }

            action(Services)
            {
                Caption = 'Service lists';
                RunObject = Page "Service list";
                ApplicationArea = All;

            }
            action(Customers)
            {
                Caption = 'Customers';
                RunObject = Page "Customer list";
                ApplicationArea = All;

            }
            action(Vendors)
            {
                Caption = 'Vendors';
                RunObject = Page "Vendor List";
                ApplicationArea = All;

            }


        }


        area(Processing)
        {
            action(SeeSalesInvoices)
            {
                Caption = 'See Sales Invoices';
                ApplicationArea = All;
                RunObject = Page "Posted Sales Invoices";
            }
            action("Ledger Entries")
            {
                ApplicationArea = All;
                RunObject = page "Customer Ledger Entries";
            }
            action("Payments")
            {
                ApplicationArea = All;
                RunObject = page "Bank Account List";
            }


        }

        area(Creation) 
        {
            action(AddSalesInvoice)
            {
                Caption = 'Add Sales Invoice';
                ApplicationArea = All;
                Image = NewInvoice;
                RunObject = Page "Sales Invoice";
                RunPageMode = Create;
            }
            action("New Sales Quote")
            {
                ApplicationArea = All;
                RunObject = page "Sales Quote";
                Promoted = true;
                PromotedCategory = New;
                Image = NewSalesQuote;

            }
            action("New Sales Invoice")
            {
                ApplicationArea = All;
                RunObject = page "Sales Invoice";
                Promoted = true;
                PromotedCategory = New;
                Image = NewSalesInvoice;

            }
        }

    }
}

// Creates a profile that uses the Role Center
profile MyProfile
{
    ProfileDescription = 'Sample Profile';
    RoleCenter = MyRoleCenter;
    Caption = 'My profile';
}
