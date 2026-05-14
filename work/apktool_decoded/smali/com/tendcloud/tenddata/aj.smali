.class public final Lcom/tendcloud/tenddata/aj;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "https://dns.qq.com"

.field private static final b:Ljava/lang/String; = "biYRrllT"

.field private static final c:Ljava/lang/String; = "3658"

.field private static final d:Ljava/lang/String; = "DES"

.field private static final e:Ljava/lang/String; = "DES/ECB/PKCS5Padding"

.field private static final f:Ljava/lang/String; = "utf-8"

.field private static final g:Ljava/lang/String; = "TD_ts_cache_profile"

.field private static final h:J = 0x5265c00L

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/aj;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 56
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://dns.qq.com"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/d?dn="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tendcloud/tenddata/aj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&id="

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "3658"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {}, Lcom/tendcloud/tenddata/al;->a()Lcom/tendcloud/tenddata/am$a;

    move-result-object p0

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/am$a;->url(Ljava/lang/String;)Lcom/tendcloud/tenddata/am$a;

    move-result-object p0

    sget-object v0, Lcom/tendcloud/tenddata/aq;->a:Lcom/tendcloud/tenddata/aq;

    .line 62
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/am$a;->method(Lcom/tendcloud/tenddata/aq;)Lcom/tendcloud/tenddata/am$a;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/am$a;->build()Lcom/tendcloud/tenddata/am;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/tendcloud/tenddata/al;->a(Lcom/tendcloud/tenddata/am;)Lcom/tendcloud/tenddata/ar;

    move-result-object p0

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/ar;->c()[B

    move-result-object p0

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/tendcloud/tenddata/aj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/tendcloud/tenddata/aj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .line 127
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/aj;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    sget-object v1, Lcom/tendcloud/tenddata/aj;->i:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/aj;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 4

    .line 141
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 142
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TD_ts_cache_profile"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p0, v2, v3}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 41
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "biYRrllT"

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "DES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "DES/ECB/PKCS5Padding"

    .line 42
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 43
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 44
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->d(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 81
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 83
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 84
    invoke-static {v2}, Lcom/tendcloud/tenddata/aj;->g(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "utf-8"

    .line 99
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "biYRrllT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "DES/ECB/PKCS5Padding"

    .line 100
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    .line 101
    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    .line 113
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 115
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static updateFailureCountWithHost(Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-static {p0}, Lcom/tendcloud/tenddata/aj;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 35
    sget-object v1, Lcom/tendcloud/tenddata/aj;->i:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateTimeStamp(Ljava/lang/String;)V
    .locals 4

    .line 156
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TD_ts_cache_profile"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
