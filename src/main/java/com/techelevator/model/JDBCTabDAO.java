package com.techelevator.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JDBCTabDAO implements TabDAO{
	private JdbcTemplate jdbcTemplate;
	private FlyerDAO flyerDAO;
	
	@Autowired
	public JDBCTabDAO(FlyerDAO flyerDAO, DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.flyerDAO = flyerDAO;
	}
	
	@Override
	public void pullNewTab(String userName, int flyerID) {
		Object[] params = {false, flyerID, userName};
		String sqlCreateTab = "INSERT INTO tab(isRedeemed, flyer_id, user_name) VALUES(?,?,?);";
		jdbcTemplate.update(sqlCreateTab, params);
	}

	@Override
	public void redeemTab(String userName, int flyerID) {
		Object[] params = {true, flyerID, userName};
		String sqlRedeemTab = "UPDATE tab " +
							  "SET isRedeemed = ? " +
							  "WHERE flyer_id = ? AND user_name = ?;";
		jdbcTemplate.update(sqlRedeemTab, params);
	}

	@Override
	public ArrayList<Tab> getTabsByHolder(String username) {
		ArrayList<Tab> unredeemedTabs = new ArrayList();
		ArrayList<Flyer> flyers = flyerDAO.getFlyersFromUnredeemedTabsByUser(username);
		for(Flyer flyer : flyers) {
			Tab tab = new Tab(username, flyer.getFlyerID(), false, flyer.getStartDate(), flyer.getEndDate(), flyer.getFlyerName());
			unredeemedTabs.add(tab);
		}
		return unredeemedTabs;
	}

	@Override
	public void redeemAllTabsByFlyer(int flyerID) {
		Object[] params = {flyerID};
		String sqlRedeemTab = "UPDATE tab " +
							  "SET isRedeemed = true " +
							  "WHERE flyer_id = ?;";
		jdbcTemplate.update(sqlRedeemTab, params);	
	}

}
