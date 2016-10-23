package com.fionapet.business.util;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springside.modules.mapper.JsonMapper;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by baiqw on 15/11/20.
 */
public class ExcelUtils {
    private static Logger logger = LoggerFactory.getLogger(ExcelUtils.class);
    private static JsonMapper jsonMapper = new JsonMapper();

    public static List<List<String>> toList(InputStream stream, int sheetIndex){
        List<List<String>> result = new ArrayList<List<String>>();

        Workbook rwb = null;
        Cell cell = null;

        //获取Excel文件对象
        try {
            rwb = Workbook.getWorkbook(stream);

            //获取文件的指定工作表 默认的第一个
            Sheet sheet = rwb.getSheet(sheetIndex);

            //行数(表头的目录不需要，从1开始)
            for(int i=1; i<sheet.getRows(); i++){
                //创建一个数组 用来存储每一列的值
                List<String> str = new ArrayList<String>(sheet.getColumns());

                if (StringUtils.isEmpty(sheet.getCell(0, i).getContents())){
                    break;
                }

                //列数
                for(int j=0; j<sheet.getColumns(); j++){
                    //获取第i行，第j列的值
                    cell = sheet.getCell(j,i);
                    str.add(cell.getContents());
                }
                //把刚获取的列存入list
                result.add(str);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (BiffException e) {
            e.printStackTrace();
        }finally {
            if(rwb != null) {
                rwb.close();
            }
        }

//        logger.debug("toList:{}", result);

        return result;
    }

    public static List<List<String>> toList(InputStream stream){
        return toList(stream, 0);
    }
}
