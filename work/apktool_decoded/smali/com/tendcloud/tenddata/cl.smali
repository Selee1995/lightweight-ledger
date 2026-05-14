.class public Lcom/tendcloud/tenddata/cl;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/cl$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "android.app.ZteDeviceIdentifyManager"

.field private static c:Ljava/lang/String; = "com.mdid.msa"

.field private static volatile d:Lcom/tendcloud/tenddata/cl;


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

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/tendcloud/tenddata/cl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/cl;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/cl;->d:Lcom/tendcloud/tenddata/cl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/cl;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 135
    new-instance v0, Lcom/tendcloud/tenddata/cl$1;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/cl$1;-><init>(Lcom/tendcloud/tenddata/cl;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/cl;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/cl;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tendcloud/tenddata/cl;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    sget-object v1, Lcom/tendcloud/tenddata/cl;->c:Ljava/lang/String;

    const-string v2, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.bun.msa.action.start.service"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.bun.msa.param.pkgname"

    .line 122
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string p0, "com.bun.msa.param.runinset"

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 30
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->h()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 33
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v1, Lcom/tendcloud/tenddata/cl;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    return v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    const-string v0, "android.app.ZteDeviceIdentifyManager"

    .line 64
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 66
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v4

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getOAID"

    new-array v5, v1, [Ljava/lang/Class;

    .line 69
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static bindZTEServiceGetOAID(Landroid/content/Context;)V
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    .line 57
    sget-object v0, Lcom/tendcloud/tenddata/cl;->d:Lcom/tendcloud/tenddata/cl;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/cl;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/cl;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/cl;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.mdid.msa"

    const-string v3, "com.mdid.msa.service.MsaIdService"

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.bun.msa.action.bindto.service"

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.bun.msa.param.pkgname"

    .line 87
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/tendcloud/tenddata/cl;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/tendcloud/tenddata/cl;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 91
    new-instance v1, Lcom/tendcloud/tenddata/cl$a;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/cl$a;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/cl$a;->getOAID()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :catchall_0
    :try_start_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/cl;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method
