### 學習過程中遇到的問題

1. extension 跟 class的語法在dart lan差別

使用class的方式和使用extension的方式都可以為現有class添加新的功能。然而，class和extension之間有一些關鍵的區別：

   + 目的和設計思路：class用於創建對象和定義對象的行為和狀態，它是面向對象編程的核心概念之一。extension的目的是為現有class添加新的方法或成員，以提供額外的功能或extension現有class的能力。
   
   + 訪問權限：class內部可以訪問class的私有成員（私有屬性和方法），而extension無法訪問原始class的私有成員。extension只能訪問原始class的公共成員（公共屬性和方法）。
   
   + extension的適用場景：extension通常用於為第三方庫或原始class添加額外的功能，而無需修改原始class的代碼。如果您有權修改原始class的代碼，並且添加新功能不會破壞現有代碼的穩定性和兼容性，那麼在class內部直接添加新的方法或成員可能更為合適。
   
   + 繼承關係：class可以通過繼承關係構建層次結構，子class可以繼承和重寫父class的方法。而extension沒有繼承關係，它只能為單個class添加新的方法或成員。

總結起來，class和extension的使用場景和目的略有不同。class用於創建對象和定義對象的行為和狀態，而extension用於為現有class添加新的方法或成員，以提供額外的功能或extension能力。

> 如果您需要修改原始class的行為或創建繼承關係，那麼在class內部添加新的方法或成員可能更適合。
> 為現有class添加一些新的功能或extension現有功能，而不修改原始class的代碼，那麼extension是一個不錯的選擇。選擇何種方式取決於您的需求和設計考慮。

---
2. "m++ , ++m , --m , m-- "這些在程式運行後給出的結果為?
   
```dart
//++m
int m = 5;
int result = ++m;
print(result); // 输出: 6 -->程式輸出時會以這裡結果輸出
print(m); // 输出: 6

//m++
int m = 5;
int result = m++;
print(result); // 输出: 5-->程式輸出時會以這裡結果輸出
print(m); // 输出: 6
```
> 不要看最後m值都一樣，應該看第一狀態已這舉例為result才是電腦輸出結果
---

3. mixin 跟 implements差別
<table> <tr> 
   <td> </td> <td>implements</td> <td>mixin</td></tr> 
      <tr> 
         <td> 實現的方式 </td> 
         <td> 通過實現接口來實現代碼復用 </td> 
         <td> mixin 是通過混入一組方法和屬性來實現代碼復用 </td >
     </tr>
     <tr>
        <td> 接口要求 </td>
        <td> 使用 implements 實現接口時，需要提供接口中定義的所有方法和屬性的具體實現 </td> 
        <td> 使用 mixin 時，可以選擇性地混入所需的方法和屬性，不需要提供所有的實現 </td > 
     </tr>
     <tr>
        <td> 繼承關係 </td>
        <td> 可以與繼承一起使用，一個類可以同時實現多個接口 </td> 
        <td> 一種代碼組合機制，不涉及繼承關係 </td > 
     </tr>
     <tr>
        <td> 代碼復用的方式 </td>
        <td> 用於實現接口的約定，將多個類統一起來，以便進行多態操作 </td> 
        <td> mixin 主要用於在類之間共享和復用代碼，提供一種更靈活的組合方式 </td > 
     </tr>  
  </table> 


  > 總結來說，implements 用於實現接口的約定和多態操作，而 mixin 用於代碼的組合和重用，提供了一種更靈活的代碼復用機制。具體使用哪種方式取決於你的需求和設計目標。
![image](https://github.com/Trinity-SYT-SECURITY/Dart_lang/assets/96654161/fef753a7-b452-4152-87e1-e37174be392f)
**參考mixin程式碼**
---
4. 
      
  

----



   


   
