package com.siwa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.siwa.model.Assign;
import com.siwa.util.DBUtil;

public class AssignDAOImplementation implements AssignDAO{

	private Connection conn;

	public AssignDAOImplementation() {
		conn = DBUtil.getConnection();
	}
	@Override
	public void addAssign(Assign assign) {
		try{
			String query = "insert into assign (personID,projectID) values (?,?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, assign.getPersonID());
			ps.setInt(2, assign.getProjectID());
			ps.executeUpdate();
			ps.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteAssign(int assignID) {
		try{
			String query = "delete from assign where assignID=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, assignID);
			ps.executeUpdate();
			ps.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}

	@Override
	public void updateAssign(Assign assign) {
		try{
			String query = "update assign set personID=?, projectID=? where assignID=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, assign.getPersonID());
			ps.setInt(2, assign.getProjectID());
			ps.setInt(3, assign.getAssignID());
			ps.executeUpdate();
			ps.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Assign> getAllAssign() {
		List<Assign> assigns = new ArrayList<Assign>();
		try{
			Statement stat = conn.createStatement();
			ResultSet rs = stat.executeQuery("select * from assign");
			while(rs.next()){
				Assign assign = new Assign();
				assign.setAssignID(rs.getInt("assignID"));
				assign.setPersonID(rs.getInt("personID"));
				assign.setProjectID(rs.getInt("projectID"));
				assigns.add(assign);
			}
			rs.close();
			stat.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return assigns;
	}

	@Override
	public Assign getAssignById(int assignID) {
		Assign assign = new Assign();
		try{
			String query = "select * from assign where assignID=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, assignID);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				assign.setAssignID(rs.getInt("assignID"));
				assign.setPersonID(rs.getInt("personID"));
				assign.setProjectID(rs.getInt("projectID"));
			}
			ps.close();
			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return assign;
	}

}