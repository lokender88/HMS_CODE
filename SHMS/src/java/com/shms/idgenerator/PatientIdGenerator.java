/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shms.idgenerator;

import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import org.hibernate.HibernateException;
import org.hibernate.MappingException;
import org.hibernate.dialect.Dialect;
import org.hibernate.engine.SessionImplementor;
import org.hibernate.exception.JDBCExceptionHelper;
import org.hibernate.id.Configurable;
import org.hibernate.id.IdentifierGenerator;
import org.hibernate.id.PersistentIdentifierGenerator;
import org.hibernate.type.Type;

/**
 *
 * @author Lokendar Reddy Pullagurla
 */
public class PatientIdGenerator implements IdentifierGenerator, Configurable {

    private String tableName;

    /**
     *
     * This method will generate a random number and return it, hibernate can
     *
     * use this id as it generator class id. {@inheritDoc}
     *
     */
    public Serializable generate(SessionImplementor sessionImplemetor, Object object) throws HibernateException {

        return getNextNumber(sessionImplemetor);

    }

    /**
     *
     * This method's parameters have all the available details of hbm.xml
     *
     * file.Since all the database table related data available ,Hibernate can
     *
     * access to the each and every table. In this example to get my id i used
     *
     * procedure. To execute my stored procedure i need to pass table name.
     *
     * {@inheritDoc}
     *
     */
    public synchronized void configure(Type type, Properties params, Dialect d)
            throws MappingException {

        tableName = params.getProperty(PersistentIdentifierGenerator.TABLE);

    }

    /**
     *
     * This method will call the stored procedure and return the next result.
     *
     *
     *
     * @return next value of the id
     *
     */
    private Long getNextNumber(SessionImplementor session) {

        String sql = "{call stored procedure name}";

        long nextValue;

        try {

            PreparedStatement st =
                    session.getBatcher().prepareSelectStatement(sql);

            st.setString(1, tableName);

            try {

                ResultSet rs = st.executeQuery();

                try {

                    while (rs.next()) {

                        nextValue = Long.parseLong(rs.getString(1));

                    }

                } finally {

                    rs.close();

                }

            } finally {

                session.getBatcher().closeStatement(st);

            }

        } catch (SQLException sqle) {

            throw JDBCExceptionHelper.convert(session.getFactory()
                    .getSQLExceptionConverter(), sqle,
                    "could not fetch initial value for increment generator",
                    sql);

        }

        return null;

    }
}
