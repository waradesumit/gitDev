public class PaginationControllerOpportunity {
    
    Public integer TotalRecordCount=0;
    Public Integer Offsetsize=0;
    Public Integer LimitSize=10;
    
    Public PaginationControllerOpportunity (){
    TotalRecordCount=[Select count() From opportunity];
    }
    
    public boolean getNxt() {
    if((OffsetSize + LimitSize) > TotalRecordCount)
    return true;
    else
    return false;
    }
    
    public boolean getPrev() {
    if(Offsetsize==0)
    return true;
    else
    return false;   
    }

    public void LastPage() {
    Offsetsize = TotalRecordCount - math.mod(TotalRecordCount,LimitSize);
    }

    public void Next() {
      Offsetsize=Offsetsize+LimitSize;
    }

    public void Previous() {
      Offsetsize=Offsetsize-LimitSize;
    }
    
    public void FirstPage() {
     Offsetsize=0;     
    }
  
   
    public List<opportunity> getopplist(){
    List<opportunity> opp= Database.Query('SELECT Name, StageName, CloseDate FROM opportunity LIMIT :LimitSize OFFSET :OffsetSize');
    return opp;
    }
}