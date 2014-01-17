package br.com.caelum.tarefas.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.caelum.tarefas.modelo.Tarefa;

public class AlteraTarefa {
	
	public static void main(String[] args) {
		
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("tarefas");
		EntityManager manager = factory.createEntityManager();
		
		Tarefa tarefa = new Tarefa();
		tarefa.setId(2L);
		tarefa.setDescricao("Estudar Hibernate, JPA e Spring");
		tarefa.setFinalizado(false);
		tarefa.setDataFinalizacao(null);
		
		manager.getTransaction().begin();
		manager.merge(tarefa);
		manager.getTransaction().commit();
		
	}

}
