package com.bluedon.monitor.project.service.tradeFileRpt.impl;

import com.bluedon.monitor.common.dao.IBaseDao;
import com.bluedon.monitor.common.util.PageUtil;
import com.bluedon.monitor.common.util.StringUtil;
import com.bluedon.monitor.project.entity.tradeFileRpt.TradeFileRpt;
import com.bluedon.monitor.project.entity.transferTable.TransferTable;
import com.bluedon.monitor.project.service.tradeFileRpt.TradeFileRptService;
import com.bluedon.monitor.project.service.transferTable.impl.TransferTableServiceImpl;
import org.apache.log4j.Logger;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author JiangFeng
 * @date 2017/11/14
 * @Description
 */
@Service("tradeFileRptService")
public class TradeFileRptServiceImpl implements TradeFileRptService{
    @Autowired
    @Qualifier("hibernateDao")
    private IBaseDao<TradeFileRpt> hibernateDao;
    @Autowired
    private TransferTableServiceImpl transferTableService;

private static Logger log=Logger.getLogger(TradeFileRptServiceImpl.class);

    @Override
    public List<TradeFileRpt> getFileCountList(){
        String hql="select a.file_type fileType,sum(a.file_count) fileCount from trade_file_rpt a group by a.file_type order by fileCount desc";
        List<Map<String,Object>> list = hibernateDao.selectBySql(hql);
        List<TradeFileRpt> tradeFileRpts = new ArrayList<>();
        for (Map<String, Object> stringObjectMap : list) {
            String fileType = String.valueOf(stringObjectMap.get("fileType"));
            int fileCount = Integer.valueOf(String.valueOf(stringObjectMap.get("fileCount")));
            TradeFileRpt tradeFileRpt = new TradeFileRpt();
            tradeFileRpt.setFileType(fileType);
            tradeFileRpt.setFileCount(fileCount);
            tradeFileRpts.add(tradeFileRpt);
        }
        return tradeFileRpts;
    }
    @Override
    public List<TradeFileRpt> getHandleCountList(){
        String hql="select a.file_type fileType,sum(a.handle_count) handleCount from trade_file_rpt a group by a.file_type order by handleCount desc";
        List<Map<String,Object>> list = hibernateDao.selectBySql(hql);
        List<TradeFileRpt> tradeFileRpts = new ArrayList<>();
        for (Map<String, Object> stringObjectMap : list) {
            String fileType = String.valueOf(stringObjectMap.get("fileType"));
            int handleCount = Integer.valueOf(String.valueOf(stringObjectMap.get("handleCount")));
            TradeFileRpt tradeFileRpt = new TradeFileRpt();
            tradeFileRpt.setFileType(fileType);
            tradeFileRpt.setHandleCount(handleCount);
            tradeFileRpts.add(tradeFileRpt);
        }
        return tradeFileRpts;
    }
    @Override
    public List<TradeFileRpt> getWrongfulCountList(){
        String hql="select a.file_type fileType,sum(a.wrongful_count) wrongfulCount from trade_file_rpt a group by a.file_type order by wrongfulCount desc";
        List<Map<String,Object>> list = hibernateDao.selectBySql(hql);
        List<TradeFileRpt> tradeFileRpts = new ArrayList<>();
        for (Map<String, Object> stringObjectMap : list) {
            String fileType = String.valueOf(stringObjectMap.get("fileType"));
            int wrongfulCount = Integer.valueOf(String.valueOf(stringObjectMap.get("wrongfulCount")));
            TradeFileRpt tradeFileRpt = new TradeFileRpt();
            tradeFileRpt.setFileType(fileType);
            tradeFileRpt.setWrongfulCount(wrongfulCount);
            tradeFileRpts.add(tradeFileRpt);
        }
        return tradeFileRpts;
    }
    @Override
    public List<TradeFileRpt> getDuplicateCountList(){
        String hql="select a.file_type fileType,sum(a.duplicate_count) duplicateCount from trade_file_rpt a group by a.file_type order by duplicateCount desc";
        List<Map<String,Object>> list = hibernateDao.selectBySql(hql);
        List<TradeFileRpt> tradeFileRpts = new ArrayList<>();
        for (Map<String, Object> stringObjectMap : list) {
            String fileType = String.valueOf(stringObjectMap.get("fileType"));
            int duplicateCount = Integer.valueOf(String.valueOf(stringObjectMap.get("duplicateCount")));
            TradeFileRpt tradeFileRpt = new TradeFileRpt();
            tradeFileRpt.setFileType(fileType);
            tradeFileRpt.setDuplicateCount(duplicateCount);
            tradeFileRpts.add(tradeFileRpt);
        }
        return tradeFileRpts;
    }
    @Override
    public List<TradeFileRpt> getNoPretreatmentCountList(){
        String hql="select a.file_type fileType,sum(a.no_pretreatment_count) noPretreatmentCount from trade_file_rpt a group by a.file_type order by noPretreatmentCount desc";
        List<Map<String,Object>> list = hibernateDao.selectBySql(hql);
        List<TradeFileRpt> tradeFileRpts = new ArrayList<>();
        for (Map<String, Object> stringObjectMap : list) {
            String fileType = String.valueOf(stringObjectMap.get("fileType"));
            int noPretreatmentCount = Integer.valueOf(String.valueOf(stringObjectMap.get("noPretreatmentCount")));
            TradeFileRpt tradeFileRpt = new TradeFileRpt();
            tradeFileRpt.setFileType(fileType);
            tradeFileRpt.setNoPretreatmentCount(noPretreatmentCount);
            tradeFileRpts.add(tradeFileRpt);
        }
        return tradeFileRpts;
    }
    @Override
    public TradeFileRpt getOne(long id) {
        TradeFileRpt tradeFileRpt = hibernateDao.queryById(TradeFileRpt.class, id);
        return tradeFileRpt;
    }
    @Override
    public void insert(TradeFileRpt vo) {
        hibernateDao.save(vo);
    }
    @Override
    public void insertBatch(List<TradeFileRpt> vos) {
        if (vos != null && vos.size() > 0){
            hibernateDao.batchInsert(vos,1000);
        }
    }
    @Override
    public void delete(long id) {
        hibernateDao.delete(TradeFileRpt.class,id);
    }
    @Override
    public void update(TradeFileRpt vo) {
        hibernateDao.update(vo);
    }
    @Override
    public List<TradeFileRpt> packageTradeFileRptVOs(String balanceWaterNo) {
        Map<String, Object> params = new HashMap<>();
        params.put("balanceWaterNo",balanceWaterNo);
        List<TradeFileRpt> tradeFileRptVOs = getTradeFileRptsFormLogFile(params);
        if (tradeFileRptVOs == null || tradeFileRptVOs.size() == 0){
            return null;
        }
        Map<String, Object> transferTableMap = new HashMap<>();
        transferTableMap.put("stat",1);
        transferTableMap.put("tableType","BALANCE01");
        List<TransferTable> transferTables = transferTableService.getList(transferTableMap);
        for (TradeFileRpt tradeFileRptVO : tradeFileRptVOs) {
            params.put("fileType",tradeFileRptVO.getFileType());
            int handleCount=0, wrongfulCount = 0,duplicateCount = 0,noPretreatmentCount = 0;
            noPretreatmentCount = getNoPretreatmentCount(params);
            for (TransferTable transferTable : transferTables) {
                params.put("tableName",transferTable.getExpTableName());
                List<Map<String, Object>> errorCountList = null;
                try {
                    errorCountList = getErrorCount(params);
                } catch (Exception e) {
                    e.printStackTrace();
                    continue;
                }
                for (Map<String, Object> errorCountMap : errorCountList) {
                    Object errorCode = errorCountMap.get("errCode");
                    int count = Integer.valueOf(errorCountMap.get("count")+"");
                    //重复的
                    if ("F0".equals(errorCode)){
                        duplicateCount+=count;
                    }else{
                        wrongfulCount+=count;
                    }
                }
            }
            //这里接入新框架时候需要改造
            tradeFileRptVO.setWrongfulCount(wrongfulCount);
            tradeFileRptVO.setDuplicateCount(duplicateCount);
            tradeFileRptVO.setNoPretreatmentCount(noPretreatmentCount);
        }
        return  tradeFileRptVOs;
    }

