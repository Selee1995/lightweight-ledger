.class public Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "DebugViewModel.java"


# static fields
.field private static final REQUEST_CODE_READ_EXTERNAL_STORAGE:I = 0x2

.field private static final REQUEST_CODE_WRITE_EXTERNAL_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->copyDatabaseFileToSdcard()V

    return-void
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;I)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->showToastShort(I)V

    return-void
.end method

.method private copyDatabaseFileToSdcard()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/debug/-$$Lambda$DebugViewModel$kbgfkYws61agtzU4_ss_EaZrWEg;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/debug/-$$Lambda$DebugViewModel$kbgfkYws61agtzU4_ss_EaZrWEg;-><init>(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$copyDatabaseFileToSdcard$0$DebugViewModel()V
    .locals 7

    .line 61
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "sql_tally"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 66
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/coderpage/base/cache/Cache;->getCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/\u8bb0\u8d26\u672c.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5a4

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 72
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    add-int/2addr v4, v5

    .line 74
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(I)V

    .line 75
    invoke-virtual {v0, v1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5bfc\u51fa\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->showToastLong(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string v0, "\u5bfc\u51fa\u6210\u529f"

    .line 83
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method public onExportDataBaseClick(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    .line 43
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel$1;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->requestPermission(Z[Ljava/lang/String;Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;)V

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 95
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1, p2, p3, p4}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method
