package com.guide.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.guide.pojo.TUser;

public interface TUserMapper {
	
	List<TUser> selectUserByPassword(@Param("uname") String username, @Param("upwd") String password);

	List<TUser> selectZkUserByPassword(@Param("uname") String username, @Param("upwd") String password);

	int Validate_bk(String username);
}