    @Override
    public PageUtil getPageList(TradeFileRpt param, PageUtil pageUtil) {
        //查询参数构造
        List<Criterion> paramList = new ArrayList<Criterion>();
        if(!StringUtil.isEmpty(param.getFileType())){
            paramList.add(Restrictions.eq("fileType", param.getFileType()));
        }
        List<Order> orders = new ArrayList<>();
        orders.add(Order.desc("balanceWaterNo"));
        //获取总记录数
        int count = this.hibernateDao.getCount(TradeFileRpt.class, paramList, null);
        log.debug("获取记录数:"+count);
        pageUtil.setTotalRecordNumber(count);
        //计算分页数据
        if(pageUtil.fetchPaging()){
            //开始获取分页数据
            List<TradeFileRpt> resultList = this.hibernateDao.findByPage(TradeFileRpt.class, paramList, (pageUtil.getPage()-1)*pageUtil.getRows(), pageUtil.getRows(), orders, null);
            if(resultList != null && resultList.size() > 0) {
                pageUtil.setResultList(resultList);
            }
        }
        log.debug("获取结果总数:"+((pageUtil.getResultList()!=null&&pageUtil.getResultList().size()>0)?pageUtil.getResultList().size():0));
        return pageUtil;
    }

    /**
     *获取错误码和错误数据的集合
     * @param params
     * @return
     */
    private List<Map<String, Object>> getErrorCount(Map<String, Object> params) {
        List<Map<String, Object>> errorCountList;
        String hql="SELECT a.ERR_CODE errCode,count(1) count from "+params.get("tableName")+" a\n" +
                "         LEFT JOIN  ST_LOG_FILE_dt b\n" +
                "         ON a.FILE_NAME = b.FILE_NAME\n" +
                "         WHERE a.balance_water_no = "+params.get("balanceWaterNo")+" AND  b.FILE_TYPE = '"+params.get("fileType")+"'\n" +
                "        group by a.ERR_CODE";
        errorCountList = hibernateDao.selectBySql(hql);
        return errorCountList;
    }

