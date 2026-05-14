.class Lcom/coderpage/mine/MineApp$1;
.super Ljava/lang/Object;
.source "MineApp.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/MineApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/MineApp;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/MineApp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/coderpage/mine/MineApp$1;->this$0:Lcom/coderpage/mine/MineApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onActivityDestroyed$0(Landroid/app/Activity;Ljava/lang/ref/WeakReference;)Z
    .locals 1

    .line 141
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "savedInstanceState"
        }
    .end annotation

    .line 107
    iget-object p2, p0, Lcom/coderpage/mine/MineApp$1;->this$0:Lcom/coderpage/mine/MineApp;

    invoke-static {p2}, Lcom/coderpage/mine/MineApp;->access$008(Lcom/coderpage/mine/MineApp;)I

    .line 108
    iget-object p2, p0, Lcom/coderpage/mine/MineApp$1;->this$0:Lcom/coderpage/mine/MineApp;

    invoke-static {p2}, Lcom/coderpage/mine/MineApp;->access$000(Lcom/coderpage/mine/MineApp;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 109
    iget-object p2, p0, Lcom/coderpage/mine/MineApp$1;->this$0:Lcom/coderpage/mine/MineApp;

    invoke-static {p2}, Lcom/coderpage/mine/MineApp;->access$100(Lcom/coderpage/mine/MineApp;)V

    .line 111
    :cond_0
    iget-object p2, p0, Lcom/coderpage/mine/MineApp$1;->this$0:Lcom/coderpage/mine/MineApp;

    invoke-static {p2}, Lcom/coderpage/mine/MineApp;->access$200(Lcom/coderpage/mine/MineApp;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/coderpage/mine/MineApp$1;->this$0:Lcom/coderpage/mine/MineApp;

    invoke-static {v0}, Lcom/coderpage/mine/MineApp;->access$200(Lcom/coderpage/mine/MineApp;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/-$$Lambda$MineApp$1$205WXWBS6HCqbMo5xCFFL27JV3E;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/-$$Lambda$MineApp$1$205WXWBS6HCqbMo5xCFFL27JV3E;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->remove(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)I

    .line 142
    iget-object p1, p0, Lcom/coderpage/mine/MineApp$1;->this$0:Lcom/coderpage/mine/MineApp;

    invoke-static {p1}, Lcom/coderpage/mine/MineApp;->access$010(Lcom/coderpage/mine/MineApp;)I

    .line 143
    iget-object p1, p0, Lcom/coderpage/mine/MineApp$1;->this$0:Lcom/coderpage/mine/MineApp;

    invoke-static {p1}, Lcom/coderpage/mine/MineApp;->access$000(Lcom/coderpage/mine/MineApp;)I

    move-result p1

    if-nez p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/coderpage/mine/MineApp$1;->this$0:Lcom/coderpage/mine/MineApp;

    invoke-static {p1}, Lcom/coderpage/mine/MineApp;->access$300(Lcom/coderpage/mine/MineApp;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "outState"
        }
    .end annotation

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method
