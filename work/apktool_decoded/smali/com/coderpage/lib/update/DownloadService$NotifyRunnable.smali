.class Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/lib/update/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyRunnable"
.end annotation


# instance fields
.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field final synthetic this$0:Lcom/coderpage/lib/update/DownloadService;


# direct methods
.method constructor <init>(Lcom/coderpage/lib/update/DownloadService;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->this$0:Lcom/coderpage/lib/update/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "channel_id_download_apk"

    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    invoke-static {p1}, Lcom/coderpage/lib/update/DownloadService;->access$000(Lcom/coderpage/lib/update/DownloadService;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 131
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/coderpage/lib/update/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Lcom/coderpage/lib/update/DownloadService;->access$000(Lcom/coderpage/lib/update/DownloadService;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 133
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 135
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 136
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 138
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 142
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    const-string v3, "\u5b89\u88c5\u5305\u4e0b\u8f7d\u8fdb\u5ea6"

    invoke-direct {v0, v1, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 144
    iget-object v2, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 145
    invoke-static {p1}, Lcom/coderpage/lib/update/DownloadService;->access$100(Lcom/coderpage/lib/update/DownloadService;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private sendNotification()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->this$0:Lcom/coderpage/lib/update/DownloadService;

    invoke-static {v1}, Lcom/coderpage/lib/update/DownloadService;->access$200(Lcom/coderpage/lib/update/DownloadService;)I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 161
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->this$0:Lcom/coderpage/lib/update/DownloadService;

    invoke-static {v1}, Lcom/coderpage/lib/update/DownloadService;->access$400(Lcom/coderpage/lib/update/DownloadService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 162
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->this$0:Lcom/coderpage/lib/update/DownloadService;

    invoke-static {v2}, Lcom/coderpage/lib/update/DownloadService;->access$200(Lcom/coderpage/lib/update/DownloadService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 163
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 164
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->this$0:Lcom/coderpage/lib/update/DownloadService;

    invoke-static {v1}, Lcom/coderpage/lib/update/DownloadService;->access$100(Lcom/coderpage/lib/update/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x2766

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->this$0:Lcom/coderpage/lib/update/DownloadService;

    invoke-static {v0}, Lcom/coderpage/lib/update/DownloadService;->access$200(Lcom/coderpage/lib/update/DownloadService;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->sendNotification()V

    .line 153
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->this$0:Lcom/coderpage/lib/update/DownloadService;

    invoke-static {v0}, Lcom/coderpage/lib/update/DownloadService;->access$300(Lcom/coderpage/lib/update/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadService$NotifyRunnable;->this$0:Lcom/coderpage/lib/update/DownloadService;

    invoke-static {v0}, Lcom/coderpage/lib/update/DownloadService;->access$300(Lcom/coderpage/lib/update/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
