.class final Lcom/tendcloud/tenddata/a$2;
.super Lcom/tendcloud/tenddata/a;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private isUrlUpdated:Z

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/tendcloud/tenddata/a;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/tendcloud/tenddata/a$2;->isUrlUpdated:Z

    return-void
.end method


# virtual methods
.method public getCert()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDataFolder()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/tendcloud/tenddata/a;->getDataFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileLimitType()I
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/tendcloud/tenddata/a;->getFileLimitType()I

    move-result v0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    const-string v0, "tdsdk.cpatrk.net"

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    const-string v0, "114.67.227.198"

    return-object v0
.end method

.method public getMessageFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "UNIFIED_SDK_JSON"

    return-object v0
.end method

.method public getRootFolder()Ljava/lang/String;
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/tendcloud/tenddata/a;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 121
    sget-object v0, Lcom/tendcloud/tenddata/aa;->k:Ljava/lang/String;

    .line 122
    iget-boolean v1, p0, Lcom/tendcloud/tenddata/a$2;->isUrlUpdated:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/a$2;->url:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/a$2;->isUrlUpdated:Z

    .line 128
    iput-object p1, p0, Lcom/tendcloud/tenddata/a$2;->url:Ljava/lang/String;

    return-void
.end method
