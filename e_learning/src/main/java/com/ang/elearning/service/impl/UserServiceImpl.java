package com.ang.elearning.service.impl;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.ang.elearning.dao.UserMapper;
import com.ang.elearning.po.User;
import com.ang.elearning.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	
	//�Ƽ�ʹ��@Resource������@Autowired
	@Resource
	private UserMapper userDao;
	
	@Override
	public User getUserById(int id) {
		return userDao.selectByPrimaryKey(id);
	}

}
