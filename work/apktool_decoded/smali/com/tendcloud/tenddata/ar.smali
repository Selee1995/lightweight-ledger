.class public final Lcom/tendcloud/tenddata/ar;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static final a:I = 0x258


# instance fields
.field private b:I

.field private c:[B

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/ar;-><init>(I[BLjava/util/Map;)V

    return-void
.end method

.method private constructor <init>(I[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/tendcloud/tenddata/ar;->b:I

    .line 30
    iput-object p2, p0, Lcom/tendcloud/tenddata/ar;->c:[B

    .line 31
    iput-object p3, p0, Lcom/tendcloud/tenddata/ar;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x258

    return v0
.end method

.method private static a(IILjava/io/InputStream;Ljava/util/Map;)Lcom/tendcloud/tenddata/ar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/tendcloud/tenddata/ar;"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 92
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 95
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 101
    new-instance p2, Lcom/tendcloud/tenddata/ar;

    invoke-direct {p2, p0, p1, p3}, Lcom/tendcloud/tenddata/ar;-><init>(I[BLjava/util/Map;)V

    return-object p2

    :catchall_0
    move-exception p0

    .line 98
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ar;
    .locals 2

    .line 86
    new-instance v0, Lcom/tendcloud/tenddata/ar;

    const/16 v1, 0x258

    invoke-direct {v0, v1, p0}, Lcom/tendcloud/tenddata/ar;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/net/HttpURLConnection;JLcom/tendcloud/tenddata/an;)Lcom/tendcloud/tenddata/ar;
    .locals 11

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x190

    if-le v8, v1, :cond_0

    .line 58
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    move-object v9, v1

    .line 63
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-static {v8, v2, v9, v1}, Lcom/tendcloud/tenddata/ar;->a(IILjava/io/InputStream;Ljava/util/Map;)Lcom/tendcloud/tenddata/ar;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move v3, v8

    move-wide v4, p2

    move-object v6, v10

    move-object v7, p4

    .line 65
    invoke-static/range {v1 .. v7}, Lcom/tendcloud/tenddata/ar;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;IJLcom/tendcloud/tenddata/ar;Lcom/tendcloud/tenddata/an;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v9, :cond_1

    .line 74
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_0
    const/16 v8, 0x258

    :catchall_1
    move-object v9, v0

    .line 70
    :catchall_2
    :try_start_4
    new-instance v10, Lcom/tendcloud/tenddata/ar;

    invoke-direct {v10, v8, v0, v0}, Lcom/tendcloud/tenddata/ar;-><init>(I[BLjava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v9, :cond_1

    goto :goto_1

    :catchall_3
    :cond_1
    :goto_2
    return-object v10

    :catchall_4
    move-exception p0

    if-eqz v9, :cond_2

    .line 74
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 80
    :catchall_5
    :cond_2
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private static a(Lcom/tendcloud/tenddata/ar;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/ar;->c()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/ar;->c()[B

    move-result-object p0

    .line 155
    array-length v1, p0

    const/high16 v2, 0x6400000

    if-le v1, v2, :cond_1

    const-string p0, "Input stream more than 100 MB size limit"

    move-object v0, p0

    goto :goto_0

    .line 158
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/net/HttpURLConnection;IJLcom/tendcloud/tenddata/ar;Lcom/tendcloud/tenddata/an;)V
    .locals 4

    const-string v0, "targetIP"

    if-eqz p1, :cond_2

    .line 115
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 117
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    const-string v2, "targetUrl"

    .line 118
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    const-string p1, "0.0.0.0"

    .line 123
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/16 p1, 0xc8

    if-ne p2, p1, :cond_1

    if-eqz p6, :cond_0

    .line 131
    invoke-virtual {p6}, Lcom/tendcloud/tenddata/an;->a()[B

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "reqSize"

    .line 132
    invoke-virtual {p6}, Lcom/tendcloud/tenddata/an;->a()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "respTime"

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p5

    sub-long/2addr p5, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "errorMsg"

    .line 137
    invoke-static {p5}, Lcom/tendcloud/tenddata/ar;->a(Lcom/tendcloud/tenddata/ar;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "statusCode"

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 142
    :goto_1
    invoke-static {p0, p1, v1}, Lcom/tendcloud/tenddata/bp;->a(Ljava/lang/String;ZLjava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_2
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/tendcloud/tenddata/ar;->b:I

    return v0
.end method

.method public c()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tendcloud/tenddata/ar;->c:[B

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/tendcloud/tenddata/ar;->d:Ljava/util/Map;

    return-object v0
.end method
