.class public Lcom/coderpage/mine/app/tally/update/LatestVersion;
.super Ljava/lang/Object;
.source "LatestVersion.java"

# interfaces
.implements Lcom/coderpage/lib/update/ApkModel;


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "appName"
    .end annotation
.end field

.field private changeLog:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "changeLog"
    .end annotation
.end field

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "downloadUrl"
    .end annotation
.end field

.field private fileSize:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "fileSize"
    .end annotation
.end field

.field private isRelease:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isRelease"
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "packageName"
    .end annotation
.end field

.field private updateDate:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "updateDate"
    .end annotation
.end field

.field private uploadAvatar:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uploadAvatar"
    .end annotation
.end field

.field private uploader:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uploader"
    .end annotation
.end field

.field private versionCode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "versionCode"
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "versionName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkSizeBytes()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->fileSize:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildCode()J
    .locals 2

    .line 125
    iget v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->versionCode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChangeLog()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->changeLog:Ljava/lang/String;

    return-object v0
.end method

.method public getChangelog()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->changeLog:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->fileSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->updateDate:J

    return-wide v0
.end method

.method public getUploadAvatar()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->uploadAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUploader()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->uploader:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isRelease()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->isRelease:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appName"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->appName:Ljava/lang/String;

    return-void
.end method

.method public setChangeLog(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changeLog"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->changeLog:Ljava/lang/String;

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

    .line 80
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSize"
        }
    .end annotation

    .line 88
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->fileSize:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setRelease(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "release"
        }
    .end annotation

    .line 96
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->isRelease:Z

    return-void
.end method

.method public setUpdateDate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateDate"
        }
    .end annotation

    .line 112
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->updateDate:J

    return-void
.end method

.method public setUploadAvatar(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadAvatar"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->uploadAvatar:Ljava/lang/String;

    return-void
.end method

.method public setUploader(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploader"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->uploader:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionCode"
        }
    .end annotation

    .line 68
    iput p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionName"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersion;->versionName:Ljava/lang/String;

    return-void
.end method
