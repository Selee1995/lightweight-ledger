.class Lcom/coderpage/framework/PresenterImpl$1;
.super Ljava/lang/Object;
.source "PresenterImpl.java"

# interfaces
.implements Lcom/coderpage/framework/Model$DataQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/framework/PresenterImpl;->loadInitialQueries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/framework/Model$DataQueryCallback<",
        "TM;TQ;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/framework/PresenterImpl;


# direct methods
.method constructor <init>(Lcom/coderpage/framework/PresenterImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/coderpage/framework/PresenterImpl$1;->this$0:Lcom/coderpage/framework/PresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/coderpage/framework/QueryEnum;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;TE;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl$1;->this$0:Lcom/coderpage/framework/PresenterImpl;

    invoke-static {v0}, Lcom/coderpage/framework/PresenterImpl;->access$000(Lcom/coderpage/framework/PresenterImpl;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl$1;->this$0:Lcom/coderpage/framework/PresenterImpl;

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

    .line 99
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/framework/UpdatableView;

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {v1, p1, p2}, Lcom/coderpage/framework/UpdatableView;->displayErrorMessage(Lcom/coderpage/framework/QueryEnum;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onModelUpdated(Lcom/coderpage/framework/Model;Lcom/coderpage/framework/QueryEnum;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "model",
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TQ;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl$1;->this$0:Lcom/coderpage/framework/PresenterImpl;

    invoke-static {v0}, Lcom/coderpage/framework/PresenterImpl;->access$000(Lcom/coderpage/framework/PresenterImpl;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl$1;->this$0:Lcom/coderpage/framework/PresenterImpl;

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

    .line 86
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/framework/UpdatableView;

    if-eqz v1, :cond_1

    .line 88
    invoke-interface {v1, p1, p2}, Lcom/coderpage/framework/UpdatableView;->displayData(Ljava/lang/Object;Lcom/coderpage/framework/QueryEnum;)V

    goto :goto_0

    :cond_2
    return-void
.end method
