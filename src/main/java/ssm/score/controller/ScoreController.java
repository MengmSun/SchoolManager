package ssm.score.controller;

import javafx.geometry.Pos;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ssm.score.entity.Score;
import ssm.score.entity.Scores;
import ssm.score.service.ScoreService;
import ssm.utils.StringUtil;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/score")
public class ScoreController {
    @Autowired
    private ScoreService scoreService;

    @GetMapping("/list")
    public ModelAndView list (ModelAndView model){
        model.setViewName("score/score_list");
        return model;
    }
    //得到显示成绩表所有项的列表
    @PostMapping("/get_list")
    @ResponseBody
    public Map<String,Object> getList(
            @RequestParam(value = "courseId" ,required = false,defaultValue = "") String courseId,
            @RequestParam(value = "studentId",required = false,defaultValue = "") String studentId,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("courseId","%"+courseId+"%");
        queryMap.put("studentId","%"+studentId+"%");
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("rows",scoreService.findScore(queryMap));
        ret.put("total",scoreService.getScoreTotal(queryMap));
        return ret;
    }

    //得到显示某个学生所有课程以及成绩的列表
    //学生ID是精确查找
    @PostMapping("/get_course_list")
    @ResponseBody
    public Map<String,Object> getCourseList(
            @RequestParam(value = "studentId",required = false,defaultValue = "") String studentId,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("studentId",studentId);
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("total",scoreService.getCourseTotal(queryMap));
        ret.put("rows",scoreService.findCourse(queryMap));
        return ret;
    }
    //得到显示某个课程所有学生以及成绩的列表
    //课程ID是精确查找
    @PostMapping("/get_student_list")
    @ResponseBody
    public Map<String,Object> getStudentList(
            @RequestParam(value = "courseId",required = false,defaultValue = "")String courseId,
            @RequestParam(value = "page",required = true) int page,
            @RequestParam(value = "limit",required = true) int limit
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        Map<String,Object> queryMap = new HashMap<String,Object>();
        queryMap.put("courseId",courseId);
        queryMap.put("offset",(page-1)*limit);
        queryMap.put("pageSize",page*limit);
        ret.put("total",scoreService.getStudentTotal(queryMap));
        ret.put("rows",scoreService.findStudent(queryMap));
        return ret;
    }

    @PostMapping("/add")
    @ResponseBody
    public Map<String,Object> add(Score score){
        Map<String,Object> ret = new HashMap<String ,Object>();
        if(StringUtils.isEmpty(score.getCourseId())){
            ret.put("type","error");
            ret.put("msg","课程ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(score.getStudentId())){
            ret.put("type","error");
            ret.put("msg","学生ID不能为空！");
            return ret;
        }
        try{
            if(scoreService.add(score)<=0){
                ret.put("type","error");
                ret.put("msg","成绩记录添加失败！");
                return ret;
            }
        }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","成绩记录添加失败！");
            return ret;
        }

        ret.put("type","success");
        ret.put("msg","成绩记录添加成功！");
        return ret;
    }

    @PostMapping("/edit")
    @ResponseBody
    public Map<String,Object> edit(Score score){
        Map<String,Object> ret = new HashMap<String ,Object>();
        if(StringUtils.isEmpty(score.getCourseId())){
            ret.put("type","error");
            ret.put("msg","课程ID不能为空！");
            return ret;
        }
        if(StringUtils.isEmpty(score.getStudentId())){
            ret.put("type","error");
            ret.put("msg","学生ID不能为空！");
            return ret;
        }
        try{
            if(scoreService.edit(score)<=0){
                ret.put("type","error");
                ret.put("msg","成绩记录修改失败！");
                return ret;
            }
        }catch (Exception e){
            ret.put("type","error");
            ret.put("msg","成绩记录修改失败！");
            return ret;
        }
        if(scoreService.edit(score)<=0){
            ret.put("type","error");
            ret.put("msg","成绩记录修改失败！");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","成绩记录修改成功！");
        return ret;
    }

    @PostMapping("/delete")
    @ResponseBody
    public Map<String,Object> delete(
            @RequestBody Scores scores
    ){
        Map<String,Object> ret = new HashMap<String,Object>();
        if(scores==null){
            ret.put("type","error");
            ret.put("msg","请选择需要删除的数据！");
            return ret;
        }
        ret.put("scores",scores.getScores());
       // try{
            for (Score score:scores.getScores()
                 ) {
                if(scoreService.delete(score)<=0){
                    ret.put("type","error");
                    ret.put("msg","删除数据出现错误！");
                    return ret;
                }
            }
        /*}catch (Exception e){
            ret.put("type","error");
            ret.put("msg","删除数据出现错误！");
            return ret;
        }*/
        ret.put("type","success");
        ret.put("msg","删除数据成功！");
        return ret;
    }


}
