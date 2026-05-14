.class Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;
.super Ljava/lang/Object;
.source "BaseLoadDelegate.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/Callback<",
        "Ljava/util/List<",
        "TT;>;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

.field final synthetic val$pageIndex:I


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pageIndex"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    iput p2, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->val$pageIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$500(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$300(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 242
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    sget-object v1, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->LOAD_MORE:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestFinish(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;Ljava/util/List;Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public bridge synthetic failure(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    .line 217
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 217
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 221
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    iget v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->val$pageIndex:I

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$202(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;I)I

    const/4 p1, 0x0

    goto :goto_1

    .line 223
    :cond_1
    :goto_0
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    const/4 v0, -0x1

    const-string v1, "\u6ca1\u6709\u66f4\u591a\u6570\u636e~"

    invoke-direct {p1, v0, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    .line 231
    :goto_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$500(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$300(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    sget-object v1, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->LOAD_MORE:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestFinish(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;Ljava/util/List;Lcom/coderpage/base/common/IError;)V

    return-void
.end method
