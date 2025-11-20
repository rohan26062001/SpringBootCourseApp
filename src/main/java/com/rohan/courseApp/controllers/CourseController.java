package com.rohan.courseApp.controllers;

import com.rohan.courseApp.model.Course;
import com.rohan.courseApp.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    @PostMapping("savecourse")
    public String saveCourse(Course course, Model model) {
        try {
            courseService.saveCourse(course);
            model.addAttribute("saved_course", course);
            return "course_success";
        } catch (Exception e) {
            model.addAttribute("course_save_error", e.getMessage());
            return "course_failure";
        }
    }

    @GetMapping("allcourses")
    public String getAllCourses(Model model) {
        List<Course> allCourses = courseService.getAllCourses();
        model.addAttribute("courses", allCourses);
        return "allcourses";
    }
}
