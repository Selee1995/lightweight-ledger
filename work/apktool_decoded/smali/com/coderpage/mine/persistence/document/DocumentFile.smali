.class public Lcom/coderpage/mine/persistence/document/DocumentFile;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;
    }
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    .line 33
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 99
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/MineApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    iget-object v2, v2, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->uri:Landroid/net/Uri;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :catch_0
    :cond_2
    return v1
.end method

.method public getCreateDate()J
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    if-eqz v0, :cond_0

    .line 48
    iget-wide v0, v0, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->date:J

    return-wide v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, v0, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->name:Ljava/lang/String;

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getShareUri()Landroid/net/Uri;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v0

    iget-object v1, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/common/share/ShareProxy;->fileUriForShare(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, v0, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->uri:Landroid/net/Uri;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    if-eqz v0, :cond_0

    .line 38
    iget-wide v0, v0, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->size:J

    return-wide v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public read()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/MineApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coderpage/mine/persistence/document/DocumentFile;->uriFile:Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    iget-object v1, v1, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
