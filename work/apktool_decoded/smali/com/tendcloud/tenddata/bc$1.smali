.class Lcom/tendcloud/tenddata/bc$1;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bc;->getShortUrl(Lcom/tendcloud/tenddata/TDGenerateUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/bc;

.field final synthetic val$generateUrl:Lcom/tendcloud/tenddata/TDGenerateUrl;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/bc;Lcom/tendcloud/tenddata/TDGenerateUrl;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/tendcloud/tenddata/bc$1;->this$0:Lcom/tendcloud/tenddata/bc;

    iput-object p2, p0, Lcom/tendcloud/tenddata/bc$1;->val$generateUrl:Lcom/tendcloud/tenddata/TDGenerateUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 66
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    iget-object v2, p0, Lcom/tendcloud/tenddata/bc$1;->this$0:Lcom/tendcloud/tenddata/bc;

    invoke-static {v2}, Lcom/tendcloud/tenddata/bc;->a(Lcom/tendcloud/tenddata/bc;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/tendcloud/tenddata/bc$1;->this$0:Lcom/tendcloud/tenddata/bc;

    invoke-static {v4, v1, v3}, Lcom/tendcloud/tenddata/bc;->a(Lcom/tendcloud/tenddata/bc;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://api.talkingdata.com/adt/openapi/rest/socialSharing/getShortUrl?sign="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&nonce="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Short url serve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v3}, Lcom/tendcloud/tenddata/h;->dForInternal([Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v4, 0xbb8

    .line 77
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x3a98

    .line 78
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 80
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v4, "POST"

    .line 81
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    .line 84
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    .line 86
    array-length v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 90
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3

    .line 92
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const-string v7, "TD getShortUrl success:"

    aput-object v7, v5, v6

    aput-object v2, v5, v1

    .line 99
    invoke-static {v5}, Lcom/tendcloud/tenddata/h;->dForInternal([Ljava/lang/String;)V

    .line 100
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "code"

    .line 101
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v4, :cond_2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "TD getShortUrl Error:"

    aput-object v4, v3, v6

    aput-object v2, v3, v1

    .line 102
    invoke-static {v3}, Lcom/tendcloud/tenddata/h;->eForInternal([Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/tendcloud/tenddata/bc$1;->val$generateUrl:Lcom/tendcloud/tenddata/TDGenerateUrl;

    invoke-interface {v1, v0}, Lcom/tendcloud/tenddata/TDGenerateUrl;->callback(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/tendcloud/tenddata/bc$1;->val$generateUrl:Lcom/tendcloud/tenddata/TDGenerateUrl;

    const-string v2, "result"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tendcloud/tenddata/TDGenerateUrl;->callback(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-array v1, v1, [Ljava/lang/String;

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TD getShortUrl Http Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/tendcloud/tenddata/h;->eForInternal([Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/tendcloud/tenddata/bc$1;->val$generateUrl:Lcom/tendcloud/tenddata/TDGenerateUrl;

    invoke-interface {v1, v0}, Lcom/tendcloud/tenddata/TDGenerateUrl;->callback(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    iget-object v1, p0, Lcom/tendcloud/tenddata/bc$1;->val$generateUrl:Lcom/tendcloud/tenddata/TDGenerateUrl;

    invoke-interface {v1, v0}, Lcom/tendcloud/tenddata/TDGenerateUrl;->callback(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
