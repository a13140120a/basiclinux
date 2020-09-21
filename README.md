# **linux(centos7) 入門攻略**  
* # 目錄  
* # vi及其他基礎觀念 點擊這裡->[目錄2](#200)
  * ## [切換介面](#001) #
  * ## [系統目錄](#002) #
  * ## [基本指令操作(cal、pwd、whoami、--help)](#003) #
  * ## [cd, ls](#004) #
  * ## [清除畫面(clear,reset)](#006) #
  * ## [history](#007) #
  * ## [shell 萬用字元(wildcard)](#008) #
  * ## [mkdir,rmdir](#009) #
  * ## [touch,rm,cp](#011) #
  * ## [cat,head,tail](#015) #
  * ## [du,df](#017) #
  * ## [echo,wc](#018) #
  * ## [which,type,file](#019) #
  * ## [alias](#020) #
  * ## [find](#021) #
  * ## [>: 資料流倒出符號](#022) #
  * ## [pipe,tee](#023) #
  * ## [seq, sort](#024) #
  * ## [split , cat](#025) #
  * ## [paste , join](#026) #
  * ## [cut](#027) #
  * ## [tr](#028) #
  * ## [awk](#029) #
  * ## [sed](#030) #
  * ## [grep](#031) #
  
  <h2 id="200">目錄(續)</h2> 

  * ## [vi](#032) #
  

 ------
<h2 id="001">切換介面Shell</h2>  



* **切換文字介面**

  * `ctrl + alt + F2~F6 `

* **切換回圖形介面**

  * `ctrl + alt + F1`

* **登出**

  * `exit or logout`
* **常終止**
  * `ctrl + d`
* **非正常終止**
  * `ctrl + c`

<h2 id="002">linux系統目錄</h2>  

* **/home:家目錄**  

* **/root:root目錄**

* **/bin:存放系統常用基本指令的地方**

* **/sbin:僅供系統管理者執行的指令**

* **/lib:存放基本的共用函式庫檔案以及核心模組驅動**

* **/usr:全文為Unix Software Rescouse 目錄包含主要程序、圖形介面所需檔案、自行安裝的軟體、系統文件等等**

* **/tmp:存放暫存檔案，所有使用者對該目錄都具有讀寫權限**

* **/dev:鍵盤、滑鼠、硬碟、USB等設備皆以檔案或目錄方式存放於此，方便管理**

* **/etc:存放系統設定檔，如使用者帳戶資訊、主機名稱等等**

* **/var:存放長度可變的檔案，ex:伺服器LOG檔**

* **/sys:內涵檔案用來檢視及設定系統硬體資訊**

* **/mnt:光碟或其他媒體設備掛載點的地方 (系統透過掛載存取光碟or USB)**

* **/opt:作為OPTIONAL檔案漢城式的存放目錄，例如非預設安裝的外來軟體常會安裝於此**

<h2 id="003">基本指令操作</h2>  
  
* 以`.`表示當前目錄`..`表示上層目錄  
* 印出當前帳號  
    ```js
    whoami
    ```
* 印出當前所在目錄  
    ```js
    pwd
    ```
* 顯示當月月曆  
    ```js
    cal
    ```
* 顯示當月月曆 (每周從星期一開始)  
    ```js
    cal -m
    ```
* 顯示2019年 1月的月曆 (每周從星期一開始)  
    ```js
    cal -m 2019
    ```
* 查詢指令語法  
    ```js
    (指令) --help
    ```
* 將檔案或目錄名稱前加上 `.` 會變成隱藏檔  

<h1 id="004">cd</h1>  

  * 切換至根目錄
    ```js
    cd /
    ```
  * 切換至帳號的家目錄
    ```js
    cd ~
    ```
  * 切換至上層目錄
      ```js
    cd ..
    ```
  * 切換至上上層目錄
    ```js
    cd ../../
    ```
  * 切換至上次所在目錄
    ```js
    cd -
    ```
