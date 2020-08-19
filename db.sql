CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `contents` text NOT NULL,
  `like` tinyint(1) DEFAULT '0',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8

INSERT INTO study.posts (id, title, contents, `like`, date) VALUES (12, 'Mini Posts?', '글 작성이 가능하고 마음에 드는 글은 좋아요 표시를 할 수 있는 간단한 웹 애플리케이션입니다.

* 웹 애플리케이션: 소프트웨어 공학적 관점에서 인터넷이나 인트라넷을 통해 웹 브라우저에서 이용할 수 있는 응용 소프트웨어를 말한다.', 0, '2020-08-19 20:16:26');
INSERT INTO study.posts (id, title, contents, `like`, date) VALUES (26, 'Using Fetch', 'The Fetch API provides a JavaScript interface for accessing and manipulating parts of the HTTP pipeline, such as requests and responses. It also provides a global fetch() method that provides an easy, logical way to fetch resources asynchronously across the network.

This kind of functionality was previously achieved using XMLHttpRequest. Fetch provides a better alternative that can be easily used by other technologies such as Service Workers. Fetch also provides a single logical place to define other HTTP-related concepts such as CORS and extensions to HTTP.', 0, '2020-08-19 20:16:26');
INSERT INTO study.posts (id, title, contents, `like`, date) VALUES (27, 'Express', '웹 애플리케이션
Express는 웹 및 모바일 애플리케이션을 위한 일련의 강력한 기능을 제공하는 간결하고 유연한 Node.js 웹 애플리케이션 프레임워크입니다.
API
자유롭게 활용할 수 있는 수많은 HTTP 유틸리티 메소드 및 미들웨어를 통해 쉽고 빠르게 강력한 API를 작성할 수 있습니다.
성능
Express는 기본적인 웹 애플리케이션 기능으로 구성된 얇은 계층을 제공하여, 여러분이 알고 있고 선호하는 Node.js 기능을 모호하게 만들지 않습니다.', 1, '2020-08-19 20:16:26');
INSERT INTO study.posts (id, title, contents, `like`, date) VALUES (28, 'mysql', 'MySQL(마이에스큐엘, /maɪ ˌɛskjuːˈɛl/)[1]은 세계에서 가장 많이 쓰이는[2] 오픈 소스의 관계형 데이터베이스 관리 시스템(RDBMS)이다.[3] 다중 스레드, 다중 사용자 형식의 구조질의어 형식의 데이터베이스 관리 시스템으로서 오라클이 관리 및 지원하고 있으며, Qt처럼 이중 라이선스가 적용된다. 하나의 옵션은 GPL이며, GPL 이외의 라이선스로 적용시키려는 경우 전통적인 지적재산권 라이선스의 적용을 받는다.

위와 같은 지원 방식은 자유 소프트웨어 재단이 프로젝트에 저작권을 적용하는 방법과 비슷한 JBoss의 모델과 유사하다. 그러나 기반코드가 개인의 소유자에게 저작권이 있고 커뮤니티에 의해 개발되는 아파치 프로젝트와는 다르다.

MySQL AB는 또한 MaxDB라고 불리는 MySQL AB와는 기반코드가 다른 데이터베이스 관리 시스템을 판매했으나 2007년 이래로 MaxDB는 SAP AG가 소유하고 있다.[4]

썬 마이크로시스템즈에 10억 달러에 인수되었으나, 썬 마이크로시스템즈가 오라클에 인수되며 같이 넘어갔다.[5]', 1, '2020-08-19 20:16:26');
INSERT INTO study.posts (id, title, contents, `like`, date) VALUES (30, 'Instagram에 사진을 게시하려면?', '사진을 업로드하거나 새로 찍으려면 먼저 화면 하단에서  아이콘을 누릅니다.

휴대폰의 라이브러리에서 사진을 업로드하려면 화면 하단에서 라이브러리(iOS)나 갤러리(Android)를 누르고 공유하려는 사진을 선택합니다.
새로운 사진을 찍으려면 화면 하단에서 사진을 누른 다음  아이콘을 누릅니다.  아이콘을 눌러 전면 카메라와 후면 카메라 간에 전환하고  아이콘을 눌러 플래시를 조정할 수 있습니다.
사진을 찍거나 업로드한 후 게시하기 전에 효과나 필터, 설명, 위치를 추가할 수 있습니다. 동영상을 게시할 수도 있습니다.

참고: 데스크톱 컴퓨터에서는 사진을 찍거나 업로드할 수 없습니다.
도움이 되었나요?', 0, '2020-08-19 20:16:26');

