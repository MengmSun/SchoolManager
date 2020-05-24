package ssm.coursestart.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ssm.coursestart.entity.CourseStart;
import ssm.coursestart.service.CourseStartService;
import ssm.utils.StringUtil;

import java.sql.Date;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/course_start")
public class CourseStartController {
    @Autowired
    private CourseStartService courseStartService;

    @GetMapping("/list")
    public ModelAndView list(ModelAndView model){
        model.setViewName("course_start/course_start_list");
        return model;
    }
    //开课信息表
    //实现对课程ID和教师ID的模糊查询
    //返回的是List<CourseStart>，可根据需要选择显示值
    @PostMapping("/get_list")
    @ResponseBody
    public Map<String,Object> getList(
            @RequestParam(value = "courseId",required = false ,defaultValue = "") String courseId,
            @RequestParam(value = "teacherId",required = false,defaultValue = "") String teacherId,
            @RequestParam(value = "startDay",required = false,defaultValue = "0001-01-01") Date startDay,
            @RequestParam(value = "endDay",required = false,defaultValue = "9000-01-01") Date endDay,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("courseId","%"+courseId+"%");
        queryMap.put("teacherId","%"+teacherId+"%");
        queryMap.put("startDay",startDay);
        queryMap.put("endDay",endDay);
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("rows",courseStartService.findList(queryMap));
        ret.put("total",courseStartService.getTotal(queryMap));
        return ret;
    }
    //实现对教师ID对应的所有课程的查询
    //教师ID精确
    @PostMapping("/get_course_list")
    @ResponseBody
    public Map<String,Object> getCourseList(
            @RequestParam(value = "teacherId") String teacherId,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("teacherId",teacherId);
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("rows",courseStartService.findCourseList(queryMap));
        ret.put("total",courseStartService.getCourseTotal(queryMap));
        return ret;
    }

    //编辑开课信息
    @PostMapping("/edit")
    @ResponseBody
    public Map<String,Object> edit(CourseStart courseStart) {
        Map<String, Object> ret = new HashMap<String, Object>();
        //理论上，主键不可修改
        if (StringUtils.isEmpty(courseStart.getCourseStartCourseId())) {
            ret.put("type", "error");
            ret.put("msg", "课程ID不能为空！");
            return ret;
        }
        //季节和日期一定不为空
        //自定义时间记录方式，如果输入框为空返回值设置为空
        if (StringUtils.isEmpty(courseStart.getCourseStartTime())) {
            courseStart.setCourseStartTime(null);
        }
        if (StringUtils.isEmpty(courseStart.getCourseStartTeacherId())) {
            courseStart.setTeacher(null);
        }

        try {
            if (courseStartService.edit(courseStart) <= 0) {
                ret.put("type", "error");
                ret.put("msg", "开课信息修改失败！");
                return ret;
            }
        } catch (Exception e) {

            ret.put("type", "error");
            ret.put("msg", "开课信息修改失败！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","开课信息修改成功！");
        return ret;
    }

    @PostMapping("/add")
    @ResponseBody
    public Map<String,Object> add(CourseStart courseStart){
        Map<String, Object> ret = new HashMap<String, Object>();
        //理论上，主键不可修改
        if (StringUtils.isEmpty(courseStart.getCourseStartCourseId())) {
            ret.put("type", "error");
            ret.put("msg", "课程ID不能为空！");
            return ret;
        }
        //季节和日期一定不为空
        //自定义时间记录方式，如果输入框为空返回值设置为空
        if (StringUtils.isEmpty(courseStart.getCourseStartTime())) {
            courseStart.setCourseStartTime(null);
        }
        if (StringUtils.isEmpty(courseStart.getCourseStartTeacherId())) {
            courseStart.setTeacher(null);
        }

        try {
            if (courseStartService.add(courseStart) <= 0) {
                ret.put("type", "error");
                ret.put("msg", "开课信息添加失败！");
                return ret;
            }
        } catch (Exception e) {

            ret.put("type", "error");
            ret.put("msg", "开课信息添加失败！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","开课信息添加成功！");
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

        //try{
            if(courseStartService.delete(StringUtil.joinString(Arrays.asList(ids),","))<=0){
                ret.put("type","error");
                ret.put("msg","删除数据失败！");
                return ret;
            }
        /*}catch(Exception e){
            ret.put("type","error");
            ret.put("msg","课程存在关联信息，请勿删除！");
            return ret;
        }*/
        ret.put("type","success");
        ret.put("msg","课程删除成功！");
        return ret;
    }




}