<h1 id="005">ls</h1>  

  * 以詳細資訊方式顯示 
    ```js
    ls -l
    ```
  * 顯示目錄本身
    ```js
    ls -d
    ```
  * 顯示隱藏檔
    ```js
    ls -a
    ```
  * 以易懂方式顯示檔案大小
    ```js
    ls -h
    ```
  * 反向排序顯示 or `--reverse`
    ```js
    ls -r
    ```
  * 依檔案大小排序
    ```js
    ls -S
    ```
  * 依修改時間排序
    ```js
    ls -t
    ```
  * 
<h2 id="006">清除畫面(clear,reset)</h2>  

* 可以往上捲動  
    ```js
    clear
    ```
* 無法往上捲動  
    ```js
    reset
    ```
<h2 id="007">history</h2>  

* 列出所有指令紀錄
    ```js
    history
    ```
* 列出最近五筆指令紀錄
    ```js
    history 5
    ```
* 刪除全部紀錄
    ```js
    history -c
    ```
* 刪除編號2的指令
    ```js
    history -d 2
    ```
* 執行上一個指令
    ```js
    !!
    ```
* 執行上一個wh開頭的指令
    ```js
    !wh
    ```
* 執行第5個指令
    ```js
    !5
    ```
* 執行倒數第六個指令
    ```js
    !-6
    ```
<h2 id="008">shell 萬用字元(wildcard)</h2>  

  * `*`:  比對0個以上任意字元  
    ```js
    c*   表以c開頭所有字元
    ```  
  * `?`:  比對剛好一個任意字元  
    ```js
    c??   表示以c開頭，長度為3的字元
    ```  
  * `[]`:  比對一個括號內任意字元  
    ```js
    file[159]   配對file1或file5或file9
    ```  
  * `[ - ]`:  比對在編碼順序範圍內的一個字元  
    ```js
    [0-9]   表示0到9之間任意一個字元
    ```  
    ```js
    [b-d]*   表示開頭為b或c或d的所有字元
    ```  
  * `[^]`: 不包含(反向比對)  
    ```js
    [^abc]   表示非a,b,c的其他任意一個字元
    ```  
  * `{,}`:  以逗號為間隔進行列舉  
    ```js
    cp {*.txt,*.jpg} /tmp   表示將所有txt及jpg檔複製到/tmp目錄下
    ```    
<h2 id="009">mkdir 創建目錄</h2>  

* `-p` 自動產生路徑串中尚未存在的目錄  
* 於當前目錄建立 dir1
    ```js
    mkdir dir1
    ```
* 於當前目錄內同時建立兩個目錄  
    ```js
    mkdir dir2 dir3
    ```
* 使用絕對路徑建立目錄  
    ```js
    /home/user1/dir4
    ```
* 若a及b及c原本都不存在就會建立  
    ```js
    mkdir -p a/b/c
    ```
* 總共生成三個目錄，dir5會生成在當下目錄  
    ```js
    mkdir /tmp/dir4 dir5 /tmp/dir4/a4
    ```  
<h2 id="010">rmdir 刪除空目錄(非空目錄不會被刪除)</h2>  

* `-p` 一次刪除階層式空目錄
* 只會刪除空目錄d3
    ```js
    rmdir d1/d2/d3
    ```  
<h2 id="011">touch 建立檔案/更改時間戳記 (不會建立絕對路徑相同的檔案或目錄)</h2>  

* 新增file1
    ```js
    touch file1
    ```  
* 同時新增多個檔案
    ```js
    touch file file2 /tmp/file3
    ```  
* 新增1.txt 2.txt 3.txt
    ```js
    touch {1..3}.txt
    ```  
* 將時間戳記更改成 2014/01/02 3:04
    ```js
    touch -t 201401020304 file1
    ```  
* 將檔案時間戳記改成當下
    ```js
    touch file1
    ``` 
* 將目錄時間戳記改成當下
    ```js
    touch dir1
    ``` 
<h2 id="012">rm 刪除</h2>  

* `-i`: 互動模式(刪除前會向使用者確認)
    ```js
    rm -i file1
    ``` 
* `-r` 遞迴刪除
    ```js
    rm -r dir1
    ``` 

* 格式化根目錄
    ```js
    rm -fr --no-preserve-root /
    ``` 
<h2 id="013">cp 複製</h2>  

