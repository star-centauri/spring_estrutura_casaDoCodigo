package br.com.casadocodigo.loja.models;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class CarrinhoCompras {
	
	private Map<CarrinhoItem, Integer> itens = new LinkedHashMap<CarrinhoItem, Integer>();

	public void Add(CarrinhoItem item) {
		itens.put(item, QuantidadeItem(item)+1);
	}

	private int QuantidadeItem(CarrinhoItem item) {
		if (itens.containsKey(item)) {
			itens.put(item, 0);
		}
		return itens.get(item);
	}

	public int getQuantidade(){
	    return itens.values()
	    		.stream()
	    		.reduce(0, (proximo, acumulador) -> (proximo + acumulador));
	}
}