    /**
     *获取无法处理数据
     * @param params
     * @return
     */
    private int getNoPretreatmentCount(Map<String, Object> params) {
        int noPretreatmentCount;
        String hql="SELECT count(1) count FROM  st_error_record_dt a\n" +
                "         LEFT JOIN  ST_LOG_FILE_dt b\n" +
                "         ON a.FILE_NAME = b.FILE_NAME\n" +
                "        WHERE a.balance_water_no = "+params.get("balanceWaterNo")+" AND b.FILE_TYPE = '"+params.get("fileType")+"'";
        List<Map<String,Object>> list = hibernateDao.selectBySql(hql);
        Object count = list.get(0).get("count");
        return Integer.valueOf(count.toString());
    }

    /**
     * 根据log_file表汇总tradeFileRpt数据
     * @param params
     * @return
     */
    private List<TradeFileRpt> getTradeFileRptsFormLogFile(Map<String, Object> params) {
        String hql ="select  a.balance_water_no balanceWaterNo,a.file_type fileType,count(distinct a.file_name) fileCount\n" +
                "            from st_log_file_dt a\n" +
                "         where a.balance_water_no = " +params.get("balanceWaterNo")+
                "         group by a.file_type,a.BALANCE_WATER_NO\n" +
                "         ORDER BY a.BALANCE_WATER_NO,a.file_type";
        List<Map<String,Object>> list = hibernateDao.selectBySql(hql);
        ArrayList<TradeFileRpt> tradeFileRpts = new ArrayList<>();
        for (Map<String, Object> stringObjectMap : list) {
            TradeFileRpt tradeFileRpt = new TradeFileRpt();
            tradeFileRpt.setBalanceWaterNo(String.valueOf(stringObjectMap.get("balanceWaterNo")));
            tradeFileRpt.setFileType(String.valueOf(stringObjectMap.get("fileType")));
            tradeFileRpt.setFileCount(Integer.valueOf(String.valueOf(stringObjectMap.get("fileCount"))));
            tradeFileRpts.add(tradeFileRpt);
        }
        return tradeFileRpts;
    }

}
