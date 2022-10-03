/// <summary>
/// Table OneSlsCueTable (ID 50121).
/// </summary>
table 50121 OneSlsCueTable
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;PrimaryKey; Code[250])
        {
            
            DataClassification = ToBeClassified;
        }
        field(2; SalesInvoicesOpen ; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where("Document Type"=Filter(Invoice), Status=FILTER(Open)));

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