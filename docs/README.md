## 版權聲明
![](https://creativecommons.org/images/deed/svg/cc_white.svg)![](https://creativecommons.org/images/deed/svg/attribution_icon_white.svg)![](https://creativecommons.org/images/deed/svg/sa_white.svg)

姓名標示-相同方式分享 3.0 台灣 (CC BY-SA 3.0 TW)

姓名標示-相同方式分享 4.0 國際 (CC BY-SA 4.0)

MIT License

[吳晨知](人物記事/吳晨知.md) 著

## 序
當初這本[數位邏輯設計](/docs/knowledge-network-database-repository/數位邏輯設計.md)其實是我的個人的筆記，因為想要製作與設計[CPU](/docs/knowledge-network-database-repository/CPU.md)作為畢業專題，而這份[專題](docs/專題.md)也將延續至博士甚至出社會後持續更新的專案，而此專案引出相關議題與創意將會帶來無限的可能性。

由於需要閱讀與整理相當多的書籍，因此就決定將紀錄中間學到知識與技術、遇到疑難雜症與過程紀錄下來，可以作為未來專題、論文，因此就萌生了想要直接作為一本設計[CPU](/docs/knowledge-network-database-repository/CPU.md)的書籍，也作為未來需要回憶時可以回來翻閱的內容。

這本將分成六大部份，以序曲來述說著這精彩的故事，分別是「硬體描述語言」、「[數位邏輯設計](/docs/knowledge-network-database-repository/數位邏輯設計.md)」、「[可程式規劃裝置](docs/可程式規劃裝置.md)」、「[計算機系統結構](docs/計算機系統結構.md)」、「現代處理器架構」、「新一代處理器架構」，內容由淺入深、循序漸進介紹與說明，每序曲每章節將繼承前一序曲前一章節的知識往後延伸，最終在「新一代處理器架構」總結所有架構與內容。本書將盡可能完善的提供 VerilogHDL 、 VHDL 、 SystemVerilog 三種 HDL 語言，以及由 Python 撰寫的測試等工具，這些內容都將會為由本書所延伸提出的目標前進。

- **硬體描述語言：** 介紹[數位積體電路](/docs/knowledge-network-database-repository/數位積體電路.md)實現方式與透過「硬體描述語言」設計[數位積體電路](/docs/knowledge-network-database-repository/數位積體電路.md)。先帶各位讀者安裝與建立開發環境，除了常見 Xilinx 與 Altera 的整合開發環境與驗證工具外，還提供由開放原始碼所組成的整合開發環境，做出一個可以在現在流行於軟體開發的CI環境中自動化驗證。此內容專注於開發流程、語法教學、驗證與模擬，會先說明整個開發流程，後對 VerilogHDL 、 VHDL 、 SystemVerilog 的語法教學與示範，並說明如何撰寫測試檔案進行「功能模擬」(Functional Simulation)，而理論與實作將帶到「[數位邏輯設計](/docs/knowledge-network-database-repository/數位邏輯設計.md)」來讓各位了解。
- **[數位邏輯設計](/docs/knowledge-network-database-repository/數位邏輯設計.md)：** 帶著讀者學習[數位邏輯](/docs/knowledge-network-database-repository/數位邏輯.md)的基礎觀念與知識，循序漸進的學習「組合邏輯」到「[序向邏輯](/docs/knowledge-network-database-repository/序向邏輯.md)」，以及對於「[計算機系統結構](docs/計算機系統結構.md)」重要的「[暫存器](/docs/knowledge-network-database-repository/暫存器.md)」、「記憶體」等。了解「[同步序向](/docs/knowledge-network-database-repository/同步序向.md)」與「[非同步序向](/docs/knowledge-network-database-repository/非同步序向.md)」的設計方式，通過狀態分析、設計、化簡、指定等，以及「演繹狀態機」(ASMs)的 ASM 圖與 ASMD 圖兩種方式設計數位IC，學習的過程中提供許多範例與介紹，並盡可能將原理說明清楚。相較其他書籍，此除了針對[計算機系統結構](docs/計算機系統結構.md)純邏輯的數位IC設計基礎，還包含了「數位轉類比」、「類比轉數位」、「數位訊號處理」等的原理、設計，以及「積體電路」的介紹，但僅作基礎原理介紹與實作。最後會提供許多的應用範例，讓各位實作、學習與撰寫。
- **[可程式規劃裝置](docs/可程式規劃裝置.md)：** 介紹「[可程式規劃裝置](docs/可程式規劃裝置.md)」的歷史、分類、結構、概論原理，以及現在這個時代中「[可程式規劃裝置](docs/可程式規劃裝置.md)」的角色與地位，如果可以則是會加上詳細的結構與設計。
- **[計算機系統結構](docs/計算機系統結構.md)：** 帶著讀者由「暫存器資料傳遞」、「微運算」、「[算術邏輯單元](/docs/knowledge-network-database-repository/算術邏輯單元.md)」、「計算機組織與設計」、「[控制單元](/docs/knowledge-network-database-repository/控制單元.md)」、「計算機程式規劃」、「微程式控制」、「中央處理單元」、「管線與向量處理」、「浮點數運算」、「計算機算術」、「輸入輸出」、「記憶組織」、「多處理器系統」依序講解與介紹，並都會提供HDL實作。
- **現代處理器架構：** 介紹現在市面上常見的指令集架構，包括現在常見的32位元架構 x86 (別稱：i386)， 64位元架構 x86-64 (別稱： amd64) ，以及最多裝置使用的 ARM 、較為少人知的 PowerPC 、因為中美貿易受到關注的 RISC-V 指令集。後續，手把手講解帶著各位製作出 ARM 與 RISC-V [CPU](/docs/knowledge-network-database-repository/CPU.md) 在 [FPGA](/docs/knowledge-network-database-repository/FPGA.md) 上實作與執行。
- **新一代處理器架構：** 將由作者本人設計，使用開放原始碼的Python程式語言作為指令集架構，因技術成熟與IC製程帶來的優勢將過去限制成為可能，將改變過去高階程式語言需要多次轉換問題，產生新的「[可程式規劃裝置—程式語言指令集架構—軟體](/docs/knowledge-network-database-repository/可程式規劃裝置—程式語言指令集架構—軟體.md)」新架構，將可能因Python豐富套件與廣大社群而邁向新的開放社群與模式。同樣會帶著各位一步一步設計出此處理器，處理器的原始碼採開放授權，可以在此得到最新的內容 [Python Instruction Set Computer](https://github.com/Multimedia-Processing/Python-Instruction-Set-Computer)。

由於這本原本是我2020的筆記，是我在大一時開始撰寫，因此一開始一定不會完整與詳細，甚至有許多缺失，希望前期的讀者不要對這本書感到灰心。而這本書也期許除了我自己一個人編著下外，讓有想要這本書進步與有興趣的人們來參與，因此如果有什麼錯誤需要勘誤或內容有建議者歡迎在 GitHub 或 GitLab 開「議題」(Issues)，甚至想要一起撰寫的可以 Fork 修改後「拉請求」(Pull requests)合併回來。

依序將參考書籍內的範例整理出來並提供[相關檔案下載](https://drive.google.com/drive/folders/1AohDcrRu37FK9o0uxK_jb0OreTGIpofw)跟[這本書的所有範例](https://github.com/Multimedia-Processing//tree/master/example)。

## 目錄
- [序曲](README.md)
- [第1部曲 硬體描述語言](1-硬體描述語言/README.md)
  - [簡介](1-硬體描述語言/README.md)
  - [第1章 開發環境建置](1-硬體描述語言/1-開發環境建置.md)
  - [第2章 數位電路設計流程](1-硬體描述語言/2-數位電路設計流程.md)
  - [第3章 VerilogHDL](1-硬體描述語言/3-VerilogHDL.md)
  - [第4章 VHDL](1-硬體描述語言/4-VHDL.md)
  - [第5章 SystemVerilog](1-硬體描述語言/5-SystemVerilog.md)
  - [第6章 HDL](1-硬體描述語言/6-HDL.md)
  - [第7章 持續整合與持續佈署](1-硬體描述語言/7-持續整合與持續佈署.md)
- [第2部曲 數位邏輯設計](2-數位邏輯設計/README.md)
  - [簡介](2-數位邏輯設計/README.md)
  - [第1章 數位系統與二進位數](2-數位邏輯設計/1-數位系統與二進位數.md)
  - [第2章 布林代數與邏輯閘](2-數位邏輯設計/2-布林代數與邏輯閘.md)
  - [第3章 邏輯閘層次簡化](2-數位邏輯設計/3-邏輯閘層次簡化.md)
  - [第4章 組合邏輯](2-數位邏輯設計/4-組合邏輯.md)
  - [第5章 序向邏輯](2-數位邏輯設計/5-序向邏輯.md)
  - [第6章 暫存器](2-數位邏輯設計/6-暫存器.md)
  - [第7章 計數器](2-數位邏輯設計/7-計數器.md)
  - [第8章 記憶體](2-數位邏輯設計/8-記憶體.md)
  - [第9章 暫存器轉移階層設計](2-數位邏輯設計/9-暫存器轉移階層設計.md)
  - 第10章 演繹狀態機的 ASM 圖與 ASMD 圖
  - 第11章 類比訊號與數位訊號轉換
  - 第12章 數位訊號處理
  - [第13章 應用與範例](2-數位邏輯設計/13-應用與範例.md)
- [第3部曲 可程式規劃裝置](3-可程式規劃裝置/README.md)
  - [簡介](3-可程式規劃裝置/README.md)
  - 第N章 唯讀記憶體
  - 第N章 隨機存取記憶體
  - 第N章 可程式邏輯陣列
  - 第N章 可程式陣列邏輯
  - 第N章 序向可規劃裝置
  - 第N章 複雜可程式邏輯裝置
  - 第N章 現場可程式邏輯閘陣列
- [第4部曲 計算機系統結構](4-計算機系統結構/README.md)
  - [簡介](4-計算機系統結構/README.md)
  - [第1章 暫存器傳遞語言](4-計算機系統結構/1-暫存器傳遞語言.md)
  - [第2章 微運算](4-計算機系統結構/2-微運算.md)
  - [第3章 匯流排](4-計算機系統結構/3-匯流排.md)
  - [第4章 算術邏輯移位單元](4-計算機系統結構/4-算術邏輯移位單元.md)
  - 第N章 控制單元
  - 第N章 計算機組織與設計
  - 第N章 計算機程式語言規劃
  - 第N章 微程式控制
  - 第N章 中央處理單元
  - 第N章 管線及向量處理
  - 第N章 計算機算術
  - 第N章 輸入輸出組織
  - 第N章 記憶組織
  - 第N章 多處理器系統
- [第5部曲 現代處理器架構](5-現代處理器架構/README.md)
  - [簡介](5-現代處理器架構/README.md)
  - 第N章 x86
  - 第N章 ARM
  - 第N章 RISV-V
  - 第N章 MIPS
  - 第N章 PowerPC
  - 第N章 系統程式設計
- [第6部曲 新一代處理器架構](6-新一代處理器架構/README.md)
  - [簡介](6-新一代處理器架構/README.md)
- 附件
  - [參考資料](/docs/7-附件/1-參考資料.md)
  - [索引](/docs/7-附件/2-索引.md)
