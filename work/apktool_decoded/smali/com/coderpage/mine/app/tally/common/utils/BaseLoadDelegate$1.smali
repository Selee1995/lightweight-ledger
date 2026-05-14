.class Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;
.super Ljava/lang/Object;
.source "BaseLoadDelegate.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->load()V
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

    .line 102
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    iput p2, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->val$pageIndex:I

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

    .line 125
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$000(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$300(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    sget-object v1, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->LOAD:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

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

    .line 102
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->failure(Lcom/coderpage/base/common/IError;)V

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

    .line 102
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->success(Ljava/util/List;)V

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

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$000(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$000(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 112
    :goto_1
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    iget v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->val$pageIndex:I

    invoke-static {p1, v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$202(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;I)I

    .line 118
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$300(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    sget-object v0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->LOAD:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;->this$0:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestFinish(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;Ljava/util/List;Lcom/coderpage/base/common/IError;)V

    return-void
.end method
