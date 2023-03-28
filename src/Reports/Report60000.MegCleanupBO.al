//Meg01.00 PAS(10-08-22): call codeunit "Meg Cleanup BO".
report 60000 "Meg Cleanup BO"
{
    Caption = 'Cleanup BO';
    ProcessingOnly = true;

    requestpage
    {
        layout
        {
            area(content)
            {
                group("Cleanup BO")
                {

                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    trigger OnPostReport()
    var
        MegCleanupBOL: Codeunit "Meg Cleanup BO";
    begin
        MegCleanupBOL.Run();
    end;
}
