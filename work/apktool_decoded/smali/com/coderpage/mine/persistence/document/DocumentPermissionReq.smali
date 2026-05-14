.class public Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;
.super Ljava/lang/Object;
.source "DocumentPermissionReq.java"


# instance fields
.field private forceRefuseTipMsg:Ljava/lang/String;

.field private tipMsg:Ljava/lang/String;

.field private tipTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForceRefuseTipMsg()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->forceRefuseTipMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTipMsg()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->tipMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTipTitle()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->tipTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setForceRefuseTipMsg(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceRefuseTipMsg"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->forceRefuseTipMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setTipMsg(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipMsg"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->tipMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setTipTitle(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipTitle"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->tipTitle:Ljava/lang/String;

    return-object p0
.end method