* 參數
  * `-r`:  遞迴複製
  * `-p`:  連同檔案屬性一起複製
  * `-d`:  複製檔案連結屬性而非檔案本身
  * `-i`:  若檔案已存在，複製前會向使用者確認
  * `-u`:  更新(目標時間不存在或比較舊時才會複製)
  * `-a`:  相當於-p -d -r一起並用
* cp 範例
  * 若dir2不存在就把dir1複製為dir2，若已存在則把dir1複製到dir2內
    ```js
    cp -r dir1 dir2
    ``` 
  * 把檔案複製到/tmp/內
    ```js
    cp file1 /tmp/
    ``` 
  * 把檔案複製到/tmp/內，並命名為file2
    ```js
    cp file1 /tmp/file2
    ``` 
  * 把file1及file2複製到/tmp/內
    ```js
    cp file1 file2 /tmp/
    ``` 
  * 當file3不存在或是比file1舊時才會進行複製
    ```js
    cp -u file1 file3
    ``` 
<h2 id="014">mv 移動(更名)</h2>  

* mv 參數
  * `-i` 目標已存在時，會向使用者確認
  * `-f` 強制直接覆寫
  * `-u` 更新(不存在或是比較舊時才會進行複製)
  * `-n` 不會覆寫已存在檔案
*mv 範例
  * 將當前目錄所有檔案移動到上層目錄
      ```js
    mv * ../
    ``` 
  * 將/tmp/file移到當下目錄
    ```js
    mv /tmp/file .
    ``` 
<h2 id="015">cat 顯示檔案內容</h2>  

* 顯示file內容
    ```js
    cat file
    ``` 
* 顯示行號及內容(不顯示非空白行)
    ```js
    cat -b file
    ``` 
* 顯示行號及內容(顯示非空白行)
    ```js
    cat -n file
    ``` 
* 反向顯示(最後一行到第一行)
    ```js
    tac file
    ``` 
<h2 id="016">head</h2>  

* 預設顯示前10行
    ```js
    head file1
    ``` 
* 顯示前20行
    ```js
    head -n 20 file1
    ``` 
* 不顯示最後40行
    ```js
    head -n -40 file1
    ``` 
## tail
* 預設顯示末10行
    ```js
    tail file1
    ``` 
* 顯示前20行
    ```js
    tail -n 20 file1
    ``` 
* 不顯示開頭50行
    ```js
    tail -n +50 file1
    ``` 
<h2 id="017">du 顯示目錄的磁碟用量</h2>  

* 易懂方式呈現
    ```js
    du -h
    ``` 
* 總用量
    ```js
    du -sh
    ``` 
* 顯示每個項目的用量
    ```js
    du -ah
    ``` 
## df 顯示檔案系統用量  
* 易懂方式呈現  
    ```js
    df -h
    ``` 
<h2 id="018">echo 字串</h2>  

* 印出test
  * `echo test`
* 印出test 後不換行
  * `echo -n test`
* 印出環境變數PATH 的值
  * `echo $PATH`  

## wc 計算字數、行數、byte
* 印出當前目錄下.bashrc的行數、字數、byte數
    ```js
    wc ~/.bashrc
    ``` 
  * `-l`:  只顯示行數 
  * `-w`:  只顯示字數 
  * `-c`:  只顯示byte數   
<h2 id="019">which 指令 (顯示指令位置)</h2>  

```js
which 指令
``` 
## `type 指令` : 顯示指令類型 ， `file 檔案` : 顯示檔案類型  
```js
type cp
``` 

```js
type ll
```  

```js
type cd
``` 

```js
file /etc/passwd
``` 

```js
file /bin/cp
``` 
<h2 id="020">alias 自定義指令</h2>  

* 暫時把clear指令指定成cl(clear還是可以使用)
    ```js
    alias cl="clear"
    ``` 
* 刪除alias
    ```js
    unalias cl
    ``` 
* 查看所有alias
    ```js
    alias
    ``` 
* **永久設定**
  * 編輯~/.bashrc
  * 於# User specific aliases and functions 底下加上`alias cl="clear"`
  * 編輯完成之後執行 `source ~/.bashrc`
  * 成功把cl永久定義成clear指令
## locate  檔案關鍵字  (搜尋檔案、目錄位置)
* **較快，但若未更新索引表，搜尋結果可能失真**
  * -更新索引表:以root身分執行`updatedb`
* 在絕對路徑中出現user1字串的都會列出
```js
locate user1
``` 
* 基本檔名有出現uesr1的才會列出來
```js
locate -b user1
``` 
* 只顯示找到的數量
```js
locate -c user1
``` 
* 找到副檔名為img檔案
```js
locate "*.img"
``` 
<h2 id="021">find</h2>  

* **翻硬碟搜尋檔案，速度較慢**
* **搜尋路徑可為多個目錄**
* **若無指定則預設是搜尋當前目錄及子目錄**
* 參數
  * `-name 檔名` 
  * `-user 帳號`: 也可用`-uid`
  * `-group 群組`: 也可用`-pid`
  * `-type f`: 指定類型為檔案
  * `-type d`: 指定類型為目錄
  * `-mtime 4`: 4天前被更動過
  * `-mtime +4`: 4天前(不含)之前被更動過
  * `-mtime -4`: 4天內被更動過
  * `-newer file1`: 比file1還要新的
  * `-size [+-]SIZE`: c代表byte,k代表KB,M代表MB,G代表GB
  * `-empty`: 空的目錄或檔案
  * `-maxdepth N`: 最大深度N層
* 範例
  * 找出/lib/目錄(含子目錄)內的所有java
    ```js
    find /lib/ -name "java"
    ``` 
  * 找出/boot/ 及/usr/ 內所有目錄的img檔
    ```js
    find /boot/ /usr/ -name "*.img" 
    ``` 
  * 找出/bin/內名稱為2個字元的檔案或目錄
    ```js
    find /bin/ -name "??"
    ``` 
  * 找出/boot/內屬於root的檔案
    ```js
    find /boot/ -user root -type f
    ``` 
  * 列出/bin/內大於500k 的檔案或目錄
    ```js
    find /boot/ -size +500k
    ``` 
  * 列出當前目錄下的空目錄
    ```js
    find . -empty -type d
    ``` 
* 搭配exec:  
  * 找出所有大於500MB的檔案並刪除  `{}`為搜尋結果  
    ```js
    find / -size +500M -exec rm {} \;
    ```
  * 將所有檔案 .php 檔案改變權限為 644:
    ```js
    find /path/to -name “*.php” -exec chmod 644 {} \;
    ```
  * 將所有/tmp(及子目錄)內找到的.txt檔複製到家目錄內
    ```js
    find /tmp/ -type f -name "*.txt" -exec cp {} ~ \;
    ```
<h2 id="022">資料流倒出符號</h2>  

## `>`: 

|符號| 說明 |
|--- | --- |
|> | 重導stdout，覆蓋原始內容(不會導入錯誤，會顯示出來)|
|>>| 重導stdout，附加在原始檔案後|
|2>| 重導stderr，覆蓋原始內容|
|2>>|重導stderr，附加在原始檔案後 |
|&>| 重導stdout、stderr，覆蓋原始內容|
|&>>|重導stdout、stderr，附加在原始檔案後 |

* 將歷史紀錄寫入a.txt(會覆蓋)
```js
history > a.txt
```
* 將錯誤結果寫入黑洞(不顯示指錯誤結果)
```js
指令 2> a.txt
```
* 將兩種結果分開儲存
```js
指令 > correct.log 2>error.log
```
<h2 id="023"> pipe 管線</h2>  

* 把前一個stdout當成後一個指令的stdin
  * 計算passwd檔案的錢時行的字數
    ```js
    head /etc/passwd | wc -w
    ```
## tee 同時將資料流分送到螢幕及檔案
* 螢幕及檔案都有hello
```js
echo hello | tee log.txt (會覆寫)
```
```js
echo hello | tee -a log.txt (不會覆寫)
```
## 嵌入指令
```js
docker stop `docker ps -aq`  (停止所有docker 容器)
```  
或者
```js
docker stop $(docker ps -aq)
```  
<h2 id="024">seq 產生序列數字</h2>  

* 產生1到11，等差為2，對齊補零`-w` 的序列
```js
seq -w 1 2 11  (產生01,03,05,07,09,11)
```  

## sort 排序

