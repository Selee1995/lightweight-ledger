.class public Lcom/coderpage/base/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field private static CACHE_FOLDER_NAME:Ljava/lang/String;

.field private static DATA_ROOT_PATH:Ljava/lang/String;

.field private static SD_CARD_ROOT_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/coderpage/base/cache/Cache;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/base/cache/Cache;->TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/base/cache/Cache;->SD_CARD_ROOT_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/coderpage/base/cache/Cache;->DATA_ROOT_PATH:Ljava/lang/String;

    const-string v0, "MineApp"

    .line 28
    sput-object v0, Lcom/coderpage/base/cache/Cache;->CACHE_FOLDER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCacheFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/coderpage/base/cache/Cache;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-static {p0}, Lcom/coderpage/base/cache/Cache;->initRootDirPath(Landroid/content/Context;)V

    const-string v1, "MyTallBook"

    .line 48
    sput-object v1, Lcom/coderpage/base/cache/Cache;->CACHE_FOLDER_NAME:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/coderpage/base/cache/Cache;->DATA_ROOT_PATH:Ljava/lang/String;

    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mounted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 52
    sget-object p0, Lcom/coderpage/base/cache/Cache;->SD_CARD_ROOT_PATH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coderpage/base/cache/Cache;->DATA_ROOT_PATH:Ljava/lang/String;

    .line 54
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coderpage/base/cache/Cache;->CACHE_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 55
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initRootDirPath(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 32
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    .line 33
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 35
    :cond_0
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/coderpage/base/cache/Cache;->SD_CARD_ROOT_PATH:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    .line 63
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/coderpage/base/cache/-$$Lambda$Cache$5NKipqtDRgxxM-NBUa6nrKPa_3k;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/base/cache/-$$Lambda$Cache$5NKipqtDRgxxM-NBUa6nrKPa_3k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
