.class Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$1;
.super Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;
.source "SearchViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate<",
        "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "pageSize"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onRequestFinish(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;Ljava/util/List;Lcom/coderpage/base/common/IError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "dataList",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 65
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-interface {p3}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$200(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public requestData(IILcom/coderpage/base/common/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "page",
            "pageSize",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Lcom/coderpage/mine/app/tally/module/search/SearchRepository;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/coderpage/mine/app/tally/module/search/SearchRepository;->queryRecords(IILjava/lang/String;Lcom/coderpage/base/common/Callback;)V

    return-void
.end method
