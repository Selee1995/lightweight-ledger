.class public Lcom/coderpage/lib/update/ApkModelImpl;
.super Ljava/lang/Object;
.source "ApkModelImpl.java"

# interfaces
.implements Lcom/coderpage/lib/update/ApkModel;


# instance fields
.field private apkSizeBytes:J

.field private buildCode:J

.field private changelog:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkSizeBytes()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/coderpage/lib/update/ApkModelImpl;->apkSizeBytes:J

    return-wide v0
.end method

.method public getBuildCode()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/coderpage/lib/update/ApkModelImpl;->buildCode:J

    return-wide v0
.end method

.method public getChangelog()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/coderpage/lib/update/ApkModelImpl;->changelog:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/coderpage/lib/update/ApkModelImpl;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/coderpage/lib/update/ApkModelImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/coderpage/lib/update/ApkModelImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApkSizeBytes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkSizeBytes"
        }
    .end annotation

    .line 84
    iput-wide p1, p0, Lcom/coderpage/lib/update/ApkModelImpl;->apkSizeBytes:J

    return-void
.end method

.method public setBuildCode(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buildCode"
        }
    .end annotation

    .line 39
    iput-wide p1, p0, Lcom/coderpage/lib/update/ApkModelImpl;->buildCode:J

    return-void
.end method

.method public setChangelog(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changelog"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/coderpage/lib/update/ApkModelImpl;->changelog:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadUrl"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/coderpage/lib/update/ApkModelImpl;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/coderpage/lib/update/ApkModelImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/coderpage/lib/update/ApkModelImpl;->version:Ljava/lang/String;

    return-void
.end method
