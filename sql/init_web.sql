SET character_set_client = utf8;
SET character_set_results = utf8;
SET character_set_connection = utf8;


delete from tb_users where loginName='admin';
insert into tb_users(loginname,password,username,mobile,userType,createtime, passUpdateTime) values('admin', '96E79218965EB72C92A549DD5A330112', '系统管理员','18677778888', 1, now(), now());

