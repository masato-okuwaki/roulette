$(document).on('turbolinks:load', function() {

  function buildHTML(category) {
    var html = `
      <div class="selectbox_js">
        <ul>
          <li><a class: "selectbox_list" href="${category.url}">${category.name}</a></li>
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
         var html = buildHTML(data);
         $(".selectbox").html(html);
         $(".selectbtn").prop('disabled', false);
      })
     .fail(function(){
       alert('お店検索に失敗しました')
     })
   };

   function checkBox() {
   }

    var status = true;
    $(".selectbtn").on("click", function(){
      if(status) {
        status = false;
        $(this).text("STOP");
        selectCategory();
    } else {
      status = true;
      $(this).text("START");
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
