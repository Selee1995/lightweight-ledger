.class Lcom/coderpage/mine/app/tally/module/backup/BackupCache;
.super Ljava/lang/Object;
.source "BackupCache.java"


# static fields
.field private static final BACKUP_FOLDER_NAME:Ljava/lang/String; = "backup"

.field private static DATA_ROOT_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private backupFileDateFormat:Ljava/text/SimpleDateFormat;

.field private backupFolder:Ljava/io/File;

.field private backupFolderPath:Ljava/lang/String;

.field private final backupFolderRelativePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->DATA_ROOT_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->DATA_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderPath:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFileDateFormat:Ljava/text/SimpleDateFormat;

    .line 60
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->DATA_ROOT_PATH:Ljava/lang/String;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MyTallyBook"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderRelativePath:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->initBackupFolder()Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createFileIfNotExists(Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521b\u5efa\u6587\u4ef6\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private declared-synchronized formatBackupJsonFileName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 184
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFileDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BACKUP-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".JSON"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initBackupFolder()Z
    .locals 3

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolder:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 68
    monitor-exit p0

    return v1

    .line 71
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coderpage/base/cache/Cache;->getCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 73
    monitor-exit p0

    return v0

    .line 76
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "backup"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderPath:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolder:Ljava/io/File;

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 79
    monitor-exit p0

    return v1

    .line 81
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->TAG:Ljava/lang/String;

    const-string v2, "create backup cache folder failed"

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method backup2JsonDocumentFile(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/base/common/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backupModel",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModel;",
            "Lcom/coderpage/base/common/Callback<",
            "Landroid/net/Uri;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    invoke-direct {v0}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;-><init>()V

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderRelativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->setPath(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    move-result-object v0

    sget-object v1, Lcom/coderpage/mine/common/Mime;->JSON:Lcom/coderpage/mine/common/Mime;

    .line 90
    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->setMime(Lcom/coderpage/mine/common/Mime;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->formatBackupJsonFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->setName(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    invoke-direct {v1}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;-><init>()V

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->setTipTitle(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    move-result-object v1

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->setTipMsg(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    move-result-object v1

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->setForceRefuseTipMsg(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/coderpage/mine/persistence/document/DocumentManager;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/coderpage/mine/persistence/document/DocumentManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    new-instance v3, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$1;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupCache;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/base/common/Callback;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFile(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V

    return-void
.end method

.method backup2JsonDocumentFileSync(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;Lcom/coderpage/base/common/Callback;)Lcom/coderpage/base/common/Result;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "backupModel",
            "nameFormatter",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModel;",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;",
            "Lcom/coderpage/base/common/Callback<",
            "Landroid/net/Uri;",
            "Lcom/coderpage/base/common/IError;",
            ">;)",
            "Lcom/coderpage/base/common/Result<",
            "Landroid/net/Uri;",
            "Lcom/coderpage/base/common/IError;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    invoke-direct {v0}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;-><init>()V

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderRelativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->setPath(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    move-result-object v0

    sget-object v1, Lcom/coderpage/mine/common/Mime;->JSON:Lcom/coderpage/mine/common/Mime;

    .line 122
    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->setMime(Lcom/coderpage/mine/common/Mime;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 123
    invoke-interface {p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;->formatName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->formatBackupJsonFileName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->setName(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    move-result-object p2

    .line 124
    new-instance v0, Lcom/coderpage/mine/persistence/document/DocumentManager;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/coderpage/mine/persistence/document/DocumentManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$2;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupCache;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, p2, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFileSyncWithoutPermissionCheck(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)Lcom/coderpage/base/common/Result;

    move-result-object p1

    return-object p1
.end method

.method backup2JsonFile(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/base/common/Callback;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backupModel",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModel;",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/lang/Void;",
            "Lcom/coderpage/base/common/IError;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->formatBackupJsonFileName()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderPath:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, v1}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->createFileIfNotExists(Ljava/io/File;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 159
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    const/16 v0, 0x2713

    const-string v1, "create backup file failed"

    invoke-direct {p1, v0, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/coderpage/base/common/Callback;->failure(Ljava/lang/Object;)V

    return-object v2

    .line 165
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    .line 166
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    invoke-static {p1, v0, v3}, Lcom/alibaba/fastjson/JSON;->writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 172
    sget-object p1, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5907\u4efd JSON \u6587\u4ef6\u6210\u529f "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/LogUtils;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface {p2, v2}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 175
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->TAG:Ljava/lang/String;

    const-string v1, "\u6587\u4ef6\u5199\u5165\u9519\u8bef:"

    invoke-static {v0, v1, p1}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    const/4 v3, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/coderpage/base/common/Callback;->failure(Ljava/lang/Object;)V

    return-object v2
.end method

.method public deleteAllBackupFile()Z
    .locals 7

    .line 209
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 213
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 215
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 216
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method listBackupFiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method listBackupFiles(Lcom/coderpage/base/common/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    invoke-direct {v0}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;-><init>()V

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->setTipTitle(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    move-result-object v0

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->setTipMsg(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    move-result-object v0

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->setForceRefuseTipMsg(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/coderpage/mine/persistence/document/DocumentManager;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/persistence/document/DocumentManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backupFolderRelativePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->listFile(Ljava/lang/String;Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;Lcom/coderpage/base/common/Callback;)V

    return-void
.end method
