package ssm.downgrade.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ssm.downgrade.entity.DownGrade;
import ssm.downgrade.service.DownGradeService;
import ssm.student.entity.Student;
import ssm.student.service.StudentService;
import ssm.utils.StringUtil;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/down_grade")
public class DownGradeController {

    @Autowired
    private DownGradeService downGradeService;
    @Autowired
    private StudentService studentService;

    @GetMapping("/list")
    public ModelAndView list(ModelAndView model){
        model.setViewName("down_grade/down_grade_list");

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
        ret.put("rows",downGradeService.findList(queryMap));
        ret.put("total",downGradeService.getTotal(queryMap));

        return ret;
    }
    //在学籍异动页面的修改
    @PostMapping("/edit")
    @ResponseBody
    public Map<String,Object> edit(DownGrade downGrade){
        Map<String,Object> ret = new HashMap<String,Object>();
        //只要修改降级信息，则无论修改前修改后所有项目实际上都不能为空（虽然数据库的键可以是空）但是理论上只要插入了一条就一定是所有信息完整的
        //编辑了降级信息之后，对应的学生的信息clazzId也会修改，在数据库完成
        //降级信息中的ID和studentId均不能修改；要修改ID应该删除这一条重新添加
        if(StringUtils.isEmpty(downGrade.getId())){
            ret.put("type","error");
            ret.put("msg","降级ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(downGrade.getStudent().getStudentId())){
            ret.put("type","error");
            ret.put("msg","学生ID不能为空！");
            return ret;
        }
        //根据studentId找到对应的student并且设置
        try{
            Student student = studentService.findStudent(downGrade.getStudent().getStudentId());
            if(student==null){
                ret.put("type","error");
                ret.put("msg","学生ID不存在！");
                return ret;
            }
            else{
                downGrade.setStudent(student);
            }
        }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","学生ID不存在！");
            return ret;
        }

        if(StringUtils.isEmpty(downGrade.getCause())){
            ret.put("type","error");
            ret.put("msg","降级原因不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(downGrade.getDate())){
            ret.put("type","error");
            ret.put("msg","降级时间不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(downGrade.getLastClazzId())){
            ret.put("type","error");
            ret.put("msg","原班级不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(downGrade.getNowClazzId())){
            ret.put("type","error");
            ret.put("msg","现班级不能为空！");
            return ret;
        }
        //现班级和原班级ID不能相同
        if(downGrade.getNowClazzId().equals(downGrade.getLastClazzId())){
            ret.put("type","error");
            ret.put("msg","降级前后班级ID不能相同！");
            return ret;
        }
        try{
            if(downGradeService.edit(downGrade)<=0){
                ret.put("type","error");
                ret.put("msg","编辑降级信息失败！");
                return ret;
            }
        }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","编辑降级信息失败！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","编辑降级信息成功！");
       return ret;
    }
    @PostMapping("add")
    @ResponseBody
    public Map<String,Object> add(DownGrade downGrade){
        Map<String,Object> ret = new HashMap<String,Object>();
        //只要添加降级信息，则所有项目实际上都不能为空（虽然数据库的键可以是空）但是理论上只要插入了一条就一定是所有信息完整的
        //添加了降级信息之后，对应的学生的信息clazzId也会修改，在数据库完成
        if(StringUtils.isEmpty(downGrade.getId())){
            ret.put("type","error");
            ret.put("msg","降级ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(downGrade.getStudent().getStudentId())){
            ret.put("type","error");
            ret.put("msg","学生ID不能为空！");
            return ret;
        }
        //根据studentId找到对应的student并且设置
        try{
            Student student = studentService.findStudent(downGrade.getStudent().getStudentId());
            if(student==null){
                ret.put("type","error");
                ret.put("msg","学生ID不存在！");
                return ret;
            }
            else{
                downGrade.setStudent(student);
            }
        }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","学生ID不存在！");
            return ret;
        }

        if(StringUtils.isEmpty(downGrade.getCause())){
            ret.put("type","error");
            ret.put("msg","降级原因不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(downGrade.getDate())){
            ret.put("type","error");
            ret.put("msg","降级时间不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(downGrade.getLastClazzId())){
            ret.put("type","error");
            ret.put("msg","原班级不能为空！");
            return ret;
        }
        //检查原班级ID是否正确
        if(!downGrade.getLastClazzId().equals(downGrade.getStudent().getStudentClazzId())){
            ret.put("type","error");
            ret.put("msg","原班级信息错误！");
            return ret;
        }

        if(StringUtils.isEmpty(downGrade.getNowClazzId())){
            ret.put("type","error");
            ret.put("msg","现班级不能为空！");
            return ret;
        }
        //现班级和原班级ID不能相同
        if(downGrade.getNowClazzId().equals(downGrade.getLastClazzId())){
            ret.put("type","error");
            ret.put("msg","降级前后班级ID不能相同！");
            return ret;
        }
        ret.put("downGrade",downGrade);
        try{
            if(downGradeService.add(downGrade)<=0){
                ret.put("type","error");
                ret.put("msg","添加降级信息失败！");
                return ret;
            }
        }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","添加降级信息失败！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","添加降级信息成功！");
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
            if(downGradeService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
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
        DownGrade downGrade = downGradeService.findRecord(studentId);
        if(downGrade==null){
            ret.put("status","no");
            ret.put("msg","无降级记录！");
            return ret;
        }
        ret.put("status","yes");
        ret.put("msg","有降级记录！");
        return ret;
    }

}
