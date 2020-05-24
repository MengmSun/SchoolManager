package ssm.switchmajor.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ssm.student.entity.Student;
import ssm.student.service.StudentService;
import ssm.switchmajor.entity.SwitchMajor;
import ssm.switchmajor.service.SwitchMajorService;
import ssm.utils.StringUtil;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/switch_major")
public class SwitchMajorController{

    @Autowired
    private SwitchMajorService switchMajorService;
    @Autowired
    private StudentService studentService;

    @GetMapping("/list")
    public ModelAndView list(ModelAndView model){
        model.setViewName("switch_major/switch_major_list");

        return model;
    }

    @PostMapping("/get_list")
    @ResponseBody
    public Map<String,Object> getList(
            @RequestParam(value = "id",required = false,defaultValue = "") String id,
            @RequestParam(value = "studentId",required = false,defaultValue = "")String studentId,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("id","%"+id+"%");
        queryMap.put("studentId","%"+studentId+"%");
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("rows",switchMajorService.findList(queryMap));
        ret.put("total",switchMajorService.getTotal(queryMap));

        return ret;
    }
    //在学籍异动页面的修改
    @PostMapping("/edit")
    @ResponseBody
    public Map<String,String> edit(SwitchMajor switchMajor){
        Map<String,String> ret = new HashMap<String,String>();
        //只要修改转专业信息，则无论修改前修改后所有项目实际上都不能为空（虽然数据库的键可以是空）但是理论上只要插入了一条就一定是所有信息完整的
        //编辑了转专业信息之后，对应的学生的信息clazzId也会修改，在数据库完成
        //转专业信息中的ID和studentId均不能修改；要修改ID应该删除这一条重新添加
        if(StringUtils.isEmpty(switchMajor.getId())){
            ret.put("type","error");
            ret.put("msg","转专业ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(switchMajor.getStudent().getStudentId())){
            ret.put("type","error");
            ret.put("msg","学生ID不能为空！");
            return ret;
        }
        //根据studentId找到对应的student并且设置
        try{
            Student student = studentService.findStudent(switchMajor.getStudent().getStudentId());
            if(student==null){
                ret.put("type","error");
                ret.put("msg","学生ID不存在！");
                return ret;
            }
            else{
                switchMajor.setStudent(student);
            }
        }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","学生ID不存在！");
            return ret;
        }
        if(StringUtils.isEmpty(switchMajor.getMember())){
            ret.put("type","error");
            ret.put("msg","转专业团员信息不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(switchMajor.getDate())){
            ret.put("type","error");
            ret.put("msg","转专业时间不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(switchMajor.getLastClazzId())){
            ret.put("type","error");
            ret.put("msg","原班级不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(switchMajor.getNowClazzId())){
            ret.put("type","error");
            ret.put("msg","现班级不能为空！");
            return ret;
        }
        //现班级和原班级ID不能相同
        if(switchMajor.getNowClazzId().equals(switchMajor.getLastClazzId())){
            ret.put("type","error");
            ret.put("msg","转专业前后班级ID不能相同！");
            return ret;
        }
        try{
            if(switchMajorService.edit(switchMajor)<=0){
                ret.put("type","error");
                ret.put("msg","编辑转专业信息失败！");
                return ret;
            }
        }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","编辑转专业信息失败！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","编辑转专业信息成功！");
        return ret;
    }
    @PostMapping("add")
    @ResponseBody
    public Map<String,Object> add(SwitchMajor switchMajor){
        Map<String,Object> ret = new HashMap<String,Object>();
        //只要添加转专业信息，则所有项目实际上都不能为空（虽然数据库的键可以是空）但是理论上只要插入了一条就一定是所有信息完整的
        //添加了转专业信息之后，对应的学生的信息clazzId也会修改，在数据库完成
        if(StringUtils.isEmpty(switchMajor.getId())){
            ret.put("type","error");
            ret.put("msg","转专业ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(switchMajor.getStudent().getStudentId())){
            ret.put("type","error");
            ret.put("msg","学生ID不能为空！");
            return ret;
        }
        //根据studentId找到对应的student并且设置
        try{
            Student student = studentService.findStudent(switchMajor.getStudent().getStudentId());
            if(student==null){
                ret.put("type","error");
                ret.put("msg","学生ID不存在！");
                return ret;
            }
            else{
                switchMajor.setStudent(student);
            }
        }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","学生ID不存在！");
            return ret;
        }

        if(StringUtils.isEmpty(switchMajor.getMember())){
            ret.put("type","error");
            ret.put("msg","转专业团员信息不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(switchMajor.getDate())){
            ret.put("type","error");
            ret.put("msg","转专业时间不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(switchMajor.getLastClazzId())){
            ret.put("type","error");
            ret.put("msg","原班级不能为空！");
            return ret;
        }
        //检查原班级ID是否正确
        if(!switchMajor.getLastClazzId().equals(switchMajor.getStudent().getStudentClazzId())){
            ret.put("type","error");
            ret.put("msg","原班级信息错误！");
            return ret;
        }


        if(StringUtils.isEmpty(switchMajor.getNowClazzId())){
            ret.put("type","error");
            ret.put("msg","现班级不能为空！");
            return ret;
        }
        //现班级和原班级ID不能相同
        if(switchMajor.getNowClazzId().equals(switchMajor.getLastClazzId())){
            ret.put("type","error");
            ret.put("msg","转专业前后班级ID不能相同！");
            return ret;
        }
        ret.put("switchMajor",switchMajor);
        //try{
            if(switchMajorService.add(switchMajor)<=0){
                ret.put("type","error");
                ret.put("msg","添加转专业信息失败！");
                return ret;
            }
       /* }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","添加转专业信息失败！");
            return ret;
        }*/
        ret.put("type","success");
        ret.put("msg","添加转专业信息成功！");
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


        try{
            if(switchMajorService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
                ret.put("type","error");
                ret.put("msg","删除数据失败！");
                return ret;
            }
        }catch(Exception e){
            ret.put("type","error");
            ret.put("msg","存在关联信息，请勿删除！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","删除数据成功！");
        return ret;
    }
    @PostMapping("/find")
    @ResponseBody
    public Map<String,Object> find(
            @RequestParam(value = "studentId",required = true,defaultValue = "")String studentId
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        SwitchMajor switchMajor = switchMajorService.findRecord(studentId);
        if(switchMajor==null){
            ret.put("status","no");
            ret.put("msg","无转专业记录！");
            return ret;
        }
        ret.put("status","yes");
        ret.put("msg","有转专业记录！");
        return ret;
    }

}

