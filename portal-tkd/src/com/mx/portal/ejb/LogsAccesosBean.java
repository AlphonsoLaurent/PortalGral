package com.mx.portal.ejb;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import org.springframework.beans.factory.annotation.Autowired;

import com.mx.portal.daoifz.LogsAccesosDAO;
import com.mx.portal.ejbifz.LogsAccesosLocal;
import com.mx.portal.entity.LogsAcceso;
import com.mx.portal.vo.LogsAccesoVO;

/**
 * Session Bean implementation class LogsAccesos
 */
@Stateless
@LocalBean
public class LogsAccesosBean implements LogsAccesosLocal {
	
	@Autowired
    private LogsAccesosDAO logsAccesosDAO;

    public LogsAccesosBean() {
    }

	@Override
	public List<LogsAccesoVO> getCatalogo() {
		return logsAccesosDAO.getListLogs();
	}

	@Override
	public boolean saveLogs(LogsAcceso logsAcceso) {
		return logsAccesosDAO.save(logsAcceso);
	}

}
