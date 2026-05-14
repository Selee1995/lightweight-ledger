.class public final Lcom/tendcloud/tenddata/ci;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/ci$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/tendcloud/tenddata/ci;


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

    .line 44
    new-instance v0, Lcom/tendcloud/tenddata/ci;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/ci;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/ci;->c:Lcom/tendcloud/tenddata/ci;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/ci;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 76
    new-instance v0, Lcom/tendcloud/tenddata/ci$1;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/ci$1;-><init>(Lcom/tendcloud/tenddata/ci;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/ci;->a:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/ci;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tendcloud/tenddata/ci;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.deviceidservice"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.deviceidservice"

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/tendcloud/tenddata/ci;->a:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/ci;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 57
    new-instance v1, Lcom/tendcloud/tenddata/ci$a;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/ci$a;-><init>(Landroid/os/IBinder;)V

    .line 58
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ci$a;->getOAID()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/ci;->a:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method

.method public static bindSECServiceGetOAID(Landroid/content/Context;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/tendcloud/tenddata/ci;->c:Lcom/tendcloud/tenddata/ci;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/ci;->b(Landroid/content/Context;)V

    return-void
.end method
