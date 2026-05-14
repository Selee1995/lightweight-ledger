.class public final Lcom/tendcloud/tenddata/l;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Landroid/telephony/TelephonyManager; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Z = false

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/l;->d:Ljava/util/HashMap;

    .line 38
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 39
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/tendcloud/tenddata/l;->a:Landroid/telephony/TelephonyManager;

    const-string v1, "imei1"

    .line 40
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/l;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "meid1"

    .line 41
    invoke-static {v3}, Lcom/tendcloud/tenddata/l;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/o;->B(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "imei2"

    .line 43
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/l;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "meid2"

    .line 44
    invoke-static {v3}, Lcom/tendcloud/tenddata/l;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "imsi"

    .line 46
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidId"

    .line 47
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac"

    .line 48
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ethMac"

    .line 49
    invoke-static {}, Lcom/tendcloud/tenddata/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dummy0"

    .line 50
    invoke-static {}, Lcom/tendcloud/tenddata/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serialNo"

    .line 51
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1a

    .line 264
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/l;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, "|"

    :try_start_0
    const-string v1, "mac"

    .line 84
    invoke-static {v1}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ":"

    const-string v3, ""

    .line 87
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "androidId"

    .line 90
    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imeis"

    .line 91
    invoke-static {v3}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "imsi"

    .line 92
    invoke-static {v4}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "simId"

    .line 93
    invoke-static {v5}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-static {}, Lcom/tendcloud/tenddata/l;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "serialNo"

    .line 96
    invoke-static {v7}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0xaa

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x2

    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 240
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1a

    .line 244
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 246
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/l;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x17

    .line 251
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 252
    sget-object p0, Lcom/tendcloud/tenddata/l;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 254
    :cond_1
    sget-object p0, Lcom/tendcloud/tenddata/l;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/tendcloud/tenddata/l;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 66
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/y;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/o;->tryGetDoubleSimInfoReCheck(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/di;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 26
    sput-boolean p0, Lcom/tendcloud/tenddata/l;->c:Z

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    const-string v0, "dummy"

    .line 162
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 163
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 165
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 170
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 172
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "%"

    .line 180
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 181
    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    :try_start_0
    const-string p0, "imei2"

    .line 453
    invoke-static {p0}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "imei1"

    .line 455
    invoke-static {p0}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 457
    :goto_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 460
    :cond_1
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 111
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/l;->c:Z

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lcom/tendcloud/tenddata/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/l$1;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/l$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/l;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    sput-object p0, Lcom/tendcloud/tenddata/l;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 213
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/l;->f()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    :try_start_1
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->j(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object v0, v1

    :catchall_1
    :goto_0
    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "meid1"

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string v1, "meid2"

    .line 474
    :cond_0
    invoke-static {v1}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 475
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 478
    :cond_1
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x9

    .line 147
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object p0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object p0

    .line 149
    :cond_0
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 150
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 151
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    .line 352
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/dd;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 195
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/tendcloud/tenddata/l;->e()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/l;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->j(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    :cond_1
    move-object v1, p0

    :catchall_1
    :goto_1
    return-object v1
.end method

.method private static e()Ljava/lang/String;
    .locals 8

    .line 364
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 365
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 366
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 373
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-byte v6, v0, v4

    const-string v7, "%02X:"

    new-array v5, v5, [Ljava/lang/Object;

    .line 375
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 377
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 378
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 383
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 229
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f()Ljava/lang/String;
    .locals 8

    .line 395
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 396
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 397
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eth0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 404
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-byte v6, v0, v4

    const-string v7, "%02X:"

    new-array v5, v5, [Ljava/lang/Object;

    .line 406
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 408
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 414
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 280
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->B(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/tendcloud/tenddata/l;->d:Ljava/util/HashMap;

    const-string v0, "imei2"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/l;->d:Ljava/util/HashMap;

    const-string v0, "imei1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 322
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 326
    sget-object p0, Lcom/tendcloud/tenddata/l;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 296
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 298
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->B(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const-string v2, "imei1"

    if-ne p0, v1, :cond_0

    .line 300
    :try_start_1
    sget-object p0, Lcom/tendcloud/tenddata/l;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v1, "imei2"

    .line 301
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 308
    :catch_0
    :cond_0
    :try_start_2
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 309
    sget-object p0, Lcom/tendcloud/tenddata/l;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 337
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 339
    sget-object p0, Lcom/tendcloud/tenddata/l;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 426
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    .line 428
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 429
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 437
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
