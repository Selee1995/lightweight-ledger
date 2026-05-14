.class public Lcom/tendcloud/tenddata/cc;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/cc$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/tendcloud/tenddata/cc;


# instance fields
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/tendcloud/tenddata/cc;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/cc;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/cc;->b:Lcom/tendcloud/tenddata/cc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/cc;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 85
    new-instance v0, Lcom/tendcloud/tenddata/cc$1;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/cc$1;-><init>(Lcom/tendcloud/tenddata/cc;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/cc;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/cc;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/tendcloud/tenddata/cc;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->k()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.zui.deviceidservice"

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

    .line 55
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zui.deviceidservice"

    const-string v2, "com.zui.deviceidservice.DeviceidService"

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/tendcloud/tenddata/cc;->c:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/cc;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 61
    new-instance v1, Lcom/tendcloud/tenddata/cc$a;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/cc$a;-><init>(Landroid/os/IBinder;)V

    .line 62
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/cc$a;->getOAID()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    :try_start_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/cc;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method

.method public static bindLENOVOServiceGetOAID(Landroid/content/Context;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/tendcloud/tenddata/cc;->b:Lcom/tendcloud/tenddata/cc;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/cc;->b(Landroid/content/Context;)V

    return-void
.end method
