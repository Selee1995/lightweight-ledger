.class public Lcom/coderpage/mine/persistence/document/DocumentFileCreate;
.super Ljava/lang/Object;
.source "DocumentFileCreate.java"


# instance fields
.field private mime:Lcom/coderpage/mine/common/Mime;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/coderpage/mine/common/Mime;->ALL:Lcom/coderpage/mine/common/Mime;

    iput-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->mime:Lcom/coderpage/mine/common/Mime;

    return-void
.end method


# virtual methods
.method public getMime()Lcom/coderpage/mine/common/Mime;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->mime:Lcom/coderpage/mine/common/Mime;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setMime(Lcom/coderpage/mine/common/Mime;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mime"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->mime:Lcom/coderpage/mine/common/Mime;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->path:Ljava/lang/String;

    return-object p0
.end method