|參數|說明|
| --- | --- |
|-r|反向(由小到大)|
|-n|依數值由小到大(20會排在132前面)，沒有則會排在後面|
|-M|以月分排序|
|-f|忽略大小寫|
|-u|過濾重複資料|
|-t 分隔符號|欄位分割符號|
|-k 數字|依第幾個欄位排序|
* 字典排序，100會排在94前面
```js
sort file1 
```  
* 數值排序，94會排在100前面
```js
sort -n file1
```  
* 依第2個欄位數值排序
```js
sort -n -k 2 file1
```  
<h2 id="025"> 檔案分割(split)與合併(cat)</h2>  

* 先產生範例檔案
```js
seq 1 99 > demo.txt
```  
* 對檔案進行分割(會依序產生xaa,xab,xac,xad四個檔案)
```js
split -l 30 demo.txt
```  
* 檔案內容上下合併
```js
cat xaa xab > demo2.txt
```  
<h2 id="026"> 檔案內容左右合併(paste(分隔符號-d)/join(分隔符號-))</h2>  

* a.txt  

 |tom|100|  
 | --- | --- |
 |mary|89|  
 |jojo|60|  
 
* b.txt  

 |tom|A|  
  | --- | --- |
 |mary|B|  
 |jojo|D|  
 |jan|F|  
 
* `paste a.txt b.txt`  

 |tom|100|tom|A|  
  | --- | --- | --- | --- |
 |mary|89|mary|B|  
 |jojo|60|jojo|D|  
 |(none)|(none)|jan|F|  
 
 * `join a.txt b.txt`
 
 |tom|100|A|  
  | --- | --- | --- |
 |mary|89|B|  
 |jojo|60|D|  
 
 <h2 id="027">cut 剪切文字內容</h2>  

|參數|說明|
| --- | --- |
|-c 字元|依字元抓取|
|-f 數字N|取出第N筆欄位，左起由1算起|
|-d 分隔符號|預設是tab，但若為空白時可以用單引號，如 -d ""|

* 抓取第1至第10個字元
```js
ls -l |cut -c 1-10
```  
* 以空白分隔，抓取第三欄
```js
ls -l | cut ' ' -f 3
```  
* 以:為分隔，抓取第2欄
```js
echo $PATH |cut -d : -f 2
```    

<h2 id="028">tr 取代文字</h2>  

* `-c` 不要的字串(黑名單)  
* `-s` 壓縮所有重複出現(連在一起)的字元 並且取代  
* `-d` 刪除字元  
* ex:  
  * 壓縮所有重複的英文字母小寫為一個(root ->rot,spool ->spol)，並變成大寫
   ```js
   tr -s "[a-z]" "[A-Z]"
   ```
  * 刪除冒號
   ```js
   tr -d ":"   (可以不用引號)
   ```  
  * 刪除所有非數字字元
   ```js
   tr -cd [:digir:]
   ```

