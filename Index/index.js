$(document).ready(function () {


  // 新手提示
  $('#dontshow').click(function () {
    $('#new_user_to_show').slideUp();
    $.cookie('new_user', '0', { expires: 365 });
  })
  if (!$.cookie('new_user')) {
    $('#new_user_brand').slideDown();
  }




  // 搜索联想
  var getSearchData = function (search_str) {
    $.ajax({
      type: "GET",
      url: "https://suggest.taobao.com/sug?area=etao&code=utf-8&callback=search_data&q=" + search_str,
      dataType: "jsonp",
      jsonpCallback: "search_data",
      success: function (data) {
        console.log(data);
        var search_res = [];
        data.result.forEach(element => {
          search_res.push(element[0]);
        });
        $('#associative_list').empty();
        if (search_res.length === 0) {
          $('#associative_box').hide();
        } else {
          $('#associative_box').show();
          for (let i = 0; i < search_res.length; i++) {
            let search_tpl = `<li class="associative_item">${search_res[i]}</li>`;
            $('#associative_list').append(search_tpl);
          }
        }
      }
    });
  }

  $('#search_input').bind('input propertychange', function () {
    let str = $('#search_input').val();
    if (str.trim() !== '') {
      getSearchData(str);
    } else {
      $('#associative_box').hide();
    }
  });

  $('#search_input').focus(function () {
    if ($('#search_input').val().trim() !== '') {
      getSearchData($('#search_input').val());
    }
  })

  $('#search_input').blur(function () {
    setTimeout(() => {
      $('#associative_box').hide();
    }, 100);
  })

  $('#associative_list').on('click', '.associative_item', function () {
    $('#search_input').val($(this).text());
    $('#associative_box').hide();
  })



  // 点击跳转
  $(".item").click(function () {  
    window.location.href = loca+'/Item.action?' + 'itemid=' + $(this).attr("item-id");
  })

});