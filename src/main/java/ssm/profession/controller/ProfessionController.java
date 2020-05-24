package ssm.profession.controller;


import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ssm.clazz.service.ClazzService;
import ssm.page.Page;
import ssm.profession.entity.Profession;
import ssm.profession.service.ProfessionService;
import ssm.utils.StringUtil;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/profession")
public class ProfessionController {

    @Autowired
    private ProfessionService professionService;
    @Autowired
    private ClazzService clazzService;
    //专业列表页
    @GetMapping("/list")
    public ModelAndView list(ModelAndView model){
        model.setViewName("profession/profession_list");
        //List<Profession> findAll = professionService.findAll();
        //model.addObject("professionList",findAll);
        //model.addObject("professionListJson", JSONArray.fromObject(findAll));
        return model;
    }

    //获取列表
    //实现对专业名称和ID的模糊查询
    @PostMapping("/get_list")
    @ResponseBody
    public Map<String,Object> getList(
            @RequestParam(value="professionId",required = false,defaultValue = "")String professionId,
            @RequestParam(value="professionName",required = false,defaultValue = "")String professionName,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("professionId","%"+professionId+"%");
        queryMap.put("professionName","%"+professionName+"%");
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("rows",professionService.findList(queryMap));
        ret.put("total",professionService.getTotal(queryMap));
        //ret.put("rowAll",professionService.findAll());
        //ret.put("qm",queryMap);
        return ret;
    }

    @PostMapping("/edit")
    @ResponseBody
    public Map<String,String> edit(Profession profession){
        Map<String,String> ret = new HashMap<String,String>();
        if(StringUtils.isEmpty(profession.getProfessionId())){
            ret.put("type","error");
            ret.put("msg","专业ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(profession.getProfessionName())){
            ret.put("type","error");
            ret.put("msg","专业名称不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(profession.getProfessionAddress())){
            profession.setProfessionAddress(null);
        }
        if(StringUtils.isEmpty(profession.getCampusId())){
            profession.setCampusId(null);
        }
        if(StringUtils.isEmpty(profession.getTeacherId())){
            profession.setTeacherId(null);
        }
        /*if(professionService.edit(profession)<=0){
            ret.put("type","error");
            ret.put("msg","专业信息修改失败！");
            return ret;
        }*/
        try{
            if(professionService.edit(profession)<=0){
                ret.put("type","error");
                ret.put("msg","专业信息修改失败！");
                return ret;
            }
        }catch (Exception e){
            if(professionService.edit(profession)<=0){
                ret.put("type","error");
                ret.put("msg","专业信息修改失败！");
                return ret;
            }
        }
        ret.put("type","success");
        ret.put("msg","专业信息修改成功！");
        return ret;
    }

    @PostMapping("/add")
    @ResponseBody
    public Map<String,String> add(Profession profession){
        Map<String,String> ret = new HashMap<String,String>();
        if(StringUtils.isEmpty(profession.getProfessionId())){
            ret.put("type","error");
            ret.put("msg","专业ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(profession.getProfessionName())){
            ret.put("type","error");
            ret.put("msg","专业名称不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(profession.getProfessionAddress())){
            profession.setProfessionAddress(null);
        }
        if(StringUtils.isEmpty(profession.getCampusId())){
            profession.setCampusId(null);
        }
        if(StringUtils.isEmpty(profession.getTeacherId())){
            profession.setTeacherId(null);
        }
        /*if(professionService.add(profession)<=0){
            ret.put("type","error");
            ret.put("msg","专业添加失败！");
            return ret;
        }*/

        try{
            if(professionService.add(profession)<=0){
                ret.put("type","error");
                ret.put("msg","专业添加失败！");
                return ret;
            }

        }catch(Exception e){
            if(professionService.add(profession)<=0){
                ret.put("type","error");
                ret.put("msg","专业添加失败！");
                return ret;
            }
        }
        ret.put("type","success");
        ret.put("msg","专业添加成功！");
        return ret;
    }

    //删除可以批量

    @PostMapping("/delete")
    @ResponseBody
    public Map<String,String> delete(
            @RequestParam(value="ids[]",required = true)String[] ids
    ){
        Map<String,String> ret  =  new HashMap<String,String>();
        if(ids == null || ids.length==0){
            ret.put("type","error");
            ret.put("msg","请选择需要删除的数据！");
            return ret;
        }

        /*for (String professionId:ids
             ) {
            if(clazzService.ifProfessionExist(professionId)!=0){
                ret.put("type","error");
                ret.put("msg","专业存在关联班级，删除数据失败！");
                return ret;
            }
        }

        if(professionService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
            ret.put("type","error");
            ret.put("msg","删除数据失败！");
            return ret;
        }*/
        try{
            if(professionService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
                ret.put("type","error");
                ret.put("msg","删除数据失败！");
                return ret;
            }
        }catch(Exception e){
            ret.put("type","error");
            ret.put("msg","专业存在关联信息，请勿删除！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","专业删除成功！");
        return ret;
    }


}
