.class public Lcom/tendcloud/tenddata/cg;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/cg$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;

.field private static volatile c:Lcom/tendcloud/tenddata/cg;


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

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/tendcloud/tenddata/cg;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/cg;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/cg;->c:Lcom/tendcloud/tenddata/cg;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/cg;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 162
    new-instance v0, Lcom/tendcloud/tenddata/cg$1;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/cg$1;-><init>(Lcom/tendcloud/tenddata/cg;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/cg;->d:Landroid/content/ServiceConnection;

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Lcom/tendcloud/tenddata/cg$a;)Ljava/lang/String;
    .locals 8

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/tendcloud/tenddata/cg;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 136
    array-length v2, p1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 137
    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    :try_start_1
    const-string v3, "SHA1"

    .line 139
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    array-length v4, p1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    .line 144
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    :catchall_1
    :cond_1
    sput-object v1, Lcom/tendcloud/tenddata/cg;->b:Ljava/lang/String;

    .line 157
    :cond_2
    sget-object p1, Lcom/tendcloud/tenddata/cg;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, p0}, Lcom/tendcloud/tenddata/cg$a;->getSerID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/cg;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tendcloud/tenddata/cg;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.heytap.openid"

    .line 37
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 43
    :cond_1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_2

    return v0

    :cond_2
    return v1

    :catchall_0
    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 72
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/tendcloud/tenddata/cg;->d:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tendcloud/tenddata/cg;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 78
    new-instance v1, Lcom/tendcloud/tenddata/cg$a;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/cg$a;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v0, "OUID"

    .line 80
    invoke-static {v0, p1, v1}, Lcom/tendcloud/tenddata/cg;->a(Ljava/lang/String;Landroid/content/Context;Lcom/tendcloud/tenddata/cg$a;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string v0, "DUID"

    .line 88
    invoke-static {v0, p1, v1}, Lcom/tendcloud/tenddata/cg;->a(Ljava/lang/String;Landroid/content/Context;Lcom/tendcloud/tenddata/cg$a;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/dd;->setVAID(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    const-string v0, "AUID"

    .line 96
    invoke-static {v0, p1, v1}, Lcom/tendcloud/tenddata/cg;->a(Ljava/lang/String;Landroid/content/Context;Lcom/tendcloud/tenddata/cg$a;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/dd;->setAAID(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 104
    :catchall_2
    :try_start_4
    iget-object v0, p0, Lcom/tendcloud/tenddata/cg;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_0
    return-void
.end method

.method public static bindONEPLUSServiceGetOAID(Landroid/content/Context;)V
    .locals 1

    .line 66
    sget-object v0, Lcom/tendcloud/tenddata/cg;->c:Lcom/tendcloud/tenddata/cg;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/cg;->b(Landroid/content/Context;)V

    return-void
.end method
