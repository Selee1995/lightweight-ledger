.class Lcom/coderpage/lib/update/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/coderpage/lib/update/FileDownloader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method download(Ljava/lang/String;Ljava/lang/String;Lcom/coderpage/lib/update/DownloadProgressListener;)Lcom/coderpage/lib/update/Result;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "downloadUrl",
            "fileName",
            "progressListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/coderpage/lib/update/DownloadProgressListener;",
            ")",
            "Lcom/coderpage/lib/update/Result<",
            "Ljava/io/File;",
            "Lcom/coderpage/lib/update/Error;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 26
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 29
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/coderpage/lib/update/FileDownloader$1;

    invoke-direct {v1, p0, p3}, Lcom/coderpage/lib/update/FileDownloader$1;-><init>(Lcom/coderpage/lib/update/FileDownloader;Lcom/coderpage/lib/update/DownloadProgressListener;)V

    .line 30
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 40
    invoke-virtual {p3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p3, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 46
    new-instance p3, Lcom/coderpage/lib/update/DownloadCache;

    iget-object v2, p0, Lcom/coderpage/lib/update/FileDownloader;->mContext:Landroid/content/Context;

    invoke-direct {p3, v2}, Lcom/coderpage/lib/update/DownloadCache;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/coderpage/lib/update/DownloadCache;->saveFile(Ljava/lang/String;Lokio/BufferedSource;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    new-instance p2, Lcom/coderpage/lib/update/Result;

    invoke-direct {p2, p1, v1}, Lcom/coderpage/lib/update/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance p2, Lcom/coderpage/lib/update/Result;

    new-instance p1, Lcom/coderpage/lib/update/Error;

    const-string p3, "save file failed"

    invoke-direct {p1, v0, p3}, Lcom/coderpage/lib/update/Error;-><init>(ILjava/lang/String;)V

    invoke-direct {p2, v1, p1}, Lcom/coderpage/lib/update/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance p2, Lcom/coderpage/lib/update/Result;

    new-instance p3, Lcom/coderpage/lib/update/Error;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v2, p1}, Lcom/coderpage/lib/update/Error;-><init>(ILjava/lang/String;)V

    invoke-direct {p2, v1, p3}, Lcom/coderpage/lib/update/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    new-instance p2, Lcom/coderpage/lib/update/Result;

    new-instance p3, Lcom/coderpage/lib/update/Error;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/coderpage/lib/update/Error;-><init>(ILjava/lang/String;)V

    invoke-direct {p2, v1, p3}, Lcom/coderpage/lib/update/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p2
.end method
