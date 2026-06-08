package com.seller.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.seller.beans.SellerDetails;

@Repository
public class SellerDao {

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    //inserting values
    public int save(SellerDetails s) {
        String sql = "INSERT INTO Seller (sellerid, sellername, sellerCompanyname, sellerProducttype, selleremail, sellercontact, selleraddress, sellergstin, selleraccountactive, sellerStartDate, sellerEndDate) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return template.update(sql,
                s.getSellerid(),
                s.getSellername(),
                s.getSellerCompanyname(),
                s.getSellerProducttype(),
                s.getSelleremail(),
                s.getSellercontact(),
                s.getSelleraddress(),
                s.getSellergstin(),
                s.getSelleraccountactive(),
                s.getSellerStartDate(),
                s.getSellerEndDate());
    }

    // updating seller
    public int update(SellerDetails s) {
        String sql = "UPDATE Seller SET sellername=?, sellerCompanyname=?, sellerProducttype=?, selleremail=?, sellercontact=?, selleraddress=?, sellergstin=?, selleraccountactive=?, sellerStartDate=?, sellerEndDate=? WHERE sellerid=?";
        return template.update(sql,
                s.getSellername(),
                s.getSellerCompanyname(),
                s.getSellerProducttype(),
                s.getSelleremail(),
                s.getSellercontact(),
                s.getSelleraddress(),
                s.getSellergstin(),
                s.getSelleraccountactive(),
                s.getSellerStartDate(),
                s.getSellerEndDate(),
                s.getSellerid());
    }

    // delete seller by using id
    public int delete(int sellerid) {
        String sql = "DELETE FROM Seller WHERE sellerid=?";
        return template.update(sql, sellerid);
    }

    // GET Seller by ID
    public SellerDetails getSellerById(int sellerid) {
        String sql = "SELECT * FROM Seller WHERE sellerid=?";
        return template.queryForObject(sql, new Object[] { sellerid }, new RowMapper<SellerDetails>() {
            public SellerDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
                SellerDetails e = new SellerDetails();
                e.setSellerid(rs.getInt("sellerid"));
                e.setSellername(rs.getString("sellername"));
                e.setSellerCompanyname(rs.getString("sellerCompanyname"));
                e.setSellerProducttype(rs.getString("sellerProducttype"));
                e.setSelleremail(rs.getString("selleremail"));
                e.setSellercontact(rs.getString("sellercontact"));
                e.setSelleraddress(rs.getString("selleraddress"));
                e.setSellergstin(rs.getString("sellergstin"));
                e.setSelleraccountactive(rs.getString("selleraccountactive"));
                e.setSellerStartDate(rs.getString("sellerStartDate"));
                e.setSellerEndDate(rs.getString("sellerEndDate"));
                return e;
            }
        });
    }

    //GET All Sellers
    public List<SellerDetails> getSellers() {
        String sql = "SELECT * FROM Seller";
        return template.query(sql, new RowMapper<SellerDetails>() {
            public SellerDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
                SellerDetails e = new SellerDetails();
                e.setSellerid(rs.getInt("sellerid"));
                e.setSellername(rs.getString("sellername"));
                e.setSellerCompanyname(rs.getString("sellerCompanyname"));
                e.setSellerProducttype(rs.getString("sellerProducttype"));
                e.setSelleremail(rs.getString("selleremail"));
                e.setSellercontact(rs.getString("sellercontact"));
                e.setSelleraddress(rs.getString("selleraddress"));
                e.setSellergstin(rs.getString("sellergstin"));
                e.setSelleraccountactive(rs.getString("selleraccountactive"));
                e.setSellerStartDate(rs.getString("sellerStartDate"));
                e.setSellerEndDate(rs.getString("sellerEndDate"));
                return e;
            }
        });
    }
}
