#NumAtreus buildguide  
 - 40%一体型キーボードNumAtreusのビルドガイドです。  
 - ケースはアクリルバージョンです。3Dプリントバージョンはキット添付の同人誌を参照してください。  
 - Atreus_numaキーボードも大体同じ構成で組み立てられます。※QMKは別です。  
  
  ![01](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/01.jpg)
  
#作業準備編  
【用意するものについて】  
 - 材料  
 - キット一式
　キットに含まれていない材料は遊舎工房さんにあるので好きなものを選んで下さい。
 - キースイッチ42個
　　PCB表面実装用の５本足のもの！  
  「kailhのchoco」か「Gateron互換」！3ピンでも頑張ればいける。  
  ![02](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/02.jpg)  
- キーキャップ1セット or 42個  
　　勿論キースイッチに合ったものを用意してください。  
- コンスルーピン（12ピン）2本  推奨です。
  ![con](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/12con.jpg)  

QMKはこちらです。  
https://github.com/yohewi/qmk_firmware/tree/master/keyboards/NumAtreus  
  
  
#道具  
  
 - 温度調節付きハンダゴテ/スタンド  
　　温度調節できるのがベター。本品にLEDは無いので電子部品向けの固定でも大丈夫。  
 - はんだ  
　　電子系の温度が200℃以下のが良いと思う。  
 - はんだガス吸引器  
　　できればあった方がいい。煙はあなたの健康を損なう恐れがあります。  
    ない場合は十分な換気を。  
 - マスキングテープ  
　　100均等の安いやつ。  
 - ニッパー  
　　ダイオードの足を切るやつ。  
 - ドライバー  
　　ケース用
 - 手元ライト

#始める前の準備  
 - キットの中身確認  
 1. 基板（PCB）1枚（黒いやつ）  
 1. アクリルケース（3種類）  
 1. ダイオード　約42本（足の長いやつ）  
 1. ネジ2種類28本
 1. スペーサー3種類  
 ※ProMicroは添付されるか未定。  
  
※準備するものは、サリチル酸さんのところに書いてあるのが一番よくできてたのでぜひこちらを一読すると良いと思います。  
  salicylic-acid3.hatenablog.com  
  
  
#組み立て  
基本的に順番はありませんが、下記の順で作るとハンダし易いと思います。  
・ダイオード→リセットスイッチ→ProMicro→スイッチ→アクリルケース  
  
 1. ダイオード  
 ダイオードは6-8mm幅で『コ』の字型に曲げてください。
 下記の部品を使うと曲げ易いです。
  ![d](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/13d.jpg)    
  植え方は、表面からマーク側を PCBの四角い方(上側)に刺します。※実装は次項リセットの写真を参照  
  ![omote](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/04omote.jpg)  


ハンダ後は、アクリルに当たらないようニッパーでバチバチカットして下さい。

 

2.リセットスイッチ

表面ProMicroの左上にあります。

裏側は折り曲げるか、ニッパーでカットしてください。

f:id:Agent_Y:20190405120725j:image

 

3.ProMicro

コンスルーをPCB表面、白枠内に設置して下さい。

※上にあるピンは通常使いません。

f:id:Agent_Y:20190405115803j:image

コンスルーは穴までの幅が狭い方がProMicro側のようです。

f:id:Agent_Y:20190405120855j:image

穴の面を同じ方に揃えて、上からハンダしてください。

f:id:Agent_Y:20190405121046j:plain




 

※もげマイクロ対策について

f:id:Agent_Y:20190405121129j:image

2液混合の粘度が高い接着剤などで固定して下さい。

私のオススメはホットメルトです。多少不恰好ですが、簡単に付けられるのと、すぐに作業できるので便利です。

 

※QMKはこちらです。

https://github.com/yohewi/qmk_firmware/tree/master/keyboards/NumAtreus

f:id:Agent_Y:20190405132158p:plain




 

 

4.スイッチ

一旦ProMicroを外しておくことをお勧めします。

f:id:Agent_Y:20190405112104j:image

   gateron、MX互換品かkailhロープロの

   5軸を使ってください。gateron系だとしっかりハマりますが、ロープロは緩めなので表からマスキングテープ等で固定をお勧めします。

