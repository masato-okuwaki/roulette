$(document).on('turbolinks:load', function() {

  function buildCategory(category) {
    var html = `
      <div class="selectbox_js">
        <ul>
          <li><a class: "selectbox_list" href="${category.url}">${category.name}</a></li>
        <ul>
      </div>`;
    return html;
  };

  function buildEffect() {
    var html = `
      <div class="selectbox_js">
        <ul>
          <li><a class: "selectbox_list" href="">aaa</a></li>
        <ul>
      </div>`;
    return html;
  };

  function selectCategory(){
     $.ajax({
       url: "roulette/search",
       type: 'GET',
       dataType: 'json'
     })
     .done(function(data){
       console.log(data);
         var html = buildCategory(data);
         $(".selectbox").html(html);
         $(".selectbtn").prop('disabled', false);
      })
     .fail(function(){
       alert('お店検索に失敗しました')
     })
   };

    var status = true;
    $(".selectbtn").on("click", function(){
      if(status) {
        status = false;
        $(this).text("STOP");
        $(".selectbox").html("ぷるるるるるるるるるるる");
    } else {
      status = true;
      $(this).text("START");
      selectCategory();
    }
    });

    $(function() {
      winW = $(window).width();
      spped = 2600;
      $('#move-line1').animate({
          width: winW
      }, spped);
  });

});
