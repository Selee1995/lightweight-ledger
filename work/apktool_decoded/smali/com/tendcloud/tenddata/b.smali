.class public Lcom/tendcloud/tenddata/b;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    :try_start_0
    sput-boolean v0, Lcom/tendcloud/tenddata/ab;->I:Z

    .line 32
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/c;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/tendcloud/tenddata/ab;->K:Z

    .line 44
    sput-boolean v0, Lcom/tendcloud/tenddata/ab;->I:Z

    .line 49
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p1, v1}, Lcom/tendcloud/tenddata/c;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V

    .line 55
    sput-boolean v0, Lcom/tendcloud/tenddata/ab;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
