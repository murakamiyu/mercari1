// $(function(){
//   var search_list = $('#item-search-result')

//   function appendItemList(item){
//    var html =`<div class="input-default">
//                 <p>${item.name}</p>
//               </div>
//              `
//    search_list.append(html);
//   }

//   function appendNoItem(nasi) {
//    var html =`<div class="chat-group-user">
//                 <p class="chat-group-user__name">${nasi}</p>
//               </div>
//              `
//    search_list.append(html);
//    console.log(html);
//   }

//   $('#item-search-form').on('keyup', function(){
//     var input = $(this).val();
//     console.log(input)
    
//     if (input.length !== 0 ) {
//       $.ajax({
//         type: 'GET',
//         url: '/items/search',
//         data: {keyword : input} ,
//         dataType: 'json'
//       })
//       .done(function(json){
//         $('#item-search-result').empty();
        
//         if (json.length !== 0) {
//         json.forEach(function(item){
//           console.log(json);
//           appendItemList(item);
//         })
//         } else {
//           appendNoItem('なし');
//         }
//       })
//       .fail(function() {
//         alert("検索は失敗しました");
//       })
//      }
//    });

//   // $("#user-search-result").on('click', ".chat-group-user__btn--add",function(){
//   //    var userIdName = $(".user-search-add").data();
//   //    $(this).parent().remove();
//   //    appendMember(userIdName);
//   // })

// });



// // <a class="user-search-add chat-group-user__btn search-add chat-group-user__btn--add" data-user-id="${item.id}" data-user-name="${item.name}">追加</a>