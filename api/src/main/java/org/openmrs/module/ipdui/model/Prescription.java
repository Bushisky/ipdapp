package org.openmrs.module.ipdui.model;

/**
 * Created by Francis on 1/27/2016.
 */
public class Prescription {
    private String name;
    private Integer frequency;
    private Integer formulation;
    private Integer days;
    private String comment;

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    public Integer getFormulation() {
        return formulation;
    }

    public void setFormulation(Integer formulation) {
        this.formulation = formulation;
    }

    public Integer getFrequency() {
        return frequency;
    }

    public void setFrequency(Integer frequency) {
        this.frequency = frequency;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
