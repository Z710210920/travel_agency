package com.ssm.dao;

import com.ssm.entity.Place;

public interface PlaceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table place
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table place
     *
     * @mbg.generated
     */
    int insert(Place record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table place
     *
     * @mbg.generated
     */
    int insertSelective(Place record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table place
     *
     * @mbg.generated
     */
    Place selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table place
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(Place record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table place
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Place record);
}