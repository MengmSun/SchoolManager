package ssm.teacher.controller;

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
import ssm.teacher.entity.Teacher;
import ssm.teacher.service.TeacherService;
import ssm.utils.StringUtil;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;
    @Autowired
    private ClazzService clazzService;
    //应该还有一个Course

    @GetMapping("/list")

    public ModelAndView list(ModelAndView model){
        model.setViewName("teacher/teacher_list");
        //List<Teacher> findAll = teacherService.findAll();
        //model.addObject("teacherList",findAll);
        //model.addObject("teacherListJson", JSONArray.fromObject(findAll));
        return model;
    }

    //获取列表
    @PostMapping("/get_list")
    @ResponseBody
    public Map<String,Object> getList(
            @RequestParam(value="teacherId",required = false,defaultValue = "")String teacherId,
            @RequestParam(value="teacherName",required = false,defaultValue = "")String teacherName,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("teacherId","%"+teacherId+"%");
        queryMap.put("teacherName","%"+teacherName+"%");
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("rows",teacherService.findList(queryMap));
        ret.put("total",teacherService.getTotal(queryMap));
        //ret.put("rowAll",teacherService.findAll());
        //ret.put("qm",queryMap);
        return ret;
    }

    @PostMapping("/edit")
    @ResponseBody
    public Map<String,String> edit(Teacher teacher){
        Map<String,String> ret = new HashMap<String,String>();
        if(StringUtils.isEmpty(teacher.getTeacherId())){
            ret.put("type","error");
            ret.put("msg","教师ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(teacher.getTeacherPersonId())){
            ret.put("type","error");
            ret.put("msg","教师身份ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(teacher.getTeacherName())){
            ret.put("type","error");
            ret.put("msg","教师名字不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(teacher.getTeacherPhoneNumber())){
            teacher.setTeacherPhoneNumber(null);
        }
        if(StringUtils.isEmpty(teacher.getTeacherAddress())){
            teacher.setTeacherAddress(null);
        }
        if(StringUtils.isEmpty(teacher.getTeacherPC())){
            teacher.setTeacherPC(null);
        }
        if(StringUtils.isEmpty(teacher.getTeacherEmail())){
            teacher.setTeacherEmail(null);
        }
        if(StringUtils.isEmpty(teacher.getProfessionId())){
            teacher.setProfessionId(null);
        }

        /*if(teacherService.edit(teacher)<=0){
            ret.put("type","error");
            ret.put("msg","教师信息修改失败！");
            return ret;
        }*/
        try{
            if(teacherService.edit(teacher)<=0){
                ret.put("type","error");
                ret.put("msg","教师信息修改失败！");
                return ret;
            }
        }catch(Exception e){
            if(teacherService.edit(teacher)<=0){
                ret.put("type","error");
                ret.put("msg","教师信息修改失败！");
                return ret;
            }
        }
        ret.put("type","success");
        ret.put("msg","教师信息修改成功！");
        return ret;
    }

    @PostMapping("/add")
    @ResponseBody
    public Map<String,String> add(Teacher teacher){
        Map<String,String> ret = new HashMap<String,String>();
        if(StringUtils.isEmpty(teacher.getTeacherId())){
            ret.put("type","error");
            ret.put("msg","教师ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(teacher.getTeacherPersonId())){
            ret.put("type","error");
            ret.put("msg","教师身份ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(teacher.getTeacherName())){
            ret.put("type","error");
            ret.put("msg","教师名字不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(teacher.getTeacherPhoneNumber())){
            teacher.setTeacherPhoneNumber(null);
        }
        if(StringUtils.isEmpty(teacher.getTeacherAddress())){
            teacher.setTeacherAddress(null);
        }
        if(StringUtils.isEmpty(teacher.getTeacherPC())){
            teacher.setTeacherPC(null);
        }
        if(StringUtils.isEmpty(teacher.getTeacherEmail())){
            teacher.setTeacherEmail(null);
        }
        if(StringUtils.isEmpty(teacher.getProfessionId())){
            teacher.setProfessionId(null);
        }
        /*if(teacherService.add(teacher)<=0){
            ret.put("type","error");
            ret.put("msg","教师添加失败！");
            return ret;
        }*/
        try{
            if(teacherService.add(teacher)<=0){
                ret.put("type","error");
                ret.put("msg","教师添加失败！");
                return ret;
            }
        }catch(Exception e){
            if(teacherService.add(teacher)<=0){
                ret.put("type","error");
                ret.put("msg","教师添加失败！");
                return ret;
            }
        }
        ret.put("type","success");
        ret.put("msg","教师添加成功！");
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

        /*for (String teacherId:ids
        ) {
            if(clazzService.ifTeacherExist(teacherId)!=0){
                ret.put("type","error");
                ret.put("msg","教师存在关联班级，删除数据失败！");
                return ret;
            }
        }

        if(teacherService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
            ret.put("type","error");
            ret.put("msg","删除数据失败！");
            return ret;
        }*/
        try{
            if(teacherService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
                ret.put("type","error");
                ret.put("msg","删除数据失败！");
                return ret;
            }
        }catch(Exception e){
            ret.put("type","error");
            ret.put("msg","教师存在关联信息，请勿删除！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","教师删除成功！");
        return ret;
    }


}

