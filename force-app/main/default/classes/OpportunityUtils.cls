public class OpportunityUtils {
	public static Decimal calculateAverageOpportunityAmount() {
        Decimal averageAmount = 0; // Cantidad Promedio
        // Your Code Goes Here
        
        // Obtenemos la lista de las oportunidades que solo tengan el Nombre de Etapa (StageName) Cerrada ganada (Closed Won)
        List<Opportunity> listClosedWonOpportunities = [SELECT Amount FROM Opportunity WHERE StageName = 'Closed Won'];
		Decimal totalAmount = 0; // Cantidad Total
        Integer opportunityCount = listClosedWonOpportunities.size(); //obtenemos la Cantidad de oportunidades
        
        for (Opportunity opportunity : listClosedWonOpportunities) { // Recorremos la lista de las oportunidades y calculamos la sumatoria
            totalAmount += opportunity.Amount; // Hacemos la sumatoria de la cantidad
        }
        
        if (opportunityCount > 0) { // verificamos si la Cantidad de oportunidades es mayor que cero para calcular el promedio
            averageAmount = totalAmount / opportunityCount; // Calculamos el promedio de la cantidad
        }
        
        System.debug('averageAmount: ' + averageAmount);
        
        return averageAmount; // Retornamos el promedio de las cantidades.
	}
}