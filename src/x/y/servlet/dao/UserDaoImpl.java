package x.y.servlet.dao;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import x.y.servlet.User;

import java.sql.SQLException;


public class UserDaoImpl implements UserDao {
    @Override
    public boolean checkUsername(String username) {
        try {
            ComboPooledDataSource dataSource=new ComboPooledDataSource();
            QueryRunner queryRunner=new QueryRunner(dataSource);
            User user=queryRunner.query("select * from user where username=?",new BeanHandler<>(User.class),username);
            if (user!=null){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
