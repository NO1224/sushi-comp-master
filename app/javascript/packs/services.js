// 全ボタン要素を取得
const buttons = document.querySelectorAll('#button');
// id = "service-content-display"の要素を取得
const serviceContentDisplay = document.getElementsById("#service-content-display");
// 表示したいHTML要素を作成(innerHTML)


// 押したボタンのid名取得
for(let i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener('click', function(){contentSwitch(i)})
};

// 押したボタンに応じて内容を切替
// ハッシュデータに応じた表示（category:）
function contentSwitch(i) {
  alert('id名「' + i + '」のボタンを押しました。');
  if (i == 0){}
  else if (i == 1){}
  else{}
};