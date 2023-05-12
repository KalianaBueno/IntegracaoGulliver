package br.com.masters3.dao;

import br.com.masters3.beans.Cidade;

public class CidadeDAO implements DAO<Cidade> {
	
	
	private DataSource dataSource;
	
	public CidadeDAO(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public DataSource getDataSource() {
		return this.dataSource;
	}

	@Override
	public void create(Cidade object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Cidade read(Cidade object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Cidade object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Cidade object) {
		// TODO Auto-generated method stub
		
	}

}
