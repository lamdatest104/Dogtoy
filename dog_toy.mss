#include "lambda.h"

/*
　文字列は imgSetCurrent で有効になっているイメージに描画される。
*/
main()
{
	var type, x, y;
	var txt;
	var img, img2;
	var x1,y1,flag1;
	SprSetLevel(9);
	txt = imgCreate(640,480,1,0);
	imgSetCurrent(txt);
	imgFill(31, 31, 31);
	img = imgLoad("garagara.png", 2, 0);
	img2 = imgLoad("gara1.png", 4, 0);
	x1=460;y1=20;
	imgSetCurrent(img2);
	imgSetPos(460, 20);
	mosClear();
		sprRenderScreen();
	sndSetCurrent(sndLoad("gara.wav", 3));
	while(1)
	{
		while(mosGet(type, x, y))
		{
			if(type == MOS_LEFT)
				{flag1+=1;
				sndPlay(0);
				mosClear();
				}
		}
				if((flag1 > 0)&&(flag1 < 10)){
				x1=460;y1=20;
				imgSetCurrent(img2);
				imgSetPos(x1, y1);
				flag1+=1;
				}else if((flag1 > 9)&&(flag1 < 20)){
				x1+=2;y1+=2;
				imgSetCurrent(img2);
				imgSetPos(x1, y1);
				flag1+=1;
				}else if((flag1 > 19)&&(flag1 < 30)){
				x1-=2;y1-=2;
				imgSetCurrent(img2);
				imgSetPos(x1, y1);
				flag1+=1;
				}else{
				flag1=0;
				}
		timeWait();
		sprRenderScreen();
	}
}