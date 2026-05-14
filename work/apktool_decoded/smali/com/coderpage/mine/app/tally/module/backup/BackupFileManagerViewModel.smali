.class public Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "BackupFileManagerViewModel.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# instance fields
.field private mBackupFileList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFileTimeDateFormat:Ljava/text/SimpleDateFormat;

.field private mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    .line 47
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mBackupFileList:Landroid/arch/lifecycle/MutableLiveData;

    .line 48
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e0032

    .line 53
    invoke-static {p1, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mFileTimeDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mBackupFileList:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method private deleteBackupFile(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getFile()Lcom/coderpage/mine/persistence/document/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/coderpage/mine/persistence/document/DocumentFile;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mBackupFileList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$XtysQ9NpCWBaRGygv36ObwYr5hE;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$XtysQ9NpCWBaRGygv36ObwYr5hE;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->remove(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)I

    .line 135
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mBackupFileList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$deleteBackupFile$1(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private refreshData()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$W2fBHt08CbbSPrYEFpJHUJfQsqM;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$W2fBHt08CbbSPrYEFpJHUJfQsqM;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public formatBackupFileSize(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getFile()Lcom/coderpage/mine/persistence/document/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getSize()J

    move-result-wide v0

    long-to-double v2, v0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    div-double v4, v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v4, v6

    if-lez p1, :cond_1

    .line 91
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.00M"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmpl-double p1, v2, v6

    if-lez p1, :cond_2

    .line 94
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.00KB"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "0 KB"

    return-object p1
.end method

.method public declared-synchronized formatBackupTime(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getFile()Lcom/coderpage/mine/persistence/document/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mFileTimeDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getBackupFileList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;",
            ">;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mBackupFileList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getViewReliedTask()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$refreshData$0$BackupFileManagerViewModel(Landroid/app/Activity;)V
    .locals 1

    .line 102
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel$1;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;)V

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->listBackupFiles(Landroid/content/Context;Lcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method public onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 141
    check-cast p1, Landroid/app/Activity;

    .line 142
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->refreshData()V

    return-void
.end method

.method public onItemDeleteClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->deleteBackupFile(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    return-void
.end method

.method public onItemShareClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/coderpage/mine/app/tally/common/share/ShareProxy;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/common/share/ShareProxy;-><init>()V

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getFile()Lcom/coderpage/mine/persistence/document/DocumentFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFile;->getShareUri()Landroid/net/Uri;

    move-result-object p1

    sget-object v2, Lcom/coderpage/mine/common/Mime;->ALL:Lcom/coderpage/mine/common/Mime;

    invoke-virtual {v2}, Lcom/coderpage/mine/common/Mime;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/coderpage/mine/app/tally/common/share/ShareProxy;->shareFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
