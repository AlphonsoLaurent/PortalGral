package com.mx.portal.daoifz;

import java.util.List;

import com.mx.portal.vo.LogsAccesoVO;

public interface LogsAccesosDAO extends OperacionesBasicIfz{
	List<LogsAccesoVO> getListLogs();
}
