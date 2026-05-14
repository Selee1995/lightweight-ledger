.class Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;
.super Ljava/lang/Object;
.source "BaseLoadDelegate.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refreshAllBackground(Lcom/coderpage/base/common/SimpleCallback;)V
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

.field final synthetic val$callback:Lcom/coderpage/base/common/SimpleCallback;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

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

    .line 301
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$300(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 303
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    sget-object v1, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->REFRESH_BACKGROUND:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestFinish(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;Ljava/util/List;Lcom/coderpage/base/common/IError;)V

    .line 305
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

    if-eqz v0, :cond_0

    .line 306
    new-instance v1, Lcom/coderpage/base/common/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    :cond_0
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

    .line 275
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->failure(Lcom/coderpage/base/common/IError;)V

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

    .line 275
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 4
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

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 279
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$000(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 280
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$000(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 285
    :goto_1
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$300(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    sget-object v1, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->REFRESH_BACKGROUND:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestFinish(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;Ljava/util/List;Lcom/coderpage/base/common/IError;)V

    .line 294
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

    if-eqz v0, :cond_3

    .line 295
    new-instance v1, Lcom/coderpage/base/common/Result;

    invoke-direct {v1, p1, v3}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
