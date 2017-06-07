package com.mx.portal.ejbifz;

import java.util.List;

import javax.ejb.Local;

import com.mx.portal.entity.LogsAcceso;
import com.mx.portal.vo.LogsAccesoVO;

@Local
public interface LogsAccesosLocal {
	public List<LogsAccesoVO> getCatalogo();
	public boolean saveLogs(LogsAcceso logsAcceso); 
}
