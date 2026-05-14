.class public Lcom/coderpage/mine/app/tally/update/UpdateUtils;
.super Ljava/lang/Object;
.source "UpdateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPersistedNewVersionAndShowUpdateConfirmDialog(Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callback"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/coderpage/lib/update/Updater;->getNewVersionApkModelPersisted(Landroid/content/Context;)Lcom/coderpage/lib/update/ApkModel;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/coderpage/lib/update/DefaultVersionComparator;

    invoke-direct {v1}, Lcom/coderpage/lib/update/DefaultVersionComparator;-><init>()V

    .line 42
    invoke-virtual {v1, p0, v0}, Lcom/coderpage/lib/update/DefaultVersionComparator;->compare(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Lcom/coderpage/lib/update/Updater$Builder;

    new-instance v2, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/coderpage/lib/update/Updater$Builder;-><init>(Landroid/content/Context;Lcom/coderpage/lib/update/SourceFetcher;)V

    const/high16 v2, 0x7f0d0000

    .line 45
    invoke-virtual {v1, v2}, Lcom/coderpage/lib/update/Updater$Builder;->setNotifyIcon(I)Lcom/coderpage/lib/update/Updater$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/coderpage/lib/update/Updater$Builder;->create()Lcom/coderpage/lib/update/Updater;

    move-result-object v1

    .line 47
    invoke-virtual {v1, p0, v0, p1}, Lcom/coderpage/lib/update/Updater;->showApkDownloadConfirmDialog(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)Landroid/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static startNewClientVersionCheck(Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "checkCallBack"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/coderpage/lib/update/Updater$Builder;

    new-instance v1, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;

    invoke-direct {v1}, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coderpage/lib/update/Updater$Builder;-><init>(Landroid/content/Context;Lcom/coderpage/lib/update/SourceFetcher;)V

    .line 21
    invoke-static {}, Lcom/coderpage/concurrency/AsyncTaskExecutor;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/lib/update/Updater$Builder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/coderpage/lib/update/Updater$Builder;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    .line 22
    invoke-virtual {v0, v1}, Lcom/coderpage/lib/update/Updater$Builder;->setNotifyIcon(I)Lcom/coderpage/lib/update/Updater$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/coderpage/lib/update/Updater$Builder;->create()Lcom/coderpage/lib/update/Updater;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/lib/update/Updater;->checkNewVersion(Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V

    return-void
.end method

.method public static startNewClientVersionCheckBackground(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/coderpage/lib/update/Updater$Builder;

    new-instance v1, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;

    invoke-direct {v1}, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coderpage/lib/update/Updater$Builder;-><init>(Landroid/content/Context;Lcom/coderpage/lib/update/SourceFetcher;)V

    .line 29
    invoke-static {}, Lcom/coderpage/concurrency/AsyncTaskExecutor;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/lib/update/Updater$Builder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/coderpage/lib/update/Updater$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/coderpage/lib/update/Updater$Builder;->showCheckProgressDialog(Z)Lcom/coderpage/lib/update/Updater$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Lcom/coderpage/lib/update/Updater$Builder;->showCheckResultToast(Z)Lcom/coderpage/lib/update/Updater$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Lcom/coderpage/lib/update/Updater$Builder;->showApkDownloadConfirmDialog(Z)Lcom/coderpage/lib/update/Updater$Builder;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    .line 33
    invoke-virtual {v0, v1}, Lcom/coderpage/lib/update/Updater$Builder;->setNotifyIcon(I)Lcom/coderpage/lib/update/Updater$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/coderpage/lib/update/Updater$Builder;->create()Lcom/coderpage/lib/update/Updater;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lcom/coderpage/lib/update/Updater;->checkNewVersion(Landroid/content/Context;)V

    return-void
.end method
