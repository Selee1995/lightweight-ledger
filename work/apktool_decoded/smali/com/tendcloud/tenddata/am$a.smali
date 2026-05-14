.class public final Lcom/tendcloud/tenddata/am$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private body:Lcom/tendcloud/tenddata/an;

.field private cert:Ljava/lang/String;

.field private connectionTimeout:I

.field private headers:Lcom/tendcloud/tenddata/ap;

.field private host:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private method:Lcom/tendcloud/tenddata/aq;

.field private readTimeout:I

.field private url:Ljava/net/URL;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 264
    iput v0, p0, Lcom/tendcloud/tenddata/am$a;->connectionTimeout:I

    .line 265
    iput v0, p0, Lcom/tendcloud/tenddata/am$a;->readTimeout:I

    return-void
.end method


# virtual methods
.method public body(Lcom/tendcloud/tenddata/an;)Lcom/tendcloud/tenddata/am$a;
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/tendcloud/tenddata/am$a;->body:Lcom/tendcloud/tenddata/an;

    return-object p0
.end method

.method public build()Lcom/tendcloud/tenddata/am;
    .locals 12

    .line 324
    new-instance v11, Lcom/tendcloud/tenddata/am;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am$a;->url:Ljava/net/URL;

    iget-object v2, p0, Lcom/tendcloud/tenddata/am$a;->method:Lcom/tendcloud/tenddata/aq;

    iget-object v3, p0, Lcom/tendcloud/tenddata/am$a;->headers:Lcom/tendcloud/tenddata/ap;

    iget-object v4, p0, Lcom/tendcloud/tenddata/am$a;->body:Lcom/tendcloud/tenddata/an;

    iget v5, p0, Lcom/tendcloud/tenddata/am$a;->connectionTimeout:I

    iget v6, p0, Lcom/tendcloud/tenddata/am$a;->readTimeout:I

    iget-object v7, p0, Lcom/tendcloud/tenddata/am$a;->cert:Ljava/lang/String;

    iget-object v8, p0, Lcom/tendcloud/tenddata/am$a;->host:Ljava/lang/String;

    iget-object v9, p0, Lcom/tendcloud/tenddata/am$a;->ip:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/tendcloud/tenddata/am;-><init>(Ljava/net/URL;Lcom/tendcloud/tenddata/aq;Lcom/tendcloud/tenddata/ap;Lcom/tendcloud/tenddata/an;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/am$1;)V

    return-object v11
.end method

.method public cert(Ljava/lang/String;)Lcom/tendcloud/tenddata/am$a;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/tendcloud/tenddata/am$a;->cert:Ljava/lang/String;

    return-object p0
.end method

.method public connectionTimeout(I)Lcom/tendcloud/tenddata/am$a;
    .locals 0

    .line 299
    iput p1, p0, Lcom/tendcloud/tenddata/am$a;->connectionTimeout:I

    return-object p0
.end method

.method public header(Lcom/tendcloud/tenddata/ap;)Lcom/tendcloud/tenddata/am$a;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/tendcloud/tenddata/am$a;->headers:Lcom/tendcloud/tenddata/ap;

    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/tendcloud/tenddata/am$a;
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/tendcloud/tenddata/am$a;->host:Ljava/lang/String;

    return-object p0
.end method

.method public ip(Ljava/lang/String;)Lcom/tendcloud/tenddata/am$a;
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/tendcloud/tenddata/am$a;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public method(Lcom/tendcloud/tenddata/aq;)Lcom/tendcloud/tenddata/am$a;
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/tendcloud/tenddata/am$a;->method:Lcom/tendcloud/tenddata/aq;

    return-object p0
.end method

.method public readTimeout(I)Lcom/tendcloud/tenddata/am$a;
    .locals 0

    .line 304
    iput p1, p0, Lcom/tendcloud/tenddata/am$a;->readTimeout:I

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/tendcloud/tenddata/am$a;
    .locals 1

    .line 281
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/am$a;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
