$(function(){

	var search_list = $('.items-box-content')

	function appendItem(item){
	var html = `<section class="items-box">
							  <a href="/items/${item.id}" %>
							    <figure class="items-box-photo">
							       <img src="${item.images[0]}" %>
							    </figure>
							    <div class="items-box-body">
							      <h3 class="items-box-name font-2">
							        ${item.name}
							      </h3>
							      <div class="items-box-num clearfix">
							        <div class="items-box-price font-5">
							          ¥ ${item.price}
							        </div>
							        <div class="items-box-likes font-2">
							          <i class="far fa-heart gray"></i>
							          <span>13</span>
							        </div><br>
							        <p class="items-box-tax">(税込)</p>
							      </div>
							    </div>
							  </a>
							</section>
				`
	  search_list.append(html);
	}

	function appendNoItems(blog){
	var html = `<li>
				  ${blog}
				</li>

				`
	  search_list.append(html);
	}

	$("#item-search-form").on("keyup", function(){
		var input = $(this).val();
		console.log(input)
		
		if (input.length !== 0) {
		$.ajax({
			type: 'GET',
			url: '/items/search',
			data: {keyword : input},
			dataType: 'json'
		})
		.done(function(json){
			$(".items-appender").empty();
			if (json.length !== 0){
				console.log(json)
				json.forEach(function(item){
				  appendItem(item);
				});
			} else {
				appendNoItems("一致する映画はありません");
			}
		 })
		 .fail(function(){
		 alert('検索失敗')
	  })
		}
	});
});