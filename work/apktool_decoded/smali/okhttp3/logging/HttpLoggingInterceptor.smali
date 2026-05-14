.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$Logger;,
        Lokhttp3/logging/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 45
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 119
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    return-void
.end method

.method private bodyEncoded(Lokhttp3/Headers;)Z
    .locals 1

    const-string v0, "Content-Encoding"

    .line 255
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "identity"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    .line 134
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 138
    iget-object v2, v0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 140
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    .line 141
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_0

    .line 142
    invoke-interface {v1, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    return-object v1

    .line 145
    :cond_0
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 146
    sget-object v7, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 148
    :goto_2
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 151
    :goto_3
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 152
    invoke-interface {v8}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v8

    goto :goto_4

    :cond_5
    sget-object v8, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 153
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-byte body)"

    const-string v11, " ("

    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    .line 155
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 157
    :cond_6
    iget-object v12, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v12, v8}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    const-string v8, ": "

    const-wide/16 v12, -0x1

    const-string v14, ""

    if-eqz v2, :cond_f

    if-eqz v5, :cond_8

    .line 163
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 164
    iget-object v15, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Type: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 166
    :cond_7
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v16

    cmp-long v6, v16, v12

    if-eqz v6, :cond_8

    .line 167
    iget-object v6, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Length: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 171
    :cond_8
    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    .line 172
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v10, :cond_a

    .line 173
    invoke-virtual {v6, v12}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "Content-Type"

    .line 175
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "Content-Length"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 176
    iget-object v15, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move/from16 v18, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v15, v10}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move/from16 v18, v10

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v18

    goto :goto_5

    :cond_a
    const-string v6, "--> END "

    if-eqz v4, :cond_e

    if-nez v5, :cond_b

    goto :goto_7

    .line 182
    :cond_b
    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-direct {v0, v5}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 183
    iget-object v5, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (encoded body omitted)"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 185
    :cond_c
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 186
    invoke-virtual {v7, v5}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 188
    sget-object v10, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 189
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 191
    invoke-virtual {v12, v10}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v10

    .line 194
    :cond_d
    iget-object v12, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v12, v14}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 195
    iget-object v12, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-virtual {v5, v10}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 197
    iget-object v5, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-interface {v5, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 181
    :cond_e
    :goto_7
    iget-object v5, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 202
    :cond_f
    :goto_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 203
    invoke-interface {v1, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 204
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v5

    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 206
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    const-wide/16 v16, -0x1

    cmp-long v7, v12, v16

    if-eqz v7, :cond_10

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-byte"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_10
    const-string v7, "unknown-length"

    .line 209
    :goto_9
    iget-object v10, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    const-string v9, "<-- "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v17, v12

    invoke-virtual {v1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " body"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_11
    move-object v5, v14

    :goto_a
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-interface {v10, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_18

    .line 214
    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_12

    .line 216
    iget-object v7, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_12
    const-string v2, "<-- END HTTP"

    if-eqz v4, :cond_17

    .line 219
    invoke-static {v1}, Lokhttp3/internal/http/HttpEngine;->hasBody(Lokhttp3/Response;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_d

    .line 221
    :cond_13
    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-direct {v0, v4}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 222
    iget-object v2, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_e

    .line 224
    :cond_14
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    .line 225
    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->request(J)Z

    .line 226
    invoke-interface {v4}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v4

    .line 228
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 229
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 232
    :try_start_0
    invoke-virtual {v3, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v5
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 234
    :catch_0
    iget-object v3, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v3, v14}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 235
    iget-object v3, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v4, "Couldn\'t decode the response body; charset is likely malformed."

    invoke-interface {v3, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 236
    iget-object v3, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    return-object v1

    :cond_15
    :goto_c
    const-wide/16 v2, 0x0

    cmp-long v6, v17, v2

    if-eqz v6, :cond_16

    .line 243
    iget-object v2, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v2, v14}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 244
    iget-object v2, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-virtual {v4}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 247
    :cond_16
    iget-object v2, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_e

    .line 220
    :cond_17
    :goto_d
    iget-object v3, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    :cond_18
    :goto_e
    return-object v1
.end method

.method public setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    if-eqz p1, :cond_0

    .line 129
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object p0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "level == null. Use Level.NONE instead."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
