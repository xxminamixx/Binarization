PImage img;
boolean judge = true;

void setup() {
  size(200, 200);
  selectInput("Select a file to process:", "fileSelected");
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } 
  else {
    img = loadImage(selection.getName());
    img.filter(THRESHOLD, 0.5);
  }
}

void draw() {
  // 背景色
  background(#ffffee);
  // 塗りつぶし色
  fill(#d0d0f0);
  // 二値化


  // 画像の表示
  if(img != null){
  image(img, 0, 0, 200,200);
  }

  // ファイル保存
  if (judge == true && img != null) {
    save("apple.png");
      judge = false;
  }
}

