// 全ボタン要素を取得
const buttons = document.querySelectorAll('.service-condition');
// 押したボタンのid名取得
for(let i = 0; i < buttons.length; i++) {
buttons[i].addEventListener('click', function(){
  alert('id名「' + i + '」のボタンを押しました。');
})};

// 押したボタンに応じて内容を切替
function contentSwitch(){

};