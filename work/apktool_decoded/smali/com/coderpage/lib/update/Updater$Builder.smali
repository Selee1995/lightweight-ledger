.class public Lcom/coderpage/lib/update/Updater$Builder;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/lib/update/Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialogTheme:I

.field private executor:Ljava/util/concurrent/Executor;

.field private notifyIconResId:I

.field private showApkDownloadConfirmDialog:Z

.field private showCheckProgressDialog:Z

.field private showCheckResultToast:Z

.field private sourceFetcher:Lcom/coderpage/lib/update/SourceFetcher;

.field private versionComparator:Lcom/coderpage/lib/update/VersionComparator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coderpage/lib/update/SourceFetcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "sourceFetcher"
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    new-instance v0, Lcom/coderpage/lib/update/DefaultVersionComparator;

    invoke-direct {v0}, Lcom/coderpage/lib/update/DefaultVersionComparator;-><init>()V

    iput-object v0, p0, Lcom/coderpage/lib/update/Updater$Builder;->versionComparator:Lcom/coderpage/lib/update/VersionComparator;

    .line 297
    sget v0, Lcom/coderpage/lib/update/R$mipmap;->ic_launcher:I

    iput v0, p0, Lcom/coderpage/lib/update/Updater$Builder;->notifyIconResId:I

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lcom/coderpage/lib/update/Updater$Builder;->showCheckProgressDialog:Z

    .line 300
    iput-boolean v0, p0, Lcom/coderpage/lib/update/Updater$Builder;->showCheckResultToast:Z

    .line 301
    iput-boolean v0, p0, Lcom/coderpage/lib/update/Updater$Builder;->showApkDownloadConfirmDialog:Z

    .line 304
    iput-object p1, p0, Lcom/coderpage/lib/update/Updater$Builder;->context:Landroid/content/Context;

    .line 305
    iput-object p2, p0, Lcom/coderpage/lib/update/Updater$Builder;->sourceFetcher:Lcom/coderpage/lib/update/SourceFetcher;

    return-void
.end method


# virtual methods
.method public create()Lcom/coderpage/lib/update/Updater;
    .locals 4

    .line 366
    new-instance v0, Lcom/coderpage/lib/update/Updater;

    iget-object v1, p0, Lcom/coderpage/lib/update/Updater$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/coderpage/lib/update/Updater$Builder;->sourceFetcher:Lcom/coderpage/lib/update/SourceFetcher;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/coderpage/lib/update/Updater;-><init>(Landroid/content/Context;Lcom/coderpage/lib/update/SourceFetcher;Lcom/coderpage/lib/update/Updater$1;)V

    .line 367
    iget-object v1, p0, Lcom/coderpage/lib/update/Updater$Builder;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/coderpage/lib/update/Updater;->access$602(Lcom/coderpage/lib/update/Updater;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 368
    iget-object v1, p0, Lcom/coderpage/lib/update/Updater$Builder;->versionComparator:Lcom/coderpage/lib/update/VersionComparator;

    invoke-static {v0, v1}, Lcom/coderpage/lib/update/Updater;->access$202(Lcom/coderpage/lib/update/Updater;Lcom/coderpage/lib/update/VersionComparator;)Lcom/coderpage/lib/update/VersionComparator;

    .line 369
    iget v1, p0, Lcom/coderpage/lib/update/Updater$Builder;->notifyIconResId:I

    invoke-static {v0, v1}, Lcom/coderpage/lib/update/Updater;->access$702(Lcom/coderpage/lib/update/Updater;I)I

    .line 370
    iget v1, p0, Lcom/coderpage/lib/update/Updater$Builder;->dialogTheme:I

    invoke-static {v0, v1}, Lcom/coderpage/lib/update/Updater;->access$802(Lcom/coderpage/lib/update/Updater;I)I

    .line 371
    iget-boolean v1, p0, Lcom/coderpage/lib/update/Updater$Builder;->showCheckProgressDialog:Z

    invoke-static {v0, v1}, Lcom/coderpage/lib/update/Updater;->access$902(Lcom/coderpage/lib/update/Updater;Z)Z

    .line 372
    iget-boolean v1, p0, Lcom/coderpage/lib/update/Updater$Builder;->showCheckResultToast:Z

    invoke-static {v0, v1}, Lcom/coderpage/lib/update/Updater;->access$402(Lcom/coderpage/lib/update/Updater;Z)Z

    .line 373
    iget-boolean v1, p0, Lcom/coderpage/lib/update/Updater$Builder;->showApkDownloadConfirmDialog:Z

    invoke-static {v0, v1}, Lcom/coderpage/lib/update/Updater;->access$302(Lcom/coderpage/lib/update/Updater;Z)Z

    return-object v0
.end method

.method public setDialogStyle(I)Lcom/coderpage/lib/update/Updater$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogTheme"
        }
    .end annotation

    .line 312
    iput p1, p0, Lcom/coderpage/lib/update/Updater$Builder;->dialogTheme:I

    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/coderpage/lib/update/Updater$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/coderpage/lib/update/Updater$Builder;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setNotifyIcon(I)Lcom/coderpage/lib/update/Updater$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifyIconResId"
        }
    .end annotation

    .line 320
    iput p1, p0, Lcom/coderpage/lib/update/Updater$Builder;->notifyIconResId:I

    return-object p0
.end method

.method public setVersionComparator(Lcom/coderpage/lib/update/VersionComparator;)Lcom/coderpage/lib/update/Updater$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/coderpage/lib/update/Updater$Builder;->versionComparator:Lcom/coderpage/lib/update/VersionComparator;

    return-object p0
.end method

.method public showApkDownloadConfirmDialog(Z)Lcom/coderpage/lib/update/Updater$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showApkDownloadConfirmDialog"
        }
    .end annotation

    .line 361
    iput-boolean p1, p0, Lcom/coderpage/lib/update/Updater$Builder;->showApkDownloadConfirmDialog:Z

    return-object p0
.end method

.method public showCheckProgressDialog(Z)Lcom/coderpage/lib/update/Updater$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showCheckProgressDialog"
        }
    .end annotation

    .line 344
    iput-boolean p1, p0, Lcom/coderpage/lib/update/Updater$Builder;->showCheckProgressDialog:Z

    return-object p0
.end method

.method public showCheckResultToast(Z)Lcom/coderpage/lib/update/Updater$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showCheckResultToast"
        }
    .end annotation

    .line 352
    iput-boolean p1, p0, Lcom/coderpage/lib/update/Updater$Builder;->showCheckResultToast:Z

    return-object p0
.end method
