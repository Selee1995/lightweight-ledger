.class public Lcom/coderpage/mine/app/tally/module/backup/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;,
        Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;,
        Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;,
        Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/coderpage/mine/app/tally/module/backup/Backup;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupToJsonFile(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$kiSVP7tvuefaITLZLG5RMwUt2YY;

    invoke-direct {v0, p1, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$kiSVP7tvuefaITLZLG5RMwUt2YY;-><init>(Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/coderpage/concurrency/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static backupToJsonFileSync(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;)Lcom/coderpage/base/common/Result;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "nameFormatter",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;",
            "Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;",
            ")",
            "Lcom/coderpage/base/common/Result<",
            "Landroid/net/Uri;",
            "Lcom/coderpage/base/common/IError;",
            ">;"
        }
    .end annotation

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    invoke-static {p0, v0}, Lcom/coderpage/lib/permission/PermissionReq;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    :goto_0
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->READ_DATA:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    invoke-interface {p2, v0}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;->onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;)V

    if-eqz v1, :cond_1

    .line 124
    new-instance p0, Lcom/coderpage/base/common/Result;

    const/4 p1, 0x0

    new-instance p2, Lcom/coderpage/base/common/NonThrowError;

    const/4 v0, -0x1

    const-string v1, "permission denied"

    invoke-direct {p2, v0, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 127
    :cond_1
    invoke-static {}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->readData()Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->WRITE_FILE:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    invoke-interface {p2, v1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;->onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;)V

    .line 130
    new-instance p2, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;

    invoke-direct {p2, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/coderpage/mine/app/tally/module/backup/Backup$1;

    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/Backup$1;-><init>()V

    invoke-virtual {p2, v0, p1, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backup2JsonDocumentFileSync(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;Lcom/coderpage/base/common/Callback;)Lcom/coderpage/base/common/Result;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$backupToJsonFile$0(Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;Landroid/content/Context;)V
    .locals 2

    .line 104
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->READ_DATA:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    invoke-interface {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;->onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;)V

    .line 105
    invoke-static {}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->readData()Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->WRITE_FILE:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    invoke-interface {p0, v1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;->onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;)V

    .line 108
    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backup2JsonDocumentFile(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method static synthetic lambda$readBackupJsonFile$1(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;Ljava/lang/Object;)V
    .locals 7

    .line 153
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->READ_FILE:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    invoke-interface {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;)V

    const/16 v0, 0x2712

    if-nez p1, :cond_0

    .line 155
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    const-string v1, "File is null"

    invoke-direct {p1, v0, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_0
    instance-of v1, p1, Lcom/coderpage/mine/persistence/document/DocumentFile;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 162
    check-cast p1, Lcom/coderpage/mine/persistence/document/DocumentFile;

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFile;->read()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 166
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    const-string v2, "File open input stream failed"

    invoke-static {v1, v2, p1}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    invoke-direct {p1, v0, v2}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    return-void

    .line 172
    :cond_1
    instance-of v1, p1, Ljava/io/File;

    const-string v3, "Read backup json file: "

    const-string v4, "File not found"

    if-eqz v1, :cond_4

    .line 173
    check-cast p1, Ljava/io/File;

    .line 174
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coderpage/base/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 177
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    const-string v1, "File not exist"

    invoke-direct {p1, v0, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    return-void

    .line 180
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    const-string v1, "Illegal file type"

    invoke-direct {p1, v0, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    return-void

    .line 186
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 188
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    invoke-static {v1, v4, p1}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    invoke-direct {p1, v0, v4}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    return-void

    .line 194
    :cond_4
    instance-of v1, p1, Landroid/net/Uri;

    if-eqz v1, :cond_5

    .line 195
    check-cast p1, Landroid/net/Uri;

    .line 196
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coderpage/base/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :try_start_2
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coderpage/mine/MineApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 201
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    invoke-static {v1, v4, p1}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    invoke-direct {p1, v0, v4}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_6

    .line 208
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    const-string v1, "File is invalid"

    invoke-direct {p1, v0, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    return-void

    .line 216
    :cond_6
    :try_start_3
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    :try_start_4
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 223
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 231
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 238
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 245
    :goto_3
    sget-object p1, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->CHECK_FILE_FORMAT:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;)V

    .line 247
    :try_start_8
    const-class p1, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    invoke-static {v2, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    .line 248
    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->success(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 250
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    const-string v2, "Parse json err"

    invoke-static {v1, v2, p1}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    const-string v1, "not a json file"

    invoke-direct {p1, v0, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    :goto_4
    return-void

    :catch_6
    move-exception v2

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_7
    move-exception p1

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v1, v2

    goto :goto_8

    :catch_8
    move-exception p1

    move-object v1, v2

    move-object v2, p1

    move-object p1, v1

    .line 225
    :goto_5
    :try_start_9
    sget-object v3, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    const-string v4, "IO Err"

    invoke-static {v3, v4, v2}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    new-instance v2, Lcom/coderpage/base/common/NonThrowError;

    const-string v3, "File io err"

    invoke-direct {v2, v0, v3}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz p1, :cond_8

    .line 231
    :try_start_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_6

    :catch_9
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    if-eqz v1, :cond_9

    .line 238
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_7

    :catch_a
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_7
    return-void

    :catchall_2
    move-exception p0

    move-object v2, p1

    :goto_8
    if-eqz v2, :cond_a

    .line 231
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_9

    :catch_b
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_9
    if-eqz v1, :cond_b

    .line 238
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_a

    :catch_c
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    :cond_b
    :goto_a
    goto :goto_c

    :goto_b
    throw p0

    :goto_c
    goto :goto_b
.end method

.method static synthetic lambda$restoreCategoryTable$3(Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)Z
    .locals 3

    .line 327
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getAccountId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getAccountId()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$restoreCategoryTable$4([Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;IILcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V
    .locals 0

    .line 342
    aput-object p3, p0, p2

    return-void
.end method

.method static synthetic lambda$restoreDataFromBackupData$2(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 4

    .line 267
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->RESTORE_TO_DB:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    invoke-interface {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;)V

    .line 269
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->getMetadata()Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->getCategoryList()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x2711

    if-eqz v1, :cond_0

    .line 272
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->restoreCategoryTable(Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    new-instance v1, Lcom/coderpage/base/common/NonThrowError;

    const-string v3, "\u6062\u590d\u5206\u7c7b\u6570\u636e\u5931\u8d25"

    invoke-direct {v1, v2, v3}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->getExpenseList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 281
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->restoreExpenseTable(Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    const-string v1, "\u6062\u590d\u6d88\u8d39\u6570\u636e\u5931\u8d25"

    invoke-direct {v0, v2, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->failure(Ljava/lang/Object;)V

    .line 288
    :cond_1
    invoke-interface {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public static listBackupFiles(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->listBackupFiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listBackupFiles(Landroid/content/Context;Lcom/coderpage/base/common/Callback;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->listBackupFiles(Lcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method public static readBackupJsonFile(Ljava/lang/Object;Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "listener"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$eJGXY5CWZ2YIsbgWcZAPWFmI82A;

    invoke-direct {v0, p1, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$eJGXY5CWZ2YIsbgWcZAPWFmI82A;-><init>(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coderpage/concurrency/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static readData()Lcom/coderpage/mine/app/tally/module/backup/BackupModel;
    .locals 8

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;

    invoke-direct {v1}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;-><init>()V

    .line 447
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v2

    .line 449
    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v3

    invoke-interface {v3}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->allCategory()Ljava/util/List;

    move-result-object v3

    .line 450
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 451
    new-instance v5, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;

    invoke-direct {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;-><init>()V

    .line 452
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->setName(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->setUniqueName(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->setIcon(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getAccountId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->setAccountId(J)V

    .line 456
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->setType(I)V

    .line 457
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getSyncStatus()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->setSyncStatus(I)V

    .line 459
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryAll()Ljava/util/List;

    move-result-object v2

    .line 463
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 465
    new-instance v5, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;

    invoke-direct {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;-><init>()V

    .line 466
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->setAmount(D)V

    .line 467
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->setDesc(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->setCategory(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->setTime(J)V

    .line 470
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getSyncId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->setSyncId(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAccountId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->setAccountId(J)V

    .line 472
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getSyncStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->setSyncStatus(I)V

    .line 473
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->setType(I)V

    .line 476
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->setBackupDate(J)V

    const-string v2, "0.7.4"

    .line 480
    invoke-virtual {v1, v2}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->setClientVersion(Ljava/lang/String;)V

    .line 481
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->setDeviceName(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1, v2}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->setClientVersion(Ljava/lang/String;)V

    const/16 v2, 0x4a

    .line 483
    invoke-virtual {v1, v2}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->setClientVersionCode(I)V

    .line 484
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->setExpenseNumber(J)V

    .line 486
    new-instance v2, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;-><init>()V

    .line 488
    invoke-virtual {v2, v1}, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->setMetadata(Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;)V

    .line 489
    invoke-virtual {v2, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->setCategoryList(Ljava/util/List;)V

    .line 490
    invoke-virtual {v2, v3}, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->setExpenseList(Ljava/util/List;)V

    return-object v2
.end method

.method private static restoreCategoryTable(Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "metadata",
            "categoryList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;",
            ">;)Z"
        }
    .end annotation

    .line 308
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->allCategory()Ljava/util/List;

    move-result-object v1

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 312
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 313
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;

    .line 314
    new-instance v6, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    invoke-direct {v6}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;-><init>()V

    .line 315
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setName(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setIcon(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->getAccountId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setAccountId(J)V

    .line 318
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->getSyncStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setSyncStatus(I)V

    .line 320
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->getClientVersionCode()I

    move-result v7

    const/16 v8, 0x3c

    if-ge v7, v8, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    .line 321
    :cond_0
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->getType()I

    move-result v7

    .line 320
    :goto_1
    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setType(I)V

    .line 323
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->getUniqueName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 324
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->getIcon()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->getUniqueName()Ljava/lang/String;

    move-result-object v5

    .line 323
    :goto_2
    invoke-virtual {v6, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setUniqueName(Ljava/lang/String;)V

    .line 326
    new-instance v5, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$21mdBEPFfYY6ieJ-l1iVIAz6XKA;

    invoke-direct {v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$21mdBEPFfYY6ieJ-l1iVIAz6XKA;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V

    invoke-static {v1, v5}, Lcom/coderpage/base/utils/ArrayUtils;->contains(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 333
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 336
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_4

    return p1

    .line 340
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    .line 341
    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$qlCCoxb1HyjbYmCKFPIsyiioHO8;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$qlCCoxb1HyjbYmCKFPIsyiioHO8;-><init>([Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V

    invoke-static {v2, v1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 345
    :try_start_0
    invoke-interface {v0, p0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->insert([Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 348
    sget-object p1, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    const-string v0, "\u6062\u590d\u6570\u636e\u5931\u8d25-\u5206\u7c7b\u8868"

    invoke-static {p1, v0, p0}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method public static restoreDataFromBackupData(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "backupModel",
            "listener"
        }
    .end annotation

    .line 266
    new-instance p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$q5CVipcxxHmpqjCzofY3I-e4ga0;

    invoke-direct {p0, p2, p1}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$q5CVipcxxHmpqjCzofY3I-e4ga0;-><init>(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    invoke-static {p0}, Lcom/coderpage/concurrency/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static restoreExpenseTable(Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "metadata",
            "expenseList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;",
            ">;)Z"
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->getClientVersionCode()I

    move-result p0

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    .line 358
    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->restoreExpenseTableBefore060(Ljava/util/List;)Z

    move-result p0

    return p0

    .line 361
    :cond_0
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object p0

    .line 362
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 363
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 364
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;

    .line 366
    new-instance v4, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    invoke-direct {v4}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;-><init>()V

    .line 367
    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setAccountId(J)V

    .line 368
    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getAmount()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setAmount(D)V

    .line 369
    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setTime(J)V

    .line 370
    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setDesc(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getSyncId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setSyncId(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getSyncStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setSyncStatus(I)V

    .line 374
    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getType()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setType(I)V

    .line 376
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->insert([Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 383
    sget-object p1, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    const-string v0, "\u6062\u590d\u6570\u636e\u5931\u8d25-\u6d88\u8d39\u8bb0\u5f55\u8868"

    invoke-static {p1, v0, p0}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static restoreExpenseTableBefore060(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;",
            ">;)Z"
        }
    .end annotation

    .line 396
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->allExpenseCategory()Ljava/util/List;

    move-result-object v1

    .line 400
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 401
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 402
    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 405
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 406
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 407
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;

    .line 411
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 413
    new-instance v7, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    invoke-direct {v7}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;-><init>()V

    .line 414
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getAccountId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setAccountId(J)V

    .line 415
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getAmount()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setAmount(D)V

    .line 416
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setTime(J)V

    .line 417
    invoke-virtual {v7, v6}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setDesc(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getSyncId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setSyncId(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getSyncStatus()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setSyncStatus(I)V

    .line 421
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->getType()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setType(I)V

    .line 423
    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 427
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->insert([Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 430
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup;->TAG:Ljava/lang/String;

    const-string v1, "\u6062\u590d\u6570\u636e\u5931\u8d25-\u6d88\u8d39\u8bb0\u5f55\u8868"

    invoke-static {v0, v1, p0}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method
