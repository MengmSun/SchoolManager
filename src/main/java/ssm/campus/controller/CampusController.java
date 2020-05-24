package ssm.campus.controller;


import net.sf.json.JSONArray;

import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;
import ssm.campus.entity.Campus;
import ssm.campus.service.CampusService;
import ssm.page.Page;
import ssm.utils.StringUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/campus" )
public class CampusController {

    @Autowired
    private CampusService campusService;

    //校区列表页
    @GetMapping("/list")
    public ModelAndView list(ModelAndView model) {
        model.setViewName("campus/campus_list");

        return model;
    }

    //获取校区列表
    //关于校区的ID和名字的模糊查询
    @PostMapping("/get_list")
    @ResponseBody
    public Map<String, Object> getList(
            @RequestParam(value = "name", required = false, defaultValue = "") String name,
            @RequestParam(value = "id", required = false, defaultValue = "") String id,
            @RequestParam(value = "page", required = true) int page,
            @RequestParam(value = "limit", required = true) int limit
    ) {
        Map<String, Object> ret = new HashMap<String, Object>();
        Map<String, Object> queryMap = new HashMap<String, Object>();
        queryMap.put("name", "%" + name + "%");
        queryMap.put("id", "%" + id + "%");
        queryMap.put("offset", (page - 1) * limit);
        queryMap.put("pageSize", page * limit);
        ret.put("rows", campusService.findList(queryMap));
        //符合条件的元组数目
        ret.put("total", campusService.getTotal(queryMap));
        ret.put("rowsAll", campusService.findAll());
        //ret.put("qm",queryMap);
        return ret;
    }


    //编辑校区信息
    @PostMapping("/edit")
    @ResponseBody
    public Map<String, String> edit(Campus campus) {
        Map<String, String> ret = new HashMap<String, String>();
        if (StringUtils.isEmpty(campus.getId())) {
            ret.put("type", "error");
            ret.put("msg", "校区ID不能为空！");
            return ret;
        }
        if (StringUtils.isEmpty(campus.getName())) {
            ret.put("type", "error");
            ret.put("msg", "校区名称不能为空！");
            return ret;
        }
        if (StringUtils.isEmpty(campus.getAddress())) {
            campus.setAddress(null);
        }
        /*if(campusService.edit(campus) <= 0){
            ret.put("type","error");
            ret.put("msg","校区信息修改失败！");
            return ret;
        }*/
        try {
            if (campusService.edit(campus) <= 0) {
                ret.put("type", "error");
                ret.put("msg", "校区信息修改失败！");
                return ret;
            }
        } catch (Exception e) {
            if (campusService.edit(campus) <= 0) {
                ret.put("type", "error");
                ret.put("msg", "校区信息修改失败！");
                return ret;
            }
        }
        ret.put("type", "success");
        ret.put("msg", "校区信息修改成功！");
        return ret;
    }

    //添加校区信息
    @PostMapping("/add")
    @ResponseBody
    public Map<String, String> add(Campus campus) {
        Map<String, String> ret = new HashMap<String, String>();
        if (StringUtils.isEmpty(campus.getId())) {
            ret.put("type", "error");
            ret.put("msg", "校区ID不能为空！");
            return ret;
        }
        //将空字符串转换成NULL（要命啊）
        if (StringUtils.isEmpty(campus.getName())) {
            ret.put("type", "error");
            ret.put("msg", "校区名称不能为空！");
            return ret;
        }
        if (StringUtils.isEmpty(campus.getAddress())) {
            campus.setAddress(null);
        }
        //用try...catch捕获异常，防止服务器后台直接因为数据库操作失误返回500
        try {
            if (campusService.add(campus) <= 0) {
                ret.put("type", "error");
                ret.put("msg", "校区添加失败！");
                return ret;
            }

        } catch (Exception e) {
            ret.put("type", "error");
            ret.put("msg", "校区添加失败！");
            return ret;
        }
        ret.put("type", "success");
        ret.put("msg", "校区添加成功！");
        //ret.put("campus",campus.toString());
        return ret;
    }


    //删除校区信息
    //可以批量删除：传入函数的是String数组，即可以一次性传入多个元组的ID进行删除
    @PostMapping("/delete")
    @ResponseBody
    public Map<String, String> delete(
            @RequestParam(value = "ids[]", required = true) String[] ids
    ) {
        Map<String, String> ret = new HashMap<String, String>();
        if (ids == null || ids.length == 0) {
            ret.put("type", "error");
            ret.put("msg", "请选择需要删除的数据！");
            return ret;
        }
        String str = StringUtil.joinString(Arrays.asList(ids), ",");
        ret.put("str",str);
        //try{
        if (campusService.delete(StringUtil.joinString(Arrays.asList(ids), ",")) <= 0) {
            ret.put("type", "error");
            ret.put("msg", "校区删除失败！");

            return ret;
        }
        /*    }
        }catch(Exception e){
            ret.put("type","error");
            ret.put("msg","校区存在关联信息，请勿删除！");
            return ret;
        }*/
            ret.put("type", "success");
            ret.put("msg", "校区删除成功！");
            return ret;
        }

    }

