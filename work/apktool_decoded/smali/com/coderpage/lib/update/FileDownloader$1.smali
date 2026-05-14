.class Lcom/coderpage/lib/update/FileDownloader$1;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/lib/update/FileDownloader;->download(Ljava/lang/String;Ljava/lang/String;Lcom/coderpage/lib/update/DownloadProgressListener;)Lcom/coderpage/lib/update/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/lib/update/FileDownloader;

.field final synthetic val$progressListener:Lcom/coderpage/lib/update/DownloadProgressListener;


# direct methods
.method constructor <init>(Lcom/coderpage/lib/update/FileDownloader;Lcom/coderpage/lib/update/DownloadProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$progressListener"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/coderpage/lib/update/FileDownloader$1;->this$0:Lcom/coderpage/lib/update/FileDownloader;

    iput-object p2, p0, Lcom/coderpage/lib/update/FileDownloader$1;->val$progressListener:Lcom/coderpage/lib/update/DownloadProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/coderpage/lib/update/DownloadProgressResponseBody;

    .line 36
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object v2, p0, Lcom/coderpage/lib/update/FileDownloader$1;->val$progressListener:Lcom/coderpage/lib/update/DownloadProgressListener;

    invoke-direct {v1, p1, v2}, Lcom/coderpage/lib/update/DownloadProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/coderpage/lib/update/DownloadProgressListener;)V

    .line 35
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
