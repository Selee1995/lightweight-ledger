.class Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;
.super Lcom/coderpage/mine/app/tally/common/server/BaseResponse;
.source "LatestVersionFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatestVersionResponse"
.end annotation


# instance fields
.field private latestVersion:Lcom/coderpage/mine/app/tally/update/LatestVersion;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "data"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/common/server/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatestVersion()Lcom/coderpage/mine/app/tally/update/LatestVersion;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;->latestVersion:Lcom/coderpage/mine/app/tally/update/LatestVersion;

    return-object v0
.end method

.method public setLatestVersion(Lcom/coderpage/mine/app/tally/update/LatestVersion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latestVersion"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;->latestVersion:Lcom/coderpage/mine/app/tally/update/LatestVersion;

    return-void
.end method
