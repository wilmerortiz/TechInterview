@isTest
public class OpportunityUtilsTest {
    @isTest
    public static void testCalculateAverageOpportunityAmount() {
        // Creamos oportunidades de ejemplo
        List<Opportunity> opportunities = new List<Opportunity>();
        opportunities.add(new Opportunity(Name='Opportunity 1', StageName='Closed Won', Amount=100, CloseDate = Date.today()));
        opportunities.add(new Opportunity(Name='Opportunity 2', StageName='Closed Won', Amount=200, CloseDate = Date.today()));
        opportunities.add(new Opportunity(Name='Opportunity 3', StageName='Closed Won', Amount=300, CloseDate = Date.today()));
        insert opportunities;
        
        // Llamamos al método que queremos probar
        Decimal averageAmount = OpportunityUtils.calculateAverageOpportunityAmount();
        
        // Verificar el resultado
        System.assertEquals(200, averageAmount);
    }
}