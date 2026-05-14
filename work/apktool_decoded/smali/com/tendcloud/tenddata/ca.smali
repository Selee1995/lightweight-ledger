.class public Lcom/tendcloud/tenddata/ca;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/ca$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/tendcloud/tenddata/ca;


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

    .line 46
    new-instance v0, Lcom/tendcloud/tenddata/ca;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/ca;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/ca;->b:Lcom/tendcloud/tenddata/ca;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 86
    new-instance v0, Lcom/tendcloud/tenddata/ca$1;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/ca$1;-><init>(Lcom/tendcloud/tenddata/ca;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/ca;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/ca;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/tendcloud/tenddata/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->j()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    :catchall_0
    return p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 55
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.asus.msa.action.ACCESS_DID"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.msa.SupplementaryDID"

    const-string v3, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/tendcloud/tenddata/ca;->c:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tendcloud/tenddata/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 61
    new-instance v1, Lcom/tendcloud/tenddata/ca$a;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/ca$a;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ca$a;->getOAID()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :catchall_0
    :try_start_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/ca;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method

.method public static bindASUSServiceGetOAID(Landroid/content/Context;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/tendcloud/tenddata/ca;->b:Lcom/tendcloud/tenddata/ca;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/ca;->b(Landroid/content/Context;)V

    return-void
.end method
