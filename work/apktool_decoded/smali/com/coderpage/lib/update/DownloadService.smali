.class public Lcom/coderpage/lib/update/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_APK_DOWNLOAD:Ljava/lang/String; = "com.coderpage.lib.update.service.action.ApkDownload"

.field private static final CHANNEL_ID_DOWNLOAD_APK:Ljava/lang/String; = "channel_id_download_apk"

.field private static final CHANNEL_NAME_DOWNLOAD_APK:Ljava/lang/String; = "\u5b89\u88c5\u5305\u4e0b\u8f7d\u8fdb\u5ea6"

.field private static final EXTRA_DOWNLOAD_FILE_NAME:Ljava/lang/String; = "extra_download_file_name"

.field private static final EXTRA_DOWNLOAD_URL:Ljava/lang/String; = "extra_download_url"

.field private static final EXTRA_NOTIFY_ICON_RES_ID:Ljava/lang/String; = "extra_notify_icon_res_id"

.field private static final NOTIFY_ID_DOWNLOAD_APK:I = 0x2766

.field private static final TAG:Ljava/lang/String; = "DownloadService"


# instance fields
.field private mDownFilename:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotifyIconResId:I

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DownloadService"

    .line 47
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/lib/update/DownloadService;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/coderpage/lib/update/DownloadService;->mNotifyIconResId:I

    return p0
.end method

.method static synthetic access$100(Lcom/coderpage/lib/update/DownloadService;)Landroid/app/NotificationManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coderpage/lib/update/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/lib/update/DownloadService;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/coderpage/lib/update/DownloadService;->mProgress:I

    return p0
.end method

.method static synthetic access$300(Lcom/coderpage/lib/update/DownloadService;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coderpage/lib/update/DownloadService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coderpage/lib/update/DownloadService;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coderpage/lib/update/DownloadService;->mDownFilename:Ljava/lang/String;

    return-object p0
.end method

.method private handleActionApkDownload()V
    .locals 2

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/coderpage/lib/update/DownloadService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coderpage/lib/update/DownloadService;->mHandler:Landroid/os/Handler;

    const-string v0, "notification"

    .line 84
    invoke-virtual {p0, v0}, Lcom/coderpage/lib/update/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/coderpage/lib/update/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 85
    invoke-direct {p0}, Lcom/coderpage/lib/update/DownloadService;->startDownload()V

    return-void
.end method

.method private startDownload()V
    .locals 6

    .line 90
    new-instance v0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;

    invoke-direct {v0, p0}, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;-><init>(Lcom/coderpage/lib/update/DownloadService;)V

    .line 91
    iget-object v1, p0, Lcom/coderpage/lib/update/DownloadService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    new-instance v1, Lcom/coderpage/lib/update/FileDownloader;

    invoke-direct {v1, p0}, Lcom/coderpage/lib/update/FileDownloader;-><init>(Landroid/content/Context;)V

    .line 94
    iget-object v2, p0, Lcom/coderpage/lib/update/DownloadService;->mDownloadUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/coderpage/lib/update/DownloadService;->mDownFilename:Ljava/lang/String;

    new-instance v4, Lcom/coderpage/lib/update/-$$Lambda$DownloadService$uti56JUiGBPCOampEzmQMOVoGKI;

    invoke-direct {v4, p0}, Lcom/coderpage/lib/update/-$$Lambda$DownloadService$uti56JUiGBPCOampEzmQMOVoGKI;-><init>(Lcom/coderpage/lib/update/DownloadService;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/coderpage/lib/update/FileDownloader;->download(Ljava/lang/String;Ljava/lang/String;Lcom/coderpage/lib/update/DownloadProgressListener;)Lcom/coderpage/lib/update/Result;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/coderpage/lib/update/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x2766

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 102
    iget-object v2, p0, Lcom/coderpage/lib/update/DownloadService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {v1}, Lcom/coderpage/lib/update/Result;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-string v4, "application/vnd.android.package-archive"

    if-lt v2, v3, :cond_0

    const v2, 0x10000003

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0}, Lcom/coderpage/lib/update/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/coderpage/lib/update/DownloadService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".fileProvider"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v1}, Lcom/coderpage/lib/update/Result;->data()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 108
    invoke-static {v2, v3, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v1}, Lcom/coderpage/lib/update/Result;->data()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coderpage/lib/update/DownloadService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 120
    :cond_1
    sget-object v0, Lcom/coderpage/lib/update/DownloadService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download apk failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coderpage/lib/update/Result;->error()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/coderpage/lib/update/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadErr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coderpage/lib/update/Result;->error()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public static startDownloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadUrl",
            "filename",
            "notifyIconResId"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/coderpage/lib/update/DownloadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start download apk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/lib/update/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.coderpage.lib.update.service.action.ApkDownload"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_download_url"

    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_download_file_name"

    .line 58
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_notify_icon_res_id"

    .line 59
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public synthetic lambda$startDownload$0$DownloadService(JJZ)V
    .locals 0

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 98
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/coderpage/lib/update/DownloadService;->mProgress:I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 171
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coderpage.lib.update.service.action.ApkDownload"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "extra_download_url"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/lib/update/DownloadService;->mDownloadUrl:Ljava/lang/String;

    const-string v0, "extra_download_file_name"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/lib/update/DownloadService;->mDownFilename:Ljava/lang/String;

    .line 76
    sget v0, Lcom/coderpage/lib/update/R$mipmap;->ic_launcher:I

    const-string v1, "extra_notify_icon_res_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coderpage/lib/update/DownloadService;->mNotifyIconResId:I

    .line 77
    invoke-direct {p0}, Lcom/coderpage/lib/update/DownloadService;->handleActionApkDownload()V

    :cond_0
    return-void
.end method
