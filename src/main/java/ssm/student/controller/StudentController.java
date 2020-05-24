package ssm.student.controller;

import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import ssm.page.Page;
import ssm.student.entity.Student;
import ssm.student.service.StudentService;

import ssm.utils.StringUtil;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentService studentService;
    /*@Autowired
    private ClazzService clazzService;*/
    //应该还有一个Course

    @GetMapping("/list")
    public ModelAndView list(ModelAndView model){
        model.setViewName("student/student_list");
        //List<Student> findAll = studentService.findAll();
        //model.addObject("studentList",findAll);
        //model.addObject("studentListJson", JSONArray.fromObject(findAll));
        return model;
    }

    //获取列表
    @PostMapping("/get_list")
    @ResponseBody
    public Map<String,Object> getList(
            @RequestParam(value="studentId",required = false,defaultValue = "")String studentId,
            @RequestParam(value="studentName",required = false,defaultValue = "")String studentName,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("studentId","%"+studentId+"%");
        queryMap.put("studentName","%"+studentName+"%");
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("rows",studentService.findList(queryMap));
        ret.put("total",studentService.getTotal(queryMap));
        //ret.put("rowAll",studentService.findAll());
        //ret.put("qm",queryMap);
        return ret;
    }

    @PostMapping("/edit")
    @ResponseBody
    public Map<String,String> edit(Student student){
        Map<String,String> ret = new HashMap<String,String>();

        if(StringUtils.isEmpty(student.getStudentId())){
            ret.put("type","error");
            ret.put("msg","学生ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(student.getStudentPersonId())){
            ret.put("type","error");
            ret.put("msg","学生身份ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(student.getStudentName())){
            ret.put("type","error");
            ret.put("msg","学生姓名不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(student.getStudentCountry())){
            student.setStudentCountry(null);
        }
        if(StringUtils.isEmpty(student.getStudentPhoneNumber())){
            student.setStudentPhoneNumber(null);
        }
        if(StringUtils.isEmpty(student.getStudentAddress())){
            student.setStudentAddress(null);
        }
        if(StringUtils.isEmpty(student.getStudentPC())){
            student.setStudentPC(null);
        }
        if(StringUtils.isEmpty(student.getStudentEmail())){
            student.setStudentEmail(null);
        }
        if(StringUtils.isEmpty(student.getStudentClazzId())){
            student.setStudentClazzId(null);
        }
        /*if(studentService.edit(student)<=0){
            ret.put("type","error");
            ret.put("msg","学生信息修改失败！");
            return ret;
        }*/
        try{
            if(studentService.edit(student)<=0){
                ret.put("type","error");
                ret.put("msg","学生信息修改失败！");
                return ret;
            }
        }catch (Exception e){
            if(studentService.edit(student)<=0){
                ret.put("type","error");
                ret.put("msg","学生信息修改失败！");
                return ret;
            }
        }
        ret.put("type","success");
        ret.put("msg","学生信息修改成功！");
        return ret;
    }

    @PostMapping("/add")
    @ResponseBody
    public Map<String,String> add(Student student){
        Map<String,String> ret = new HashMap<String,String>();
        if(StringUtils.isEmpty(student.getStudentId())){
            ret.put("type","error");
            ret.put("msg","学生ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(student.getStudentPersonId())){
            ret.put("type","error");
            ret.put("msg","学生身份ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(student.getStudentName())){
            ret.put("type","error");
            ret.put("msg","学生姓名不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(student.getStudentCountry())){
            student.setStudentCountry(null);
        }
        if(StringUtils.isEmpty(student.getStudentPhoneNumber())){
            student.setStudentPhoneNumber(null);
        }
        if(StringUtils.isEmpty(student.getStudentAddress())){
            student.setStudentAddress(null);
        }
        if(StringUtils.isEmpty(student.getStudentPC())){
            student.setStudentPC(null);
        }
        if(StringUtils.isEmpty(student.getStudentEmail())){
            student.setStudentEmail(null);
        }
        if(StringUtils.isEmpty(student.getStudentClazzId())){
            student.setStudentClazzId(null);
        }
        /*if(studentService.add(student)<=0){
            ret.put("type","error");
            ret.put("msg","学生添加失败！");
            return ret;
        }*/
        try{
            if(studentService.add(student)<=0){
                ret.put("type","error");
                ret.put("msg","学生添加失败！");
                return ret;
            }
        }catch(Exception e){
            if(studentService.add(student)<=0){
                ret.put("type","error");
                ret.put("msg","学生添加失败！");
                return ret;
            }
        }
        ret.put("type","success");
        ret.put("msg","学生添加成功！");
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

        /*for (String studentId:ids
        ) {
            if(recordService.ifStudentExist(studentId)!=0){
                ret.put("type","error");
                ret.put("msg","学生存在关联信息，删除数据失败！");
                return ret;
            }
        }

        if(studentService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
            ret.put("type","error");
            ret.put("msg","删除数据失败！");
            return ret;
        }*/
        try{
            if(studentService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
                ret.put("type","error");
                ret.put("msg","删除数据失败！");
                return ret;
            }
        }catch(Exception e){
            ret.put("type","error");
            ret.put("msg","学生存在关联信息，请勿删除！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","学生删除成功！");
        return ret;
    }


}



