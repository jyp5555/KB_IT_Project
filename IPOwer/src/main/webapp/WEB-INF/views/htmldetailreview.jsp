<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Startup - Startup Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<link href="/resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">


<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<!--board css-->
<link rel="icon" href="/resources/css/favicon.ico" />

<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<link rel="stylesheet" href="/resources/css/font-awesome.min.css">

<link rel="stylesheet" href="/resources/css/animate.css">

<link rel="stylesheet" href="/resources/css/select2.css">

<link rel="stylesheet" href="/resources/css/perfect-scrollbar.css">

<link rel="stylesheet" href="/resources/css/util.css">
<link rel="stylesheet" href="/resources/css/main.css">
<meta name="robots" content="noindex, follow">
<script type="text/javascript">
window.onload = function() {
	document.getElementById("btnList").onclick = function() {
		location.href="/";
	}
	document.getElementById("btnUpdate").onclick = function(e) {
		
		if(confirm("정말수정할까요")) {
	
			frm.action="/board/edit?ARTICLE_PK="+e.target.name;
			frm.submit();
		}
	}
	
document.getElementById("btnDelete").onclick = function(e) {
		 if(confirm("정말 삭제할까요?")) {
			frm.action="/board/deleteBoard?ARTICLE_PK="+e.target.name;
			frm.submit();
		} 
/* 		 if (confirm("정말 삭제할까요?")) {
	            var articlePk = ${detail1.articlePk};
	            location.href = "/board/deleteBoard?ARTICLE_PK=" + articlePk;
	            
	        } */
	} 
	/*  function deleteBoard() {
	        if (confirm("정말 삭제할까요?")) {
	            var articlePk = ${detail1.articlePk};
	            location.href = "/board/deleteBoard?ARTICLE_PK=" + articlePk;
	        } */
}
</script>    
    
</head>

<body>
   


    <!-- Topbar Start -->
    <div class="container-fluid bg-dark px-5 d-none d-lg-block">
        <div class="row gx-0">
            <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <small class="me-3 text-light"><i class="fa fa-map-marker-alt me-2"></i>123 Street, New York, USA</small>
                    <small class="me-3 text-light"><i class="fa fa-phone-alt me-2"></i>+012 345 6789</small>
                    <small class="text-light"><i class="fa fa-envelope-open me-2"></i>info@example.com</small>
                </div>
            </div>
            <div class="col-lg-4 text-center text-lg-end">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-twitter fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-linkedin-in fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-instagram fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle" href=""><i class="fab fa-youtube fw-normal"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid position-relative p-0">
       
       
        <%@ include file="./header.jsp" %>

        <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
            <div class="row py-5">
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-4 text-white animated zoomIn">Blog Detail</h1>
                    <a href="" class="h5 text-white">Home</a>
                    <i class="far fa-circle text-white px-2"></i>
                    <a href="" class="h5 text-white">Blog Detail</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar End -->


    <!-- Full Screen Search Start -->
    <div class="modal fade" id="searchModal" tabindex="-1">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                <div class="modal-header border-0">
                    <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center justify-content-center">
                    <div class="input-group" style="max-width: 600px;">
                        <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                        <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->
