.class public Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;
.super Landroidx/work/Worker;
.source "AutoBackupWorker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appContext",
            "parameters"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private deleteOldAutoBackupFile()V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$2;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$2;-><init>(Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;)V

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->listBackupFiles(Landroid/content/Context;Lcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method private exportBackupFile()Lcom/coderpage/base/common/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coderpage/base/common/Result<",
            "Landroid/net/Uri;",
            "Lcom/coderpage/base/common/IError;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$JEFXYRB1EXkF3hxDTYN09-WgX2I;->INSTANCE:Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$JEFXYRB1EXkF3hxDTYN09-WgX2I;

    .line 78
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$1;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$1;-><init>(Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;)V

    invoke-static {v1, v0, v2}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->backupToJsonFileSync(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;)Lcom/coderpage/base/common/Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$exportBackupFile$0()Ljava/lang/String;
    .locals 4

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyyMMdd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BACKUP-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".auto.JSON"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 5

    .line 47
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->isAutoBackup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->cancelWorkById(Ljava/util/UUID;)Landroidx/work/Operation;

    .line 49
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v1, v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/coderpage/lib/permission/PermissionReq;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 55
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->exportBackupFile()Lcom/coderpage/base/common/Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->deleteOldAutoBackupFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {v0}, Lcom/coderpage/base/common/Result;->isOk()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    :goto_2
    return-object v0
.end method
