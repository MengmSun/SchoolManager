package ssm.utils;

import java.util.Date;
import java.util.List;

public class StringUtil {
    public static String joinString(List<String> list,String split){
        StringBuilder ret = new StringBuilder();
        for(String l:list){
            ret.append("'").append(l).append("'").append(split);
        }
        if(!"".equals(ret.toString())){
            ret = new StringBuilder(ret.substring(0, ret.length() - split.length()));
        }
        return ret.toString();
    }

    public static String generqteSn(String prefix,String suffix){
        return prefix + new Date().getTime() + suffix;
    }
}
