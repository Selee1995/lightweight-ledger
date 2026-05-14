.class public Lcom/coderpage/lib/update/DownloadProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "DownloadProgressResponseBody.java"


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private final progressListener:Lcom/coderpage/lib/update/DownloadProgressListener;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/coderpage/lib/update/DownloadProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "responseBody",
            "progressListener"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 27
    iput-object p2, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->progressListener:Lcom/coderpage/lib/update/DownloadProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/lib/update/DownloadProgressResponseBody;)Lokhttp3/ResponseBody;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/lib/update/DownloadProgressResponseBody;)Lcom/coderpage/lib/update/DownloadProgressListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->progressListener:Lcom/coderpage/lib/update/DownloadProgressListener;

    return-object p0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/coderpage/lib/update/DownloadProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/lib/update/DownloadProgressResponseBody$1;-><init>(Lcom/coderpage/lib/update/DownloadProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