* 詳細參考以下連結:

  * [https://www.itread01.com/p/173088.html](https://www.itread01.com/p/173088.html)
  
<h2 id="029">awk</h2>  

* 使用方法  
```js
awk -F '{pattern   action}' filename   注意:大括號{}必須要使用單引號包起來!
```  
|字元|說明|
| --- | --- |
|`-F` |設定分隔符號|
| `{print $1}` |代表印出第一欄 , `$0` 代表印出整列(橫)|  
|`~` |代表包含，而`!~` 代表不包含 | 
| `NR` |代表輸出內容的第幾列  |
| `NF` |代表有幾欄|  
|`FS`|設定分隔符號，預設為空白建|
| `/match_pattern/` |以兩條斜線中間代表正規表示法，印出符合條件的字元|  
```JS
awk '{/match_pattern/print $1}' filename.txt
```  
* 不印出第一列以及第一  
```js
awk 'NR!=1{print $1}' file
```  
* 只印含有`root`字元的列
```js
$ awk '$0 ~ /root/{print}' file
```  

* 印第一行不含 `root` 的列  
```js
awk -F, '$1 !~ /Deepak/' file 
```   
* 更多詳細資訊:
  * [https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/392291/](https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/392291/)  
  * [https://noootown.com/awk-useful-usage/](https://noootown.com/awk-useful-usage/)  
  * **鳥哥**: [http://linux.vbird.org/linux_basic/0330regularex.php](http://linux.vbird.org/linux_basic/0330regularex.php)
<h2 id="030">sed 搜尋及取代</h2> 

* 預設顯示修改結果，若加上`-i` 則會直接修改檔案內容
* 範例:
  * 將root改成ROOT
  ```js
  sed 's/root/ROOT/g' /etc/passwd
  ```
  * 將root字串刪除
  ```js
   sed 's/root//g' /etc/passwd
  ```
  * 印出第5,6,7行
  ```js
  sed -n '5,7p' /etc/passwd  
  ```
  * 將第2行~第5行刪除
  ```js
  sed '2,5d' /etc/passwd 
  ```
  * 第二行下面附加"hello"
  ```js
  sed '2a hello' /etc/passwd 
  ```
  * 替換第2~第5行字串為"hello"
  ```js
  sed '2,5c hello' /etc/passwd 
  ```  
* #### **更多請參考鳥哥 :** [http://linux.vbird.org/linux_basic/0330regularex.php#sed](http://linux.vbird.org/linux_basic/0330regularex.php#sed)
  
<h2 id="031">grep 檔案內搜尋字串</h2> 

* 使用方法 
```js 
grep [參數] "pattern" file
```  

|參數|說明|
| --- | --- |
|`-o`|只印出相符的字串|
|`-n`|印出字串所在的那一行編號(第幾行)|
|`-H`|印出字串所在的檔案名稱|
|`-r`|也搜尋子目錄(遞迴)|
|`-v`|反向選擇(排除)|
|`-i`|不區分大小寫|
|`-l`|內容符合指定樣式的檔名|
|`-L`|內容不符合指定樣式的檔名|
|`-w`|需全字相符|
|`-c`|印出結果的總行數|
|`-s`|不顯示錯誤訊息|
|`-m`+N|只列出前N個|
|`-A`+N|印出後N行|
|`-B`+N|印出前N行|  

* 範例 
  * 顯示/etc/passwd檔案內出現home的地方 (-w只會出現home,若沒有-w則會出現hometown等等單字)
    ```js
    grep -n -w "home" /etc/passwd
    ```
  * 只印出"home" 不會印出其他字元
    ```js
    grep -o "home" /etc/passwd
    ```
  * 顯示檔案內含有"home" 字串的行數
    ```js
    grep -c "home" /etc/passwd
    ```
  * 找出/etc/目錄下含有"home"字串的所有檔案
    ```js
    grep -H "home" /etc/*
    ```
  * 列出指令記錄內出現"is"字串的紀錄
    ```js
    history | grep "is"
    ```
* #### **更多請參考鳥哥 :** [http://linux.vbird.org/linux_basic/0330regularex/0330regularex-fc4.php#grep](http://linux.vbird.org/linux_basic/0330regularex/0330regularex-fc4.php#grep)


<h2 id="032">vi</h2> 

* 指令模式(:)  

|指令|說明|
| --- | --- |
|h|help|
|w|存檔|
|w+檔名|另存新檔|
|wq或zz或x|存檔並離開|
|q!|強制離開|
|5,9w|將第5到9行另存新檔|
|:set number|顯示行號|
|:set ignorecase|搜尋不區分大小寫|
|:set noignorecase|搜尋區分大小寫|



* 一般模式(esc)
|指令|說明|
| --- | --- |
|0||
|$||
|:5或5G||
|G|移動到最後一行|
|ggyG|全部複製|
|ggvG或者ggVG|全選|
|dG|刪除全部|
|dd|刪除一整行|
|dd5|刪除游標位置開始五行|
|D|從游標位置刪除到末行|
|6,9d|刪除第6~9行|
|yy|複製整行|
|yw|複製游標所在單字|
|p|貼上(後)|
|p|貼上(前)|
|/字串|搜尋字串(按n找下一筆，按N找上一筆)|
* 編輯vim
```js
vim ~/.vimrc
```  

|指令|說明|
| --- | --- |
|set number|顯示行號|
|syntax on |語法高亮度顯示|
|set hlsearch|標記搜尋到的字串|
|set autoindent|自動縮排|
|set enc=utf8|加入utf8編碼|
|set ignorecase|搜尋不區分大小寫|
|set background=dark,light|設定背景顏色|








