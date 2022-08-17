# ☕️ Coffee & Lavita

[![version](https://img.shields.io/badge/STS-3.9.12-yellow)](https://camo.githubusercontent.com/96464a2503ecacbff7d16fda58f75897e9a8148f/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f76657273696f6e2d302e312e302d79656c6c6f77) [![Hits](https://img.shields.io/badge/Java-11-orange)](https://hits.seeyoufarm.com) [![mobx](https://img.shields.io/badge/Spring-5.2.8-green)](https://camo.githubusercontent.com/ef3f6f2db961cc6514516feba5c51019bd1ed71f/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6d6f62782d352e31352e352d626c756576696f6c6574)


## 0. 실행 방법

* 웹 서버를 실행하기 위해 Apache Tomcat 8.5v 를 사용했습니다.
* **AWS EC2** 서버를 활용하여 배포했습니다.
  * http://ec2-15-165-156-8.ap-northeast-2.compute.amazonaws.com:8080/Lavita/ 



## 1. 프로젝트 소개  

### Coffee & Lavita 

* 이탈리아어로 Lavita는 '풍요로운 삶'을 뜻합니다. 직장인들을 타겟으로 지정했으며, coffee & lavita의 커피로 삶이 조금 더 풍요로워 졌으면 하는 마음으로 카페 홈페이지를 제작하게 되었습니다.  여러 프렌차이즈 카페들을 참조하여 제작하였습니다. 💬   

#### 기획 단계 및 Client 제작과정 주소

* [2myungho.github.io/coffeelavitawork/](https://2myungho.github.io/CoffeeLavitaWork/)

*해당 주소는 Client 제작과정이므로 서버와 연결되어 있지 않습니다.*



## 2. 사용 기술 및 개발 계획📌

### 1) 사용 기술

**기능 구현**

- Java
- Spring
- Jsp Servlet
- Javascript
- JQuery

**데이터베이스**

* Oracle
* mybatis
* MariaDB

**클라우드**

* AWS EC2
* AWS RDS

**마크업**

*  Html
* Xml

**디자인**

- CSS
- CSS media query

**에디터**

* Visual Studio
* Eclipse (STS)
* DataGrip

### 2) 개발 계획

- 1차 진행 기간 : 2019. 12 - 2020. 1
  * Html, CSS, Javascript, JQuery 를 이용하여 홈페이지 폼 제작
- 2차 진행 기간 : 2020. 09. 07 - 2020. 09. 18
  * Spring Framework, Jsp, Oracle,을 이용하여 기능 구현
  * 목표 : SpringFramework와 Oracle을 활용하여 작년에 만들어둔 홈페이지에 기능을 추가해보자!
- 3차 진행 기간 : 2020. 11. 16 ~
  - **AWS EC2서버를 활용해 프로젝트 배포하기**
  - AWS RDS를 EC2 서버에서 연동
  - RDS에서 Oracla이 유료이기 때문에 MariaDB로 변경
  - 추후 도커와 쿠버네티스까지 해볼 생각

## 3. 개인프로젝트 제작 순서

* **1차 제작 (Client)**

1. 주제 선정, 로고 제작
2. 주제 관련 다양한 홈페이지의 UI, UX 디자인 조사
3. html, css를 이용해 반응형 홈페이지 제작
4. Javascript, JQuery를 이용한 동적인 기능 추가

* **2차 제작 (BackEnd)**

1. pom.xml에 필요힌 의존성 라이브러리 추가
2. Oracle DB로 회원정보, 게시판 테이블 생성
3. VO, Controller, Service, Dao, config 패키지 및 파일 생성
4. html을 jsp 확장자로 변경후 구현부분 수정

* **3차 제작 (AWS)**

1. AWS EC2를 활용해서 프로젝트 배포해보기 
2. AWS RDS를 활용해서 EC2에 MariaDB 연동



## 4. 핵심 기능🔑

### 1) 회원가입 / 로그인 / 로그아웃

> - 로그인 페이지에서 회원가입이 가능
> - 로그인 완료후 메인페이지로 이동
> - 로그인이 완료 되면 로그인 버튼이 로그아웃 버튼으로 변경 됨
> - 로그인시 nav 상단에 작성한 이름 출력
> - 로그인시 마이페이지 접근 가능

### 2) 고객센터 게시판 기능

> - 고객센터 페이지에서 게시판 리스트 확인 가능
> - 게시판 등록, 수정, 삭제 기능

### 3) 관리자 페이지 생성

> - 특정 ID로 접속시 관리자 페이지에 접근 가능
> - 관리자 페이지에서는 가입한 회원 name, id password 리스트가 출력
> - 관리자 페이지에서 회원정보 수정 및 삭제 가능



## 5. 시나리오 & 결과 📢

![login](https://user-images.githubusercontent.com/52882578/93667960-7c0d4580-fac4-11ea-927a-f6e6272800ea.gif)

#### 1) 회원가입, 로그인, 로그아웃 

> 로그인 페이지로 이동하여 회원가입을 합니다.
>
> 회원가입 후 해당 계정으로 로그인을 할 수 있습니다.
>
> 로그인시 nav에 사용자 이름을 출력합니다.
>
> 로그아웃 버튼을 눌러 로그아웃 할 수 있습니다.



![board](https://user-images.githubusercontent.com/52882578/93667900-436d6c00-fac4-11ea-8c5c-088179306786.gif)

#### 2) 고객센터 게시판 기능

> 고객센터로 이동하면 게시물 등록을 할 수 있습니다
>
> 문의내용 메뉴에서 게시물 리스트를 확인할 수 있습니다.
>
> 나의 문의 내역 페이지로 이동해서 내가 등록한 내역만 확인, 수정, 삭제가 가능합니다.
>
> 본인의 id로 작성한 게시물만 수정 및 삭제를 할 수 있습니다
>

![master](https://user-images.githubusercontent.com/52882578/93667976-90e9d900-fac4-11ea-988b-03ebb4351571.gif)

#### 3) 관리자 페이지

> 특정 아이디로 로그인시 관리자페이지로 이동할 수 있습니다.
>
> 관리자 페이지에는 가입한 회원의 회원정보 리스트가 출력됩니다.
>
> 상세보기 버튼을 클릭하여 회원 정보를 수정 및 삭제할 수 있습니다.
>
> 관리자 게시판 페이지로 이동할 수 있습니다.



## Client

#### 1) 데스크탑 홈페이지

![desktop2](https://user-images.githubusercontent.com/52882578/93668202-0a35fb80-fac6-11ea-99ab-3e47811d52d2.gif)



#### 2)  반응형 모바일 홈페이지

![mobile2](https://user-images.githubusercontent.com/52882578/93668176-ea063c80-fac5-11ea-826c-b849688c3602.gif)