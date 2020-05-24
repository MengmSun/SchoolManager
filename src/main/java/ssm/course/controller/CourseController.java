package ssm.course.controller;


import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ssm.course.entity.Course;
import ssm.course.service.CourseService;
import ssm.page.Page;

import ssm.utils.StringUtil;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/course")
public class CourseController {
    @Autowired
    private CourseService courseService;

    @GetMapping("/list")
    public ModelAndView list(ModelAndView model){
        model.setViewName("course/course_list");

        return model;
    }

    //获取列表
    @PostMapping("/get_list")
    @ResponseBody
    public Map<String,Object> getList(
            @RequestParam(value="courseId",required = false,defaultValue = "")String courseId,
            @RequestParam(value="courseName",required = false,defaultValue = "")String courseName,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("courseId","%"+courseId+"%");
        queryMap.put("courseName","%"+courseName+"%");
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("rows",courseService.findList(queryMap));
        ret.put("total",courseService.getTotal(queryMap));
        //ret.put("rowAll",courseService.findAll());
        //ret.put("qm",queryMap);
        return ret;
    }

    @PostMapping("/edit")
    @ResponseBody
    public Map<String,String> edit(Course course){
        Map<String,String> ret = new HashMap<String,String>();
        if(StringUtils.isEmpty(course.getCourseId())){
            ret.put("type","error");
            ret.put("msg","课程ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(course.getCourseName())){
            ret.put("type","error");
            ret.put("msg","课程名称不能为空！");
            return ret;
        }
        //考核方式有默认值所以这段可去掉
        if(StringUtils.isEmpty(course.getCourseAssessType())){
            course.setCourseAssessType(null);
        }

        if(StringUtils.isEmpty(course.getProfessionId())){
            course.setProfessionId(null);
        }

        try{
            if(courseService.edit(course)<=0){
                ret.put("type","error");
                ret.put("msg","课程信息修改失败！");
                return ret;
            }
        }catch(Exception e){
            if(courseService.edit(course)<=0){
                ret.put("type","error");
                ret.put("msg","课程信息修改失败！");
                return ret;
            }
        }
        ret.put("type","success");
        ret.put("msg","课程信息修改成功！");
        return ret;
    }

    @PostMapping("/add")
    @ResponseBody
    public Map<String,String> add(Course course){
        Map<String,String> ret = new HashMap<String,String>();
        if(StringUtils.isEmpty(course.getCourseId())){
            ret.put("type","error");
            ret.put("msg","课程ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(course.getCourseName())){
            ret.put("type","error");
            ret.put("msg","课程名称不能为空！");
            return ret;
        }
        //考核方式有默认值所以这段可去掉
        if(StringUtils.isEmpty(course.getCourseAssessType())){
            course.setCourseAssessType(null);
        }

        if(StringUtils.isEmpty(course.getProfessionId())){
            course.setProfessionId(null);
        }

        try{
            if(courseService.add(course)<=0){
                ret.put("type","error");
                ret.put("msg","课程添加失败！");
                return ret;
            }
        }catch(Exception e){

                ret.put("type","error");
                ret.put("msg","课程添加失败！");
                return ret;

        }
        ret.put("type","success");
        ret.put("msg","课程添加成功！");
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

        try{
            if(courseService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
                ret.put("type","error");
                ret.put("msg","删除数据失败！");
                return ret;
            }
        }catch(Exception e){
            ret.put("type","error");
            ret.put("msg","课程存在关联信息，请勿删除！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","课程删除成功！");
        return ret;
    }
}
