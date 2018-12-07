LK.pluginFontSize = 16;
LK.rowHeight = 38;

/**
 * 初始化标题
 * @param title I18N标题
 * @param param 参数
 * @param originalText 是否使用原文
 */
LK.initTitle = function(title, param, originalText) {
  $('.title-back').click(function() {
    LK.GoBack(param);
  });
  if (Array.isArray(title)) {
    var titleText = '';
    for (var i = 0; i < title.length; i++) {
      titleText += originalText == true ? title[i] : $.LKGetI18N(title[i]);
    }
    $('.title .title-text').html(titleText);
  } else {
    $('.title .title-text').html(originalText == true ? title : $.LKGetI18N(title));
  }
};

/**
 * 初始化列表项
 * @param itemId 列表项ID
 * @param title 列表项I18N标题
 * @param linkUrl 列表项点击跳转地址
 * @param param 参数
 * @param originalText 是否使用原文
 */
LK.initListItem = function(itemId, title, linkUrl, param, originalText) {
  var $item = $('#' + itemId);
  $item.children('.list-item-text').html(originalText == true ? title : $.LKGetI18N(title));
  $item.click(function() {
    LK.Go(linkUrl, param);
  });
};

/**
 * 创建列表对象
 * @param $content 容器对象
 * @param arr JSON数组
 * @param originalText 是否使用原文
 * @param configs 配置项
 */
LK.createItems = function($content, arr, originalText, configs) {
  configs = $.extend(true, {
    imgUrl : 'imgUrl',
    title : 'title',
    linkUrlPrefix : 'linkUrlPrefix',
    linkUrl : 'linkUrl',
    param : 'param'
  }, configs);

  $(arr).each(function() {
    var itemId = 'item' + randomInRange(10000, 99999);

    var $item = $('<div class="list-item" id="' + itemId + '"></div>').appendTo($content);

    if (this[configs.imgUrl]) {
      $item.append('<div class="list-item-img"><img src="' + _IMG + '/icons/' + this[configs.imgUrl] + '"></img></div>');
    }
    $item.append('<div class="list-item-text"></div>');
    $item.append('<div class="list-item-next"><img src="' + _IMG + '/next.png" /></div>');

    (function(itemId, json) {
      LK.initListItem(itemId, json[configs.title], json[configs.linkUrlPrefix] + json[configs.linkUrl], json[configs.param], originalText);
    })(itemId, this);

  });
};

/**
 * 滑动加载数据
 * @param key 全局变量名
 * @param url 数据请求地址
 * @param data 数据请求参数
 * @param addData 新增数据回调方法。回传当前行数据。
 */
LK.scrollDatas = function(key, url, data, addData) {
  window[key] = {
    pageNumber : 0,
    isLastPage : false,
    scrollDatas : function() {
      if (window[key].isLastPage) {
        LK.toast($.LKGetI18N('No more datas'));
        return;
      }
      LK.ajax({
        url : url,
        data : $.extend({
          pageNumber : window[key].pageNumber
        }, data),
        success : function(responseDatas) {
          if (responseDatas.content) {
            window[key].isLastPage = responseDatas.last;
            window[key].pageNumber = responseDatas.number + 1;
            if (responseDatas.content.length != 0) {
              $('body').attr('style', "");
              for (var i = 0; i < responseDatas.content.length; i++) {
                addData(responseDatas.content[i]);
              }
            }
          } else {
            window[key].isLastPage = responseDatas.length == 0;
            window[key].pageNumber++;
            if (responseDatas.length != 0) {
              $('body').attr('style', "");
              for (var i = 0; i < responseDatas.length; i++) {
                addData(responseDatas[i]);
              }
            }
          }
        }
      });
    }
  };

  window[key].scrollDatas();

  $(window).scroll(function() {
    if ($(this).scrollTop() + $(this).height() >= $(document).height()) {
      window[key].scrollDatas();
    }
  });
};
