package mehdi_imad.models;

import java.util.ArrayList;
import java.util.List;

import mehdi_imad.entities.Client;

public class ClientModel {
	private List<Client> clients = new ArrayList<Client>();

	public ClientModel() {
		super();
	}

	public List<Client> getClients() {
		return clients;
	}

	public void setClients(List<Client> clients) {
		this.clients = clients;
	}
	
	
}
