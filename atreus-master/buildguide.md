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
 1. コンスルーピン（12ピン）2本  
  ![con](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/12con.jpg)  
 1. ProMicro  
  
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
  ![rs](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/06rs.jpg)    
  裏側は折り曲げるか、ニッパーでカットしてください。    
  
 3.ProMicro
  コンスルーをPCB表面、白枠内に設置して下さい。
  ※上にあるピンは通常使いません。
  ![pm](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/05con.jpg)    
  
  コンスルーは穴までの幅が狭い方がProMicro側のようです。  
  ![con2](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/07con.jpg)  
  
  穴の面を同じ方に揃えて、上からハンダしてください。  
  ![con3](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/09con.jpg)  
  
  ※もげマイクロ対策について  
  ![moge](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/08moge.jpg)  
  2液混合の粘度が高い接着剤などで固定して下さい。  
  私のオススメはホットメルトです。多少不恰好ですが、簡単に付けられるのと、すぐに作業できるので便利です。
  
4.スイッチ  
  好きなgateron、MX互換品かkailhロープロの  
  ![sw2](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/03sw.jpg)  
   5軸を使ってください。gateron系だとしっかりハマりますが、ロープロは緩めなので  
   表からマスキングテープ等で固定しながらの作業をお勧めします。

5.アクリルケース  
  大きいアクリルに短いネジで六角スペーサーを取り付けます。
  ![neji](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/10neji.jpg)  
     
  六角スペーサーは下記の順番です。写真を見たほうがわかりやすいと思います。
  1. PCBの載る内側が1番短いもの  
  1. 外周の6本が2番目の長さのもの  
  1. 外周奥側中心2本が長いもの  
  ![ac](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/11sp.jpg)  
  
  スペーサーが設置出来たらPCBを短いネジで載せます。ネジの取り付け上、  
  キーキャップは最後に乗せたほうがいいです。  
  ![ac2](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/12on.jpeg)  
  
  PCBを設置したら、手前コの字型の枠を載せます。
  ![ac3](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/13.jpg)  
  ※この時、奥側の2本はねじ止めしません。  
  
  最後に奥側の枠を載せます。左右のネジは長いネジです。  
  ![kansei](https://github.com/yohewi/NumAtreus/blob/master/JPG_buildguid/01.jpg)    
    
    
完成！  
お疲れ様でした！！  
