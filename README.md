#안녕하세요 신입 개발자 이재훈 입니다!
# 방문 감사합니다!


---

##1.프로젝트 소개

### 프로젝트 멤버모집 SNS 플랫폼

##1.1 아이템 설명

###1.1.1 기존 문제점
   1.소규모 프로젝트를 위한 플랫폼의 부재  
   2.공모전,포트폴리오 등을 위한 그룹구성이 어려움  
   3.원하는 능력을 갖춘 멤버를 구하기 어려움  

###1.1.2 제시 해결책
   1.소규모 그룹을 만들 수 있는 플랫폼 제공  
   2.개인별 역량을 확인 가능한 서비스 제공



##1.2 기본 업무
	언어: Java, Javascript,HTML,CSS
	라이브러리: JQuery,JSTL,EL
	프레임워크: Spring
	SCM: GitHub  
	배포환경: AWS(Amazon Web Service)
####맡은 업무및 추가 역할 
	Spring + Bootstrap+ AWS(Amazon Web Service) +  
    Responsive Web Design


##1.3 주로 사용한 기능

	1.Bootstrap: 핸드폰에서도 볼수있도록 반응형웹을 만들고자 고민하던 중 부트스트랩을 알게 되었고 대부분
    반응형 웹과 맞아 쓰게 되었고 modal 팝업창을 많이 이용하게 되었습니다.
	2.RWD(반응형웹): CSS3에서 추가된 FLEX를 이용하여 구성 Holy Grail Layout에 맞추어  
					Layout을 구현하며 Media 태그를 활용하여 반응형으로 구현하였습니다.

	3.Ajax: 댓글, 무한스크롤링, 회원가입, 프로젝트 관리 등 Modal을 활용한 것들에 모두 활용하였습니다.
  
	4.AWS(Amazon Web Service): Nginx, MySQL: Yum 명령어를 이용하여 구축 
							   Tomcat: Linux용을 다운받아 설치
							   JAVA: Oracle 홈페이지를 통해 1.8.0_101 버전 설치
	5.Spring: Intercepter, Session, RestController 등을 활용하여 로그인했을때의 상태저장, Ajax들을 구현하였습니다.

	6.MVC 패턴: mvc패턴을 사용하였으며 controller, domain, persistence,
			   service,intercepter,pageutill 로 로 나뉘여 있습니다.
			   모든 view는 jsp로 만들었으며 html과 Javascript는 브라켓을 이용하였습니다.
				 	

	
##2.1 작업한 페이지 및 기능

### 제가 주로 한 기능은 크게 이렇게 나눠져 있습니다.
	
###### 1. 메인화면, 사이드바, 캐러셀 
###### 2. 로그인, 회원가입, 로그아웃, 마이페이지
###### 3. COMMUNITY 게시판(+댓글), INFORMATION 게시판, 프로젝트 관리



## 2.2 작업 리뷰(모든화면은 모바일로도 볼 수 있습니다)
## 모바일로 보이지 않는 화면은 보수 중입니다... 죄송합니다!

