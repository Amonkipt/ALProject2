/// <summary>
/// Table SalesInvoiceCueTable (ID 50120).
/// </summary>
/// 
table 50125 SalesInvCue
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Code[250])
        {

            DataClassification = ToBeClassified;
        }
        field(2; SalesInvoicesOpen; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where("Document Type" = Filter(Invoice), Status = FILTER(Open)));

        }
        field(3; PurchaseOrder; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Purchase Header" where(Status = const(Open)));
        }
        field(4; SoldOrders; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where(Status = filter(Open)));
        }
        field(5; Active; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Employee" where(Status = filter(Active)));
        }
        field(6; Inactive; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Employee" where(Status = filter(Inactive)));
        }
         field(7; Terminated; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Employee" where(Status = filter(Terminated)));
        }
    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }
}