// 全ボタン要素を取得
const buttons = document.querySelectorAll('#button');
// 押したボタンのid名取得
for(let i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener('click', function(){contentSwitch(i)})
};

// 押したボタンに応じて内容を切替
function contentSwitch(i) {
  alert('id名「' + i + '」のボタンを押しました。');
  if (i == 0){}
};