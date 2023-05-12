package br.com.masters3.dao;

public interface DAO<T extends Object> {
	public void create(T object);
	public T read(T object);
	public void update(T object);
	public void delete(T object);
	
}

//Esta interface cria o médodo CRUD generico para usar depois nas classes dao