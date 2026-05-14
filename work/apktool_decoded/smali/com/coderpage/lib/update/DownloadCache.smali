.class public Lcom/coderpage/lib/update/DownloadCache;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# static fields
.field private static final DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "download"

.field private static final TAG:Ljava/lang/String; = "DownloadCache"


# instance fields
.field private downloadFolder:Ljava/io/File;

.field private downloadFolderPath:Ljava/lang/String;

.field private final downloadRootPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/coderpage/lib/update/DownloadCache;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadRootPath:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/coderpage/lib/update/DownloadCache;->initDownloadFolder()Z

    return-void
.end method

.method private createFileIfNotExists(Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    sget-object v1, Lcom/coderpage/lib/update/DownloadCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create file error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private declared-synchronized getCacheFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadRootPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/coderpage/lib/update/DownloadCache;->TAG:Ljava/lang/String;

    const-string v1, "create cache folder failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initDownloadFolder()Z
    .locals 3

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadFolder:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 54
    monitor-exit p0

    return v1

    .line 57
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coderpage/lib/update/DownloadCache;->getCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 59
    monitor-exit p0

    return v0

    .line 62
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "download"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadFolderPath:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadFolderPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadFolder:Ljava/io/File;

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 65
    monitor-exit p0

    return v1

    .line 67
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    sget-object v1, Lcom/coderpage/lib/update/DownloadCache;->TAG:Ljava/lang/String;

    const-string v2, "create download cache folder failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public deleteAllDownloadFile()Z
    .locals 6

    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 123
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 124
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v3

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getDownloadFolderPath()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public saveFile(Ljava/lang/String;Lokio/BufferedSource;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileName",
            "source"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/coderpage/lib/update/DownloadCache;->downloadFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, v0}, Lcom/coderpage/lib/update/DownloadCache;->createFileIfNotExists(Ljava/io/File;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x1

    .line 87
    :try_start_0
    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    .line 88
    invoke-interface {v2, p2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 89
    invoke-interface {v2}, Lokio/BufferedSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 92
    sget-object v2, Lcom/coderpage/lib/update/DownloadCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save file error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method