<!-- Blog Start -->
    <div class="ArticleContentBox"><div class="article_header"><div class="ArticleTitle"><a href="https://cafe.naver.com/ArticleList.nhn?search.clubid=28413502&amp;search.menuid=10" class="link_board">
        목록
        <svg class="svg-icon ico-post-arrow-03-c-75-a"><use xlink:href="#ico-post-arrow-03-c-75-a" aria-hidden="true"></use></svg></a><div class="title_area"><!----><!----><!----><h3 class="title_text">
            제목
        </h3></div></div><div class="WriterInfo"><div class="thumb_area"><a href="/ca-fe/cafes/28413502/members/yuq1QaGVy3IuzLmwQ838kw" class="thumb"><img src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_77.png?type=c77_77" alt="프로필 사진" width="36" height="36"></a></div><div class="profile_area"><div class="profile_info"><div class="nick_box"><button id="writerInfoqkrtjfud2" class="nickname">
                    작성자
                </button><!----></div><em class="nick_level">
                일반멤버
                <i data-v-d34938e2="" class="LevelIcon icon_level" style="background-image: url(&quot;https://ca-fe.pstatic.net/web-pc/static/img/sprite_levelicon_9dbde2.svg#1_110-usage&quot;);"></i></em><div class="subscript_area"><button type="button" aria-selected="false" class="btn_subscript"><svg class="svg-icon ico-plus"><use xlink:href="#ico-plus" aria-hidden="true"></use></svg> 구독
                </button><div class="toast_subscribe toast_subscribe_leave" style="display: none;">
                    이 멤버의 글을 구독탭에서 볼 수 있습니다.
                </div></div><a href="#" class="link_talk">1:1 채팅</a></div><div class="article_info"><span class="date">2023.05.22. 17:33</span><span class="count">조회 2</span></div></div></div><div class="ArticleTool"><a href="#" role="button" class="button_comment"><svg class="svg-icon ico-post-comment-323232"><use xlink:href="#ico-post-comment-323232" aria-hidden="true"></use></svg>댓글
        <strong class="num">0</strong></a><a href="#" role="button" class="button_url">URL 복사</a><div class="toast_url_copy_successful" style="display: none;">
            URL이 복사되었습니다. 원하는 곳에 붙여 넣으세요.
        </div><div class="more_area"><a id="articleTool" href="#" role="button" title="더보기" class="button_more"><svg aria-label="더보기" class="svg-icon ico-post-more-979797"><use xlink:href="#ico-post-more-979797" aria-hidden="false"></use></svg></a><!----><!----><div data-v-3f4fdf4e="" class="LayerArticle" style="display: none;"><!----><!----><!----><!----><!----><!----><!----><!----><!----><div data-v-3f4fdf4e="" class="article_layer cafe_calendar_layer" style="width: 279px; z-index: 2000;"><h3 data-v-3f4fdf4e="" class="blind">
            카페 캘린더 레이어
        </h3><p data-v-3f4fdf4e="" class="text">
            이 게시글을 카페 캘린더에서 제외하시겠습니까?
        </p><div data-v-3f4fdf4e="" class="btn_area"><a data-v-3f4fdf4e="" href="#" role="button" class="btn_ok"><span data-v-3f4fdf4e="" class="blind">확인</span></a><a data-v-3f4fdf4e="" href="#" role="button" class="btn_cancel"><span data-v-3f4fdf4e="" class="blind">취소</span></a></div><a data-v-3f4fdf4e="" href="#" role="button" title="닫기" class="btn_layer_close"><span data-v-3f4fdf4e="" class="blind">레이어팝업 닫기</span></a></div><!----><!----><!----></div><div data-v-3f4fdf4e="" class="LayerArticle" style="display: none;"><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><div data-v-3f4fdf4e="" class="article_layer cafe_calendar_layer" style="width: 279px; z-index: 2000;"><h3 data-v-3f4fdf4e="" class="blind">
            카페 캘린더 레이어
        </h3><p data-v-3f4fdf4e="" class="text">
            이 게시글을 카페 캘린더로 보내시겠습니까?
        </p><div data-v-3f4fdf4e="" class="btn_area"><a data-v-3f4fdf4e="" href="#" role="button" class="btn_ok"><span data-v-3f4fdf4e="" class="blind">확인</span></a><a data-v-3f4fdf4e="" href="#" role="button" class="btn_cancel"><span data-v-3f4fdf4e="" class="blind">취소</span></a></div><a data-v-3f4fdf4e="" href="#" role="button" title="닫기" class="btn_layer_close"><span data-v-3f4fdf4e="" class="blind">레이어팝업 닫기</span></a></div><!----><!----></div></div></div></div><div class="article_container"><!----><!----><!----><!----><div class="article_viewer"><!----><!----><!----><!----><div><div class="content CafeViewer"><div class="se-viewer se-theme-default" lang="ko-KR">
    <!-- SE_DOC_HEADER_START -->
    <!--@CONTENTS_HEADER-->
    <!-- SE_DOC_HEADER_END -->
    <div class="se-main-container">
                <div class="se-component se-text se-l-default" id="SE-0346EB1D-0FBD-47BB-B941-FA9B54C43C0D">
                    <div class="se-component-content">
                        <div class="se-section se-section-text se-l-default">
                            <div class="se-module se-module-text">
                                    <!-- SE-TEXT { --><p class="se-text-paragraph se-text-paragraph-align-left " style="" id="SE-40543D36-37D8-4583-96B0-4C68209A1E06"><span style="" class="se-fs- se-ff-   " id="SE-E535D09A-DC98-4BF1-96D7-EB1BFF34FCC1">게시글</span></p><!-- } SE-TEXT -->
                            </div>
                        </div>
                    </div>
                </div>    </div>
