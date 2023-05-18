/*
 * package multicampus.kb03.IPOwer.Service;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service;
 * 
 * import multicampus.kb03.IPOwer.dao.NewsFileDao;
 * 
 * @Service public class NewsFileService {
 * 
 * @Autowired private final NewsFileDao dao;
 * 
 * 
 * 
 * 
 * public String join(String userId, String userPw, String userName, String
 * userPhone) {
 * 
 * UsersRoleDto user = new UsersRoleDto(); user.setUserId(userId);
 * user.setUserPw(passwordEncoder.encode(userPw)); user.setUserName(userName);
 * user.setUserPhone(userPhone); System.out.println("user: "+user);
 * validateDuplicateMember(user); userDao.save(user); return user.getUserId(); }
 * 
 * private void validateDuplicateMember(UsersRoleDto user) throws
 * IllegalStateException { System.out.println("userId: "+user.getUserId());
 * UsersRoleDto findByUserId = userDao.findByUserId(user.getUserId());
 * 
 * System.out.println("findByUserId: "+findByUserId); if(findByUserId != null){
 * throw new IllegalStateException("이미 존재하는 회원입니다."); } } }
 */