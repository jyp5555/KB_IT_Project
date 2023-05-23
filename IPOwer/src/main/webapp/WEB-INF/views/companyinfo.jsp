<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <title>정원 관리 블로그 및 게시판 템플릿 | WIX</title>
    
    <!-- BEGIN SENTRY -->
    <script id="sentry">
  (function(c,u,v,n,p,e,z,A,w){function k(a){if(!x){x=!0;var l=u.getElementsByTagName(v)[0],d=u.createElement(v);d.src=A;d.crossorigin="anonymous";d.addEventListener("load",function(){try{c[n]=r;c[p]=t;var b=c[e],d=b.init;b.init=function(a){for(var b in a)Object.prototype.hasOwnProperty.call(a,b)&&(w[b]=a[b]);d(w)};B(a,b)}catch(g){console.error(g)}});l.parentNode.insertBefore(d,l)}}function B(a,l){try{for(var d=m.data,b=0;b<a.length;b++)if("function"===typeof a[b])a[b]();var e=!1,g=c.__SENTRY__;"undefined"!==
  typeof g&&g.hub&&g.hub.getClient()&&(e=!0);g=!1;for(b=0;b<d.length;b++)if(d[b].f){g=!0;var f=d[b];!1===e&&"init"!==f.f&&l.init();e=!0;l[f.f].apply(l,f.a)}!1===e&&!1===g&&l.init();var h=c[n],k=c[p];for(b=0;b<d.length;b++)d[b].e&&h?h.apply(c,d[b].e):d[b].p&&k&&k.apply(c,[d[b].p])}catch(C){console.error(C)}}for(var f=!0,y=!1,q=0;q<document.scripts.length;q++)if(-1<document.scripts[q].src.indexOf(z)){f="no"!==document.scripts[q].getAttribute("data-lazy");break}var x=!1,h=[],m=function(a){(a.e||a.p||a.f&&
  -1<a.f.indexOf("capture")||a.f&&-1<a.f.indexOf("showReportDialog"))&&f&&k(h);m.data.push(a)};m.data=[];c[e]=c[e]||{};c[e].onLoad=function(a){h.push(a);f&&!y||k(h)};c[e].forceLoad=function(){y=!0;f&&setTimeout(function(){k(h)})};"init addBreadcrumb captureMessage captureException captureEvent configureScope withScope showReportDialog".split(" ").forEach(function(a){c[e][a]=function(){m({f:a,a:arguments})}});var r=c[n];c[n]=function(a,e,d,b,f){m({e:[].slice.call(arguments)});r&&r.apply(c,arguments)};
  var t=c[p];c[p]=function(a){m({p:a.reason});t&&t.apply(c,arguments)};f||setTimeout(function(){k(h)})})(window,document,"script","onerror","onunhandledrejection","Sentry","b4e7a2b423b54000ac2058644c76f718","https://static.parastorage.com/unpkg/@sentry/browser@5.27.4/build/bundle.min.js",{"dsn":"https://b4e7a2b423b54000ac2058644c76f718@sentry.wixpress.com/217"});
  </script>

    <script type="text/javascript">
    window.Sentry.onLoad(function () {
      window.Sentry.init({
        "release": "1.2033.0",
        "environment": "production",
        "allowUrls": undefined,
        "denyUrls": undefined
});
      window.Sentry.configureScope(function (scope) {
        scope.setUser({
          id: "null-user-id:9ca23245-2677-4ef7-9e1f-6e2af4eb7b2b",
          clientId: "9ca23245-2677-4ef7-9e1f-6e2af4eb7b2b",
        });
        scope.setExtra("user.authenticated", false);
        scope.setExtra("sessionId", "5056ed79-d3f9-4c97-92b0-803926719d1d");
      });
    });
    </script>
    <!-- END SENTRY -->
    <script src="https://static.parastorage.com/polyfill/v3/polyfill.min.js?features=default,es6,es7,es2017,es2018,es2019,fetch&flags=gated&unknown=polyfill"></script>

    <script>
      window.onWixFedopsLoggerLoaded = function () {
        window.fedopsLogger && window.fedopsLogger.reportAppLoadStarted('marketing-template-viewer');
      }
    </script>
    <script onload="onWixFedopsLoggerLoaded()" src="//static.parastorage.com/unpkg/@wix/fedops-logger@5.471.0/dist/statics/fedops-logger.bundle.min.js" crossorigin></script>

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    
    <link type="image/x-icon" href="//www.wix.com/favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" href="https://static.parastorage.com/services/third-party/fonts/Helvetica/fontFace.css">
    <link rel="stylesheet" href="https://static.parastorage.com/unpkg/@wix/wix-fonts@1.14.0/madefor.min.css">
    <link rel="stylesheet" href="https://static.parastorage.com/unpkg/@wix/wix-fonts@1.14.0/madeforDisplay.min.css">
    <link rel="stylesheet" href="//static.parastorage.com/services/marketing-template-viewer/1.2033.0/app.min.css">

    <meta name="description" content="어반 파밍과 같은 도심 속의 친환경 프로젝트 게시판이 필요하다면 본 템플릿을 이용해보세요. 텍스트 및 이미지로 친환경 메시지를 전달하고 게시판을 운영하여 온라인 커뮤니티를 구축할 수 있습니다. 내 사이트만의 스토리를 공유하여 다양한 주제의 토론도 시작해보세요.">
    <meta name="author" content="Wixpress">
    <meta http-equiv="content-language" content="ko"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>

    <meta property="og:title" content="정원 관리 블로그 및 게시판 템플릿 | WIX"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="https://ko.wix.com/website-template/view/html/2168"/>
    <meta property="og:image" content="//static.wixstatic.com/media//templates/image/1d19927958398d84fe098d15108cb2d299cf4e037caf8441e730bff88f931f66.jpg"/>
    <meta content="Wix" property="og:site_name">
    <meta property="og:description" content="어반 파밍과 같은 도심 속의 친환경 프로젝트 게시판이 필요하다면 본 템플릿을 이용해보세요. 텍스트 및 이미지로 친환경 메시지를 전달하고 게시판을 운영하여 온라인 커뮤니티를 구축할 수 있습니다. 내 사이트만의 스토리를 공유하여 다양한 주제의 토론도 시작해보세요."/>
    <meta property="fb:admins" content="731184828"/>
    <meta name="fb:app_id" content="236335823061286"/>
    <meta name="google-site-verification" content="QXhlrY-V2PWOmnGUb8no0L-fKzG48uJ5ozW0ukU7Rpo"/>

    <link rel="canonical" href="https://ko.wix.com/website-template/view/html/2168"/>

    <link rel="alternate" hreflang="fr" href="https://fr.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="pt" href="https://pt.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="cs" href="https://cs.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="it" href="https://it.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="nl" href="https://nl.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="ko" href="https://ko.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="de" href="https://de.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="ru" href="https://ru.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="sv" href="https://sv.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="tr" href="https://tr.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="da" href="https://da.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="en" href="https://www.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="es" href="https://es.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="hi" href="https://hi.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="ja" href="https://ja.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="no" href="https://no.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="pl" href="https://pl.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="vi" href="https://vi.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="uk" href="https://uk.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="zh" href="https://zh.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="th" href="https://th.wix.com/website-template/view/html/2168"/>
    <link rel="alternate" hreflang="x-default" href="https://www.wix.com/website-template/view/html/2168" />

  </head>
  <body>
    <script>
      window.onWixRecorderLoaded = function () {
        window.dispatchEvent(new Event('wixRecorderReady'));
      };
    </script>

    <script async src="//static.parastorage.com/unpkg-semver/wix-recorder/app.bundle.min.js"
      crossorigin onload="onWixRecorderLoaded()"></script>

    <script src="//static.parastorage.com/services/cookie-sync-service/1.347.4/embed-cidx.bundle.min.js"></script>
    <script src="//static.parastorage.com/services/tag-manager-client/1.705.0/hostTags.bundle.min.js"></script>
    <div id="root"><div data-hook="app"><div data-hook="tool-bar" class="sbWfkE"><div class="Mn4893"><div class="bZOLNF"><a data-hook="logo" href="/" class="nHuSJZ"><span class="AV8G6s">wix.com</span></a></div><div class="wKSaYa"><button data-hook="desktop-view" class="is65hl sdsgLW"><span class="XFdFwl">데스크톱뷰 보기</span></button><hr class="hS1yv1"/><button data-hook="mobile-view" class="fB70N2"><span class="XFdFwl">모바일뷰 보기</span></button></div></div><div class="TYXuEX"><div class="RyxoSg"><p data-hook="tool-bar-title" class="VaexPL">Click edit and create your own amazing website</p><a data-hook="info-view" class="bggdgE" tabindex="0" role="dialog" href="#">자세히 보기</a><a class="Ydu4WK" data-hook="editor-link" href="https://manage.wix.com/edit-template/from-intro?originTemplateId=25031f5c-5758-4035-88bc-4486d41b727b&amp;editorSessionId=8dd6269b-a62d-480d-98e5-8b5fada27d24" target="_blank" tabindex="0">시작하기</a></div></div></div><div data-hook="template-demo" class="CJ4D6R"><div data-hook="desktop-view" class="Woz8P7 pLF8IX"><iframe data-hook="desktop-iframe" src="https://www.wix.com/demone2/urban-farming-forum" title="정원 관리 블로그 및 게시판" width="100%" height="100%" class="eZTjsa"></iframe></div></div><div data-hook="info-pop-up" class="M05QSQ"><div class="E0wHmq"><button data-hook="card-close" class="eds_d0"><span class="ydbrSa">정보 닫기</span></button><div class="qLnKwP"><h1 data-hook="card-title" class="PHJvhr">정원 관리 블로그 및 게시판 - Website Template</h1><div class="CEjC4K"><h3 data-hook="card-good-for-title" class="xqspyG">용도:</h3><p data-hook="card-good-for" class="gsbPc5">농업, 어반 파밍, 온라인 커뮤니티, 유기농, 친환경 등</p></div><div class="CEjC4K"><h3 class="xqspyG">설명</h3><p data-hook="card-description" class="gsbPc5">어반 파밍과 같은 도심 속의 친환경 프로젝트 게시판이 필요하다면 본 템플릿을 이용해보세요. 텍스트 및 이미지로 친환경 메시지를 전달하고 게시판을 운영하여 온라인 커뮤니티를 구축할 수 있습니다. 내 사이트만의 스토리를 공유하여 다양한 주제의 토론도 시작해보세요.</p></div></div><div class="KiqsRq"><a data-hook="card-editor-url" class="XpwCp3 sKD7vO" target="_blank" href="https://manage.wix.com/edit-template/from-intro?originTemplateId=25031f5c-5758-4035-88bc-4486d41b727b&amp;editorSessionId=8dd6269b-a62d-480d-98e5-8b5fada27d24">편집하기</a></div></div></div></div></div>
    <script>
      window.__BASEURL__ = "https:\u002F\u002Fko.wix.com\u002Fwebsite-template\u002Fview\u002Fhtml\u002F";
      window.__INITIAL_I18N__ = {"locale":"ko","resources":{"errorPage.templatesLinkText":"템플릿","template.viewer.page.title":"{{- title}} 템플릿 | WIX","template_button_label":"편집하기","template_seeFeatures_label":"전체 기능 보기","template_expand_examples_text":"용도","template_expand_header":"템플릿 기능","template.viewer.title":"Click edit and create your own amazing website","template.viewer.edit.button":"시작하기","template.viewer.use.button":"Use this template","template.viewer.read.more":"자세히 보기","template.viewer.more.info":"More Info","template.viewer.back":"뒤로","template.viewer.info.edit.button":"편집하기","template.viewer.price":"요금:","template.viewer.info.title":"{{- title}} - Website Template","template.viewer.info.goodFor":"용도:","template.viewer.info.description":"설명","template.viewer.info.desktop.only.notice":"해당 템플릿을 편집하려며 데스크톱 PC에서 Wix.com으로 이동하세요. 모든 템플릿은 자유자재로 편집하실 수 있습니다.","template.viewer.see.all.templates":"See All Templates","template.viewer.seeAllExpressions":"See all expressions","template.viewer.goToBiggerScreen":"To start designing, go to your desktop.","template.viewer.getStarted":"Get Started","template.viewer.startNow":"Start Now","template.viewer.features":"Features","template.viewer.allFeatures":"All Features","template.viewer.expressions":"Expressions","template.viewer.tutorials":"Tutorials","template.viewer.updatesAndReleases":"Updates & Releases","template.viewer.comingSoon":"Coming soon","template.viewer.academy":"Academy","template.viewer.editTemplate":"템플릿 편집","template.viewer.theme.default":"Site theme","template.viewer.theme.Dynamic":"Dynamic","template.viewer.theme.Savvy":"Savvy","template.viewer.theme.Vivid":"Vivid","template.viewer.theme.Mature":"Mature","template.viewer.theme.Contemporary":"Contemporary","template.viewer.theme.Laid-back":"Laid-back","template.viewer.theme.Bohemian":"Bohemian","template.viewer.theme.Fashionable":"Fashionable","template.viewer.theme.Technical":"Technical","template.viewer.theme.Energetic":"Energetic","template.viewer.theme.Nostalgic":"Nostalgic","template.viewer.theme.Natural":"Natural","template.viewer.theme.RetroVibrant":"RetroVibrant","template.viewer.theme.Warm":"Warm","template.viewer.theme.Eclectic":"Eclectic","template.viewer.theme.Creamy":"Creamy","template.viewer.theme.Tangy":"Tangy","template.viewer.theme.Placid":"Placid","template.viewer.sidebar.title":"Choose your theme","template.viewer.sidebar.description":"Start with one you like, you’ll be able to edit everything later.","template.viewer.sidebar.defaultTheme":"Default theme","template.viewer.sidebar.featuredThemes":"Featured themes","template.viewer.header.backToTemplates":"Back to Templates","a11y.desktop.button":"데스크톱뷰 보기","a11y.mobile.button":"모바일뷰 보기","a11y.close.popup.button":"정보 닫기","toolbar.tooltip.desktop":"1001px 이상","toolbar.tooltip.tablet":"751-1000px","toolbar.tooltip.mobile":"320-750px","errorPage.4xx.title":"검색한 템플릿을 찾을 수 없습니다.","errorPage.5xx.title":"템플릿을 불러올 수 없습니다.","errorPage.subTitle":"오류 {{- code }}","errorPage.4xx.details":"\u003Clink\u003E여기\u003C\u002Flink\u003E서 다른 템플릿을 검색 해 보세요. ","errorPage.5xx.details":"당사 측의 일시적인 기술 문제로 인해 현재 페이지를 로드하지 못했습니다.  잠시 후에 다시 시도해주세요.","errorPage.5xx.action":"새로고침"}};
      window.__INITIAL_STATE__ = {"viewMode":"desktop","isInfoShown":false,"isEditButtonHidden":false,"template":{"title":"정원 관리 블로그 및 게시판","description":"어반 파밍과 같은 도심 속의 친환경 프로젝트 게시판이 필요하다면 본 템플릿을 이용해보세요. 텍스트 및 이미지로 친환경 메시지를 전달하고 게시판을 운영하여 온라인 커뮤니티를 구축할 수 있습니다. 내 사이트만의 스토리를 공유하여 다양한 주제의 토론도 시작해보세요.","image":"\u002Ftemplates\u002Fimage\u002F1d19927958398d84fe098d15108cb2d299cf4e037caf8441e730bff88f931f66.jpg","id":"2168","lng":"ko","price":"무료","docUrl":"https:\u002F\u002Fwww.wix.com\u002Fdemone2\u002Furban-farming-forum","editorUrl":"https:\u002F\u002Fmanage.wix.com\u002Fedit-template\u002Ffrom-intro?originTemplateId=25031f5c-5758-4035-88bc-4486d41b727b&editorSessionId=8dd6269b-a62d-480d-98e5-8b5fada27d24","goodFor":"농업, 어반 파밍, 온라인 커뮤니티, 유기농, 친환경 등","siteId":"35787068-71f2-4d5a-8e17-f85f35cbb836","metaSiteId":"25031f5c-5758-4035-88bc-4486d41b727b","editorSessionId":"8dd6269b-a62d-480d-98e5-8b5fada27d24","isResponsive":false,"url":"https:\u002F\u002Fwww.wix.com\u002Fdemone2\u002Furban-farming-forum"},"activeExperiments":["TemplateViewerHydrationRender","TemplateViewerCollapsibleSidebar","OpenTemplateInSameTabForDashboardFirstUsers"],"config":{"locale":"ko","dealerCmsTranslationsUrl":"\u002F\u002Fstatic.parastorage.com\u002Fservices\u002Fdealer-cms-translations\u002F1.6216.0\u002F","dealerLightboxUrl":"\u002F\u002Fstatic.parastorage.com\u002Fservices\u002Fdealer-lightbox\u002F2.0.260\u002F"}};
      window.__BI__ = {"siteId":"35787068-71f2-4d5a-8e17-f85f35cbb836","originUrl":"https:\u002F\u002Fko.wix.com\u002Fwebsite\u002Ftemplates\u002Fhtml\u002Fcommunities\u002Fonline-forum","editorSessionId":"8dd6269b-a62d-480d-98e5-8b5fada27d24"};
      window.__DEVICE__ = "desktop";
      window.__CONSENT_POLICY__ = {"essential":true,"functional":true,"analytics":true,"advertising":true,"dataToThirdParty":true};
    </script>

    <script src="//static.parastorage.com/unpkg/react@18.2.0/umd/react.production.min.js" crossorigin></script>
    <script src="//static.parastorage.com/unpkg/react-dom@18.2.0/umd/react-dom.production.min.js" crossorigin></script>
    <script src="//static.parastorage.com/services/cookie-consent-policy-client/1.717.0/app.bundle.min.js"></script>