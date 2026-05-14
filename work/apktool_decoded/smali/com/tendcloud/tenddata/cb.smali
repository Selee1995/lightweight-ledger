.class public final Lcom/tendcloud/tenddata/cb;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/cb$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/tendcloud/tenddata/cb;


# instance fields
.field a:Landroid/content/ServiceConnection;

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/tendcloud/tenddata/cb;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/cb;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/cb;->c:Lcom/tendcloud/tenddata/cb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/cb;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 120
    new-instance v0, Lcom/tendcloud/tenddata/cb$1;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/cb$1;-><init>(Lcom/tendcloud/tenddata/cb;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/cb;->a:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/cb;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tendcloud/tenddata/cb;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/bz;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/cb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catchall_0
    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/cb;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x80

    .line 66
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "com.huawei.hwid"

    .line 51
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/cb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "com.huawei.hwid.tv"

    const-string v3, "com.huawei.hms"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/cb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/cb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v0, v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static bindHWServiceGetOAID(Landroid/content/Context;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/tendcloud/tenddata/cb;->c:Lcom/tendcloud/tenddata/cb;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/cb;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .line 90
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lcom/tendcloud/tenddata/cb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/tendcloud/tenddata/cb;->a:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/cb;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 96
    new-instance v1, Lcom/tendcloud/tenddata/cb$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/tendcloud/tenddata/cb$a;-><init>(Landroid/os/IBinder;Lcom/tendcloud/tenddata/cb$1;)V

    .line 97
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/cb$a;->getOAID()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :catchall_0
    :try_start_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/cb;->a:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method