[프로젝트 완성 홈페이지](http://35.163.8.198/teamsns/signup/main-page "링크로 바로 이동합니다")

## 2.2-1(클릭시 코드 git으로 이동합니다)
1-1 [메인화면](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/webapp/WEB-INF/views/signup/main-page.jsp) 

	메인화면 구성은 사이드바, 캐러셀, 그리고 커뮤니티 게시판을 보이게 했습니다.
	캐러셀은 부트스트랩에서 가져온 것이구요 사이드바도 반응형으로된 메뉴바 템플릿을 이용했습니다.
1-2 [사이드바](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/webapp/WEB-INF/views/signup/main-page.jsp)
	
	반응형 메뉴 템플릿을 사용하여 모바일화면에서도 메뉴가 바뀌게 구현.	

1-3 [캐러셀](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/webapp/WEB-INF/views/signup/main-page.jsp)

	부트스트랩에 있는 캐러셀을 이용하여 홈페이지의 특성을 살렸습니다.


## 2.2-2
2-1 [로그인view](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/webapp/WEB-INF/views/signup/main-page.jsp "366행")  
	[로그인 controller](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/java/edu/hexa/leejaehoon/controller/SignUpController.java "120행")

	로그인시 맞지 않는 아이디와 비밀번호 입력시 로그인 안됨. 로그인창은 부트스트랩 modal 팝업창 사용.
	로그인 완료가되면 intercepter를 이용하여 기존의 session이 있다면 삭제함과 동시에
	로그인 아이디의 session을 생성하도록 구현하였습니다

2-2 [로그아웃 view](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/webapp/WEB-INF/views/signup/main-page.jsp "556행")  
	[로그아웃 controller](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/webapp/WEB-INF/views/signup/main-page.jsp "120행")
	
	로그아웃시 기존에 있던 session 이 삭제되게 구현하였습니다.

2-3 [회원가입 view](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/webapp/WEB-INF/views/signup/main-page.jsp "412행")  
	[회원가입 controller](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/java/edu/hexa/leejaehoon/controller/SignUpController.java "133행")

	회원가입창도 modla 팝업을 이용하였으며 ID입력란엔 유효성검사를 사용하여 영문입력만 가능 그리고 중복검사같이 구현하였습니다.
	닉네임 입력란도 동일합니다.
	핸드폰 입력란은 xxx-xxxx-xxxx 대시 바가 자동으로 생성되도록 구현 하였습니다.

2-4 [마이페이지 view](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/webapp/WEB-INF/views/user/mypage.jsp)  
	[마이페이지 controller](https://github.com/lipjae/Portfolio/blob/master/TeamSNS/src/main/java/edu/penta/hyunsun/controller/MypageController.java)

	마이페이지는 ID,EMAIL,이름,카카오아디,주소 를 수정할수 있도록 구현하였으며, 내가 쓴글을 볼 수 있도록 하였습니다.


## 2.2-3

### COMMUNITY 게시판

	게시판에 사용된 기능은 크게 게시판의 수정,삭제, 새글작성, 그리고 댓글로 구성되어있으며 페이징처리까지 되어있는 상태입니다. 

3-1 새글작성
	
	새글작성시에는 로그인의 여부를 session으로 판단하며 session이 없을시엔 로그인이 필요하다는 alert창을 띄우도록 구현하였습니다.
	
3-2 삭제 및 수정 
	
	삭제 , 수정 기능은 글쓴 아이디와 현재 로그인 되어있는 세션정보를 비교하여 기능이 보이도록 구현하여
	다른 사용자가 삭제및 수정하지 못하게 하였습니다.

3-3 댓글

	댓글은 ajax를 사용하였습니다.

3-4 COMMUNITY의 모든 게시판은 위와 동일합니다!


### INFORMATION 게시판도 COMMUNITY 게시판과 동일합니다!


## 2.2-4 

### PROJECT 메뉴

4-1 프로젝트 관리

	프로젝트 관리 카테고리에는 1.작성한 프로젝트 2.지원한 프로젝트 3.지원자 목록 이 나오게 구현하였으며
	
	1.작성한 프로젝트 클릭시 modal팝업으로 수정가능한 창이 열리며 이것또한 ajax를 사용하였습니다
	2.지원한 프로젝트 에서는 신청취소가 가능하며
	3.지원자 목록 에서는 신청 수락과 거부를 할수 있습니다!

4-2 프로젝트 리스트

	프로젝트 리스트는 간편함을 위해 지역클릭으로 구분을 할수있으며 무한스크롤링,ajax가 사용되었습니다.

## 2.2-5
### VIEW

	모든 view는 반응형으로 만들었으며 CSS3에서 추가된 FLEX를 이용하여 구성
	Holy Grail Layout에 맞추어 Layout을 구성
	Media 태그를 활용하여 반응형으로 구현하였습니다
	
	



##여기까지 읽어주셔서 감사합니다! 아직 미흡한 부분은 유지 및 보수 중이며 
##부족한점을 찾아 채우는 중입니다 감사합니다!
