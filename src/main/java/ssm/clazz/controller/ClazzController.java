package ssm.clazz.controller;

import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ssm.clazz.entity.Clazz;
import ssm.clazz.service.ClazzService;
import ssm.page.Page;
import ssm.profession.service.ProfessionService;
import ssm.utils.StringUtil;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/clazz")
public class ClazzController {

    @Autowired
    private ClazzService clazzService;
    @Autowired
    private ProfessionService professionService;

    @GetMapping("/list")
    public ModelAndView list(ModelAndView model) {
        model.setViewName("clazz/clazz_list");
        //List<Clazz> findAll = clazzService.findAll();
        //model.addObject("clazzList", findAll);
        //model.addObject("clazzListJson", JSONArray.fromObject(findAll));
        return model;
    }

    @PostMapping("/get_list")
    @ResponseBody
    public Map<String, Object> getList(
            @RequestParam(value = "clazzId", required = false, defaultValue = "") String clazzId,
            @RequestParam(value = "clazzName", required = false, defaultValue = "") String clazzName,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ) {
        Map<String, Object> ret = new HashMap<String, Object>();
        Map<String, Object> queryMap = new HashMap<String, Object>();
        queryMap.put("clazzId", "%" + clazzId + "%");
        queryMap.put("clazzName", "%" + clazzName + "%");
        queryMap.put("offset", (page-1)*limit);
        queryMap.put("pageSize", page*limit);
        ret.put("rows", clazzService.findList(queryMap));
        ret.put("total", clazzService.getTotal(queryMap));
        //ret.put("rowAll", clazzService.findAll());
        //ret.put("qm", queryMap);
        return ret;
    }

    @PostMapping("/edit")
    @ResponseBody
    public Map<String, String> edit(Clazz clazz) {
        Map<String, String> ret = new HashMap<String, String>();

        if (StringUtils.isEmpty(clazz.getClazzId())) {
            ret.put("type", "error");
            ret.put("msg", "班级ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(clazz.getClazzName())){
            ret.put("type","error");
            ret.put("msg","班级名称不能为空！");
            return ret;
        }
        //日期有默认值，这段可以去掉
        if(StringUtils.isEmpty(clazz.getClazzDate())){
            clazz.setClazzDate(null);
        }
        //年级号有默认值,这段可以去掉
        if(StringUtils.isEmpty(clazz.getClazzGrade())){
            clazz.setClazzGrade(null);
        }
        if(StringUtils.isEmpty(clazz.getTeacherId())){
            clazz.setTeacherId(null);
        }
        if(StringUtils.isEmpty(clazz.getProfessionId())){
            clazz.setProfessionId(null);
        }
        /*if (clazzService.edit(clazz) <= 0) {
            ret.put("type", "error");
            ret.put("msg", "班级信息修改失败！");
            return ret;
        }*/
        try{
            if (clazzService.edit(clazz) <= 0) {
                ret.put("type", "error");
                ret.put("msg", "班级信息修改失败！");
                return ret;
            }
        }catch (Exception e){
            if (clazzService.edit(clazz) <= 0) {
                ret.put("type", "error");
                ret.put("msg", "班级信息修改失败！");
                return ret;
            }
        }
        ret.put("type", "success");
        ret.put("msg", "班级信息修改成功！");
        return ret;
    }


    @PostMapping("/add")
    @ResponseBody
    public Map<String,String> add(Clazz clazz){
        Map<String,String> ret = new HashMap<String,String> ();
        if(StringUtils.isEmpty(clazz.getClazzId())){
            ret.put("type","error");
            ret.put("msg","班级ID不能为空！");
            return ret;
        }
        //教师ID为外键，可以为空，将空字符串转换为NULL插入数据库
        if(StringUtils.isEmpty(clazz.getClazzName())){
            ret.put("type","error");
            ret.put("msg","班级名称不能为空！");
            return ret;
        }
        //日期有默认值，这段可以去掉
        if(StringUtils.isEmpty(clazz.getClazzDate())){
            clazz.setClazzDate(null);
        }
        //年级号有默认值,这段可以去掉
        if(StringUtils.isEmpty(clazz.getClazzGrade())){
            clazz.setClazzGrade(null);
        }
        if(StringUtils.isEmpty(clazz.getTeacherId())){
            clazz.setTeacherId(null);
        }
        if(StringUtils.isEmpty(clazz.getProfessionId())){
            clazz.setProfessionId(null);
        }
        //添加的班级的专业和班主任ID不存在
        /*if(professionService.ifExist(clazz.getProfessionId())==0){
            ret.put("type","error");
            ret.put("msg","添加的专业ID不存在！");
            return ret;
        }*/

        /*if(clazzService.add(clazz)<=0){
            ret.put("type","error");
            ret.put("msg","班级添加失败！");
            return ret;
        }*/
        try{
            if(clazzService.add(clazz)<=0){
                ret.put("type","error");
                ret.put("msg","班级添加失败！");
                return ret;
            }
        }catch (Exception e){
            if(clazzService.add(clazz)<=0){
                ret.put("type","error");
                ret.put("msg","班级添加失败！");
                return ret;
            }
        }
        ret.put("type","success");
        ret.put("msg","班级添加成功！");
        return ret;
    }

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
        /*for (String clazzId:ids
             ) {
            if(studentService.ifExist(clazzId)!=0){
                ret.put("type","error");
                ret.put("msg","班级存在关联学生，删除数据失败！");
                return ret;
            }
            //班主任ID查询

        }*/
        /*if(clazzService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
            ret.put("type","error");
            ret.put("msg","删除数据失败！");
            return ret;
        }*/
        try{
            if(clazzService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
                ret.put("type","error");
                ret.put("msg","删除数据失败！");
                return ret;
            }
        }catch(Exception e){
            ret.put("type","error");
            ret.put("msg","班级存在关联信息，请勿删除！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","班级删除成功！");
        return ret;
    }


}


