package com.bluedon.monitor.project.controller.communication;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bluedon.monitor.common.util.PageUtil;
import com.bluedon.monitor.project.entity.communication.CmLogFtpDT;
import com.bluedon.monitor.project.service.communication.LogFtpService;
import com.bluedon.monitor.system.util.ToolUtil;

@Controller
@RequestMapping("/communication/logFtp")
public class LogPtpController {

	private static final Logger log = Logger.getLogger(LogPtpController.class);
	@Autowired
	private LogFtpService logFtpService;
	
	@RequestMapping(params = "toPageList")
	public ModelAndView toPageList(HttpServletRequest req) {
		return new ModelAndView("project/communication/logFtpList");
	}
	
	@RequestMapping(params = "getLogFtpList")
	public void pageList(CmLogFtpDT param, PageUtil pageUtil, HttpServletRequest req, HttpServletResponse rsp){
		//获取分页数据
		pageUtil = logFtpService.getPageList(param, pageUtil);

		//返回分页数据
		ToolUtil.getDataGrid(rsp, pageUtil.getResultList(), pageUtil.getTotalRecordNumber());
	}
	
}
