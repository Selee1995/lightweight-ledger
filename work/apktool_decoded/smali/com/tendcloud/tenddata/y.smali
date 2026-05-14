.class public Lcom/tendcloud/tenddata/y;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final a:Z = false

.field public static b:Ljava/lang/String; = "TDLog"

.field public static c:Z = false

.field static final synthetic d:Z = true

.field private static volatile e:I = -0x1

.field private static final f:Ljava/lang/String; = "UTF-8"

.field private static final g:Ljava/lang/String; = "ge"

.field private static final h:Ljava/lang/String; = "tp"

.field private static final i:Ljava/lang/String; = "rop"

.field private static final j:Ljava/util/concurrent/ExecutorService;

.field private static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:B = 0x3dt

.field private static final m:Ljava/lang/String; = "US-ASCII"

.field private static final n:[B

.field private static o:[B = null

.field private static final p:Ljava/security/SecureRandom;

.field private static final q:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static final r:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final s:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/y;->j:Ljava/util/concurrent/ExecutorService;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/y;->k:Ljava/util/HashMap;

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 370
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tendcloud/tenddata/y;->n:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 670
    fill-array-data v0, :array_1

    sput-object v0, Lcom/tendcloud/tenddata/y;->o:[B

    .line 957
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/y;->p:Ljava/security/SecureRandom;

    const-string v0, "^([0-9A-F]{2}:){5}([0-9A-F]{2})$"

    .line 1022
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/y;->s:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 710
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 711
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 712
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 714
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 716
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x6400000

    if-gt v3, v4, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Input stream more than 100 MB size limit"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 727
    :catchall_0
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 733
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-object v0

    :catchall_2
    nop

    goto :goto_1

    :catchall_3
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 89
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 90
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    .line 92
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 93
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "td_channel_id"

    .line 94
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 103
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_0
    return-object p1

    :cond_1
    if-eqz p0, :cond_2

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_1
    nop

    goto :goto_1

    :catchall_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_0

    :catchall_3
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 659
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 660
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 217
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .line 305
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const/16 v4, 0x30

    .line 309
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 0

    .line 506
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/y;->b([BII)[B

    move-result-object p0

    .line 510
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "US-ASCII"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 513
    :catchall_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 248
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/io/File;[B)V
    .locals 3

    .line 865
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 866
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x1000

    :try_start_1
    new-array p0, p0, [B

    .line 870
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 871
    invoke-virtual {p1, p0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 874
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 875
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 874
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 875
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/tendcloud/tenddata/v;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/tendcloud/tenddata/v;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 195
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 196
    new-instance v3, Lcom/tendcloud/tenddata/y$2;

    invoke-direct {v3, p1, v2}, Lcom/tendcloud/tenddata/y$2;-><init>(Lcom/tendcloud/tenddata/v;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 206
    invoke-static {p0, p1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 209
    invoke-virtual {p2, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/tendcloud/tenddata/v;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 162
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 167
    new-instance v2, Lcom/tendcloud/tenddata/y$1;

    invoke-direct {v2, p1, v1}, Lcom/tendcloud/tenddata/y$1;-><init>(Lcom/tendcloud/tenddata/v;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 178
    invoke-static {p1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 182
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    .line 115
    sget v0, Lcom/tendcloud/tenddata/y;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    :try_start_0
    const-string v0, "activity"

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 126
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 129
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_0

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    sput v3, Lcom/tendcloud/tenddata/y;->e:I

    return v2

    .line 135
    :cond_1
    sput v2, Lcom/tendcloud/tenddata/y;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return v3

    .line 141
    :cond_3
    sget p0, Lcom/tendcloud/tenddata/y;->e:I

    if-nez p0, :cond_4

    return v2

    .line 150
    :cond_4
    sput v1, Lcom/tendcloud/tenddata/y;->e:I

    return v3
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 296
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->c(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method private static a([BII[BI)[B
    .locals 5

    .line 391
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/y;->n:[B

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 405
    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x10

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v2, v4

    const/4 v4, 0x2

    if-le p2, v4, :cond_2

    add-int/2addr p1, v4

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v1, p0, 0x18

    :cond_2
    or-int p0, v2, v1

    const/16 p1, 0x3d

    const/4 v1, 0x3

    if-eq p2, v3, :cond_5

    if-eq p2, v4, :cond_4

    if-eq p2, v1, :cond_3

    return-object p3

    :cond_3
    ushr-int/lit8 p1, p0, 0x12

    .line 411
    aget-byte p1, v0, p1

    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0x3f

    .line 412
    aget-byte p2, v0, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, p0, 0x6

    and-int/lit8 p2, p2, 0x3f

    .line 413
    aget-byte p2, v0, p2

    aput-byte p2, p3, p1

    add-int/2addr p4, v1

    and-int/lit8 p0, p0, 0x3f

    .line 414
    aget-byte p0, v0, p0

    aput-byte p0, p3, p4

    return-object p3

    :cond_4
    ushr-int/lit8 p2, p0, 0x12

    .line 418
    aget-byte p2, v0, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 419
    aget-byte v2, v0, v2

    aput-byte v2, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 420
    aget-byte p0, v0, p0

    aput-byte p0, p3, p2

    add-int/2addr p4, v1

    .line 421
    aput-byte p1, p3, p4

    return-object p3

    :cond_5
    ushr-int/lit8 p2, p0, 0x12

    .line 425
    aget-byte p2, v0, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    .line 426
    aget-byte p0, v0, p0

    aput-byte p0, p3, p2

    add-int/lit8 p0, p4, 0x2

    .line 427
    aput-byte p1, p3, p0

    add-int/2addr p4, v1

    .line 428
    aput-byte p1, p3, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p3

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B[B)[B
    .locals 3

    .line 674
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string p1, "DES"

    .line 675
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 676
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v0, "DES/CBC/PKCS5Padding"

    .line 677
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 678
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/tendcloud/tenddata/y;->o:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    .line 679
    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 680
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 0

    .line 1039
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1040
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/io/File;[B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    .line 887
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 889
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 890
    :try_start_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 p0, 0x1000

    :try_start_3
    new-array p0, p0, [B

    .line 893
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 894
    invoke-virtual {p1, p0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 895
    invoke-virtual {v1, p0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 900
    :cond_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 909
    :catchall_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 917
    :catchall_1
    :try_start_6
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    return-object p0

    :catchall_2
    move-exception p0

    goto :goto_1

    :catchall_3
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :catchall_4
    move-exception p0

    move-object p1, v0

    move-object v2, p1

    :goto_1
    if-eqz p1, :cond_1

    .line 900
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    nop

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 909
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 914
    :catchall_6
    :cond_2
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 456
    :try_start_0
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/y;->a([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 458
    sget-boolean v0, Lcom/tendcloud/tenddata/y;->d:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    .line 460
    :goto_0
    sget-boolean v0, Lcom/tendcloud/tenddata/y;->d:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_1
    return-object p0

    .line 458
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static b()Ljava/security/SecureRandom;
    .locals 1

    .line 959
    sget-object v0, Lcom/tendcloud/tenddata/y;->p:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 989
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 992
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 993
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 994
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 995
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 996
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    return-object v0
.end method

.method public static b(I)Z
    .locals 1

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 261
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/y;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_0
    const/16 v2, 0x17

    .line 264
    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 266
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return p0

    :catchall_0
    return v0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b([BII)[B
    .locals 9

    if-eqz p0, :cond_7

    if-ltz p1, :cond_6

    if-ltz p2, :cond_5

    add-int v0, p1, p2

    .line 557
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-gt v0, v1, :cond_4

    .line 573
    div-int/lit8 v0, p2, 0x3

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v5, p2, 0x3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 578
    new-array v1, v0, [B

    add-int/lit8 v5, p2, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    add-int v8, v6, p1

    .line 585
    invoke-static {p0, v8, v3, v1, v7}, Lcom/tendcloud/tenddata/y;->a([BII[BI)[B

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v7, v7, 0x4

    goto :goto_1

    :cond_1
    if-ge v6, p2, :cond_2

    add-int/2addr p1, v6

    sub-int/2addr p2, v6

    .line 597
    invoke-static {p0, p1, p2, v1, v7}, Lcom/tendcloud/tenddata/y;->a([BII[BI)[B

    add-int/lit8 v7, v7, 0x4

    :cond_2
    sub-int/2addr v0, v2

    if-gt v7, v0, :cond_3

    .line 607
    new-array p0, v7, [B

    .line 608
    invoke-static {v1, v4, p0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_3
    return-object v1

    .line 558
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v3, [Ljava/lang/Object;

    .line 561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "Cannot have offset of %d and length of %d with array of length %d"

    .line 559
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot have length offset: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 548
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot have negative offset: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 544
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot serialize a null array."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static b([B[B)[B
    .locals 3

    .line 691
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string p1, "DES"

    .line 692
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 693
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v0, "DES/CBC/PKCS5Padding"

    .line 694
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 695
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/tendcloud/tenddata/y;->o:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    .line 696
    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 697
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    .line 1056
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1057
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1059
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    :catchall_0
    :cond_0
    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 229
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 230
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 229
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 231
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 7

    .line 821
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 825
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v0, 0x400

    :try_start_1
    new-array v2, v0, [B

    .line 828
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    const/4 v4, 0x0

    .line 829
    :try_start_2
    invoke-virtual {v1, v2, v4, v0}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 830
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 832
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 833
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 834
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 842
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 852
    :catchall_0
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_4

    :catchall_1
    move-object v2, p0

    :catchall_2
    move-object p0, v3

    goto :goto_2

    :catchall_3
    move-object v2, p0

    goto :goto_2

    :catchall_4
    move-object v1, p0

    move-object v2, v1

    :goto_2
    if-eqz p0, :cond_1

    .line 842
    :try_start_6
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    nop

    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_6
    :cond_2
    :goto_4
    return-object v2
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 278
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :goto_0
    const/4 v1, 0x1

    :catchall_0
    :cond_1
    return v1
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 641
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 641
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 643
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 644
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/y;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 7

    .line 321
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 322
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 324
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 325
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d([B)[B
    .locals 5

    .line 927
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 928
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 929
    invoke-virtual {v0, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 931
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x400

    :try_start_0
    new-array v2, v2, [B

    .line 934
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 935
    invoke-virtual {v0, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    const/4 v4, 0x0

    .line 936
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 938
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    :catchall_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 950
    :catchall_1
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "SHA-256"

    .line 749
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 751
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 750
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 752
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 3

    const/4 v0, 0x0

    .line 765
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "td.lock"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 767
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 768
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 769
    :cond_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string p1, "rw"

    invoke-direct {p0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    :try_start_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object p0, v0

    :catchall_1
    if-eqz p0, :cond_1

    .line 774
    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/tendcloud/tenddata/y;->j:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 4

    .line 790
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 792
    new-instance v1, Ljava/util/zip/Deflater;

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    const/4 v2, 0x0

    .line 795
    :try_start_0
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "UTF-8"

    .line 796
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-object v2, v3

    goto :goto_0

    :catchall_1
    nop

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 808
    :catchall_2
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 809
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const-wide/16 v0, -0x1

    .line 966
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 968
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    .line 975
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 977
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    .line 1012
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/q;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    .line 1025
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/y;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "02:00:00:00:00:00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00:00:00:00:00:00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method
