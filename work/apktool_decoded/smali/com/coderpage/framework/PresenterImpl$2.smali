.class Lcom/coderpage/framework/PresenterImpl$2;
.super Ljava/lang/Object;
.source "PresenterImpl.java"

# interfaces
.implements Lcom/coderpage/framework/Model$UserActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/framework/PresenterImpl;->onUserAction(Lcom/coderpage/framework/UserActionEnum;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/framework/Model$UserActionCallback<",
        "TM;TUA;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/framework/PresenterImpl;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/coderpage/framework/PresenterImpl;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$args"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/coderpage/framework/PresenterImpl$2;->this$0:Lcom/coderpage/framework/PresenterImpl;

    iput-object p2, p0, Lcom/coderpage/framework/PresenterImpl$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/coderpage/framework/UserActionEnum;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userAction",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUA;TE;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl$2;->this$0:Lcom/coderpage/framework/PresenterImpl;

    invoke-static {v0}, Lcom/coderpage/framework/PresenterImpl;->access$000(Lcom/coderpage/framework/PresenterImpl;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl$2;->this$0:Lcom/coderpage/framework/PresenterImpl;

    invoke-static {v0}, Lcom/coderpage/framework/PresenterImpl;->access$000(Lcom/coderpage/framework/PresenterImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 133
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/coderpage/framework/UpdatableView;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 135
    iget-object v4, p0, Lcom/coderpage/framework/PresenterImpl$2;->val$args:Landroid/os/Bundle;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/coderpage/framework/UpdatableView;->displayUserActionResult(Ljava/lang/Object;Landroid/os/Bundle;Lcom/coderpage/framework/UserActionEnum;ZLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onModelUpdated(Lcom/coderpage/framework/Model;Lcom/coderpage/framework/UserActionEnum;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "model",
            "userAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TUA;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl$2;->this$0:Lcom/coderpage/framework/PresenterImpl;

    invoke-static {v0}, Lcom/coderpage/framework/PresenterImpl;->access$000(Lcom/coderpage/framework/PresenterImpl;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl$2;->this$0:Lcom/coderpage/framework/PresenterImpl;

    invoke-static {v0}, Lcom/coderpage/framework/PresenterImpl;->access$000(Lcom/coderpage/framework/PresenterImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 120
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/coderpage/framework/UpdatableView;

    if-eqz v2, :cond_1

    .line 122
    iget-object v4, p0, Lcom/coderpage/framework/PresenterImpl$2;->val$args:Landroid/os/Bundle;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/coderpage/framework/UpdatableView;->displayUserActionResult(Ljava/lang/Object;Landroid/os/Bundle;Lcom/coderpage/framework/UserActionEnum;ZLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method