</div>
</div><!----><div class="AttachFileIssueLayer" style="display: none;"><!----></div></div><!----></div><!----><!----><!----><div class="article_writer"><div class="ArticleWriterProfile"><a href="/ca-fe/cafes/28413502/members/yuq1QaGVy3IuzLmwQ838kw" class="more_area"><span class="thumb"><img src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_77.png?type=c77_77" alt="프로필 사진" width="36" height="36" onerror="this.onerror='';this.src='https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_77.png';"></span><span class="box"><strong class="user">박서령</strong>님의 게시글 더보기
            <svg class="svg-icon ico-post-arrow-323232"><use xlink:href="#ico-post-arrow-323232" aria-hidden="true"></use></svg></span></a></div><!----></div><div class="ReplyBox"><div class="box_left"><div class="like_article"><div data-sid="CAFE" data-did="CAFE" data-cid="28413502_spchappyscholarship_6214" data-catgid="28413502" class="ReactionLikeIt u_likeit_list_module _cafeReactionModule" data-loaded="1" data-facetype="0"><a href="#" data-ishiddenlabel="false" role="button" data-type="like" title="이 글 좋아요 클릭" class="like_no u_likeit_list_btn _button off" aria-pressed="false"><span class="u_ico _icon"></span><em class="u_txt _label">좋아요</em><em class="u_cnt _count">1</em></a></div><a href="#" role="button" title="좋아요한 멤버 리스트" class="button_like_list"><span class="blind">이 글을 '좋아요'한 멤버 리스트</span></a></div><a href="#" role="button" aria-pressed="true" class="button_comment"><span class="icon_area"><svg class="svg-icon ico-post-comment-323232"><use xlink:href="#ico-post-comment-323232" aria-hidden="true"></use></svg><!----></span>
            댓글<strong class="num">0</strong></a></div><div class="box_right"><!----><div class="social_article"><div class="text_area"><a id="spiButton" href="#" data-style="type_a" data-title="안녕하세요" data-url="https://cafe.naver.com/spchappyscholarship/6214" data-likeserviceid="CAFE" data-likecontentsid="28413502_spchappyscholarship_6214" data-cafe-source-type="111" data-cafe-source-title="안녕하세요" data-cafe-proxy-url="https://cafe.naver.com/CafeScrapContent.nhn?clubid=28413502&amp;articleid=6214&amp;type=cafe" data-cafe-return-url="https://cafe.naver.com/spchappyscholarship/6214" data-blog-source-type="111" data-blog-source-form="2" data-blog-source-title="[공식]SPC행복한장학 | 박서령" data-oninitialize="getSocialPluginParameters()" data-option="{baseElement:'spiButton'}" class="naver-splugin" splugin-id="9051702026"><span class="naver-splugin-c social_text"><svg class="svg-icon ico-post-share-323232"><use xlink:href="#ico-post-share-323232" aria-hidden="true"></use></svg>
        공유
    </span></a></div></div><div class="report_article"><a href="#" class="button_report">신고</a></div></div></div><div class="CommentBox"><div class="comment_option"><h3 class="comment_title">
            댓글
        </h3><!----><div class="comment_alarm"><div class="SubscribeButton"><em class="subscribe_text">관심글 댓글 알림</em><div class="ToggleSwitch ToggleSwitch--skinGray"><input id="2" type="checkbox" class="switch_input blind"><label for="2" class="switch_slider"><span class="blind">등록</span></label></div></div><div class="ToggleSwitchTooltip"><div class="tooltip" style="display: none;">
                이 글에 새 댓글이 등록되면 내소식에서 알림을 받을 수 있습니다.
            </div></div></div></div><!----><!----><div data-v-afadf0bc="" class="CommentWriter"><div data-v-afadf0bc="" class="comment_inbox"><strong data-v-afadf0bc="" class="blind">댓글을 입력하세요</strong><em data-v-afadf0bc="" class="comment_inbox_name">김송류</em><textarea data-v-afadf0bc="" placeholder="댓글을 남겨보세요" rows="1" class="comment_inbox_text" style="overflow: hidden; overflow-wrap: break-word; height: 17px;"></textarea><!----><!----></div><div data-v-afadf0bc="" class="comment_attach"><div data-v-afadf0bc="" class="attach_box"><label data-v-2ec5a274="" data-v-afadf0bc="" for="attach3" class="button_file">
    
    <svg data-v-2ec5a274="" aria-label="사진첨부" class="svg-icon ico-post-photo-323232"><use data-v-2ec5a274="" xlink:href="#ico-post-photo-323232" aria-hidden="false"></use></svg><input data-v-2ec5a274="" id="attach3" type="file" title="사진첨부" accept="image/*, image/heic" class="blind"></label><a data-v-afadf0bc="" href="#" role="button" class="button_sticker"><svg data-v-afadf0bc="" aria-label="스티커첨부" class="svg-icon ico-post-sticker-323232"><use data-v-afadf0bc="" xlink:href="#ico-post-sticker-323232" aria-hidden="false"></use></svg></a><!----></div><div data-v-afadf0bc="" class="register_box"><!----><a data-v-afadf0bc="" href="#" role="button" class="button btn_register">등록</a></div></div></div><!----></div><!----></div></div>
                    
                    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-8">
                    <!-- Blog Detail Start -->
                    
                    <div class="mb-5">
                        <div class="section-title section-title-sm position-relative pb-3 mb-4">
                            <h3 class="mb-0">Comments</h3>
                        </div>
                        <div class="d-flex mb-4">
                            
                            <div class="ps-3">
                                <h6><a href="">임현지</a> <small><i>05 24 2023</i></small></h6>
                                <p>김송류 짱!</p>
                                <button class="btn btn-sm btn-light">Reply</button>
                            </div>
                        </div>
                        <div class="d-flex mb-4">
                            
                            <div class="ps-3">
                                <h6><a href="">한재철</a> <small><i>01 23 2023</i></small></h6>
                                <p>김송류 최고</p>
                                <button class="btn btn-sm btn-light">Reply</button>
                            </div>
                        </div>
                        
                    </div>
                    <!-- Comment List End -->
    
                    <!-- Comment Form Start -->
                    <div class="bg-light rounded p-5">
                        <div class="section-title section-title-sm position-relative pb-3 mb-4">
                            <h3 class="mb-0">Leave A Comment</h3>
                        </div>
                        <form>
                            <div class="row g-3">
                                <div class="col-12 col-sm-6">
                                    <input type="text" class="form-control bg-white border-0" placeholder="Name" style="height: 55px;">
                                </div>
                                
                                
                                <div class="col-12">
                                    <textarea class="form-control bg-white border-0" rows="5" placeholder="Comment"></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Leave Your Comment</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Comment Form End -->
                </div>
    
                <!-- Sidebar Start -->
                <div class="col-lg-4">
                    <!-- Search Form Start -->
                    <div class="mb-5 wow slideInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
                        <div class="input-group">
                            <input type="text" class="form-control p-3" placeholder="Keyword">
                            <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                        </div>
                    </div>
                    <!-- Search Form End -->
    
                    <!-- Category Start -->
                    
                    <!-- Category End -->
    
                    <!-- Recent Post Start -->
                    <div class="mb-5 wow slideInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
                        <div class="section-title section-title-sm position-relative pb-3 mb-4">
                            <h3 class="mb-0">Recent Post</h3>
                        </div>
                        <div class="d-flex rounded overflow-hidden mb-3">
                            
                            <a href="" class="h5 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0">Lorem ipsum dolor sit amet adipis elit
                            </a>
                        </div>
                        <div class="d-flex rounded overflow-hidden mb-3">
                            
                            <a href="" class="h5 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0">Lorem ipsum dolor sit amet adipis elit
                            </a>
                        </div>
                        <div class="d-flex rounded overflow-hidden mb-3">
                            
                            <a href="" class="h5 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0">Lorem ipsum dolor sit amet adipis elit
                            </a>
                        </div>
                        <div class="d-flex rounded overflow-hidden mb-3">
                            
                            <a href="" class="h5 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0">Lorem ipsum dolor sit amet adipis elit
                            </a>
                        </div>
                        <div class="d-flex rounded overflow-hidden mb-3">
                            
                            <a href="" class="h5 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0">Lorem ipsum dolor sit amet adipis elit
                            </a>
                        </div>
                        
                    </div>
                    <!-- Recent Post End -->
    
                    <!-- Image Start -->
                    <div class="mb-5 wow slideInUp" data-wow-delay="0.1s" style="visibility: hidden; animation-delay: 0.1s; animation-name: none;">
                        <img src="img/blog-1.jpg" alt="" class="img-fluid rounded">
                    </div>
                    <!-- Image End -->
    
                    <!-- Tags Start -->
                    
                    <!-- Tags End -->
    
                    <!-- Plain Text Start -->
                    
                    <!-- Plain Text End -->
                </div>
                <!-- Sidebar End -->
            </div>
        </div>
    </div>
    
    
                    <!-- Blog Detail End -->
</body>
</html>