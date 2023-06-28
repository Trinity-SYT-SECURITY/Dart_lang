/*
每個枚舉常量始終以索引 = 0 開頭

特性：

index：返回給定枚舉常量的索引值。 
name：返回常量名稱 
values：返回 Enum 常量列表
*/
void main() {
  var status = Status.completed;

  switch (status) {
    case Status.initial:
      print('initial status');
      break;
    case Status.pending:
      print('pending status');
      break;
    case Status.loading:
      print('loading status');
      break;
    case Status.completed:
      print('completed status');
      break;
    default:
      print(status);
  }
}

/*
initial: 代表初始狀態。通常用於表示某個操作或對象的初始狀態或起始點。
pending: 代表掛起狀態。通常用於表示操作正在等待某些條件或資源的情況。
loading: 代表加載狀態。通常用於表示正在進行數據加載或請求的過程中。
completed: 代表完成狀態。通常用於表示操作或過程已經完成，不再需要進一步的處理。
*/
enum Status { initial, pending, loading, completed }


/*
通过使用枚举类型，您可以在代码中直观地表示不同状态，使得代码更易读、易理解，并且降低了出错的可能性。
此外，如果需要添加新的状态，只需要在枚举中添加一个新的常量即可，代码中的其他部分可以直接使用新的常量来处理相应的逻辑，使得扩展和维护变得更加简单和安全。
*/