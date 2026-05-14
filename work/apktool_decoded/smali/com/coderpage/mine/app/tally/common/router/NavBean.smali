.class public Lcom/coderpage/mine/app/tally/common/router/NavBean;
.super Ljava/lang/Object;
.source "NavBean.java"


# instance fields
.field private params:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/router/NavBean;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "params"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/router/NavBean;->path:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/common/router/NavBean;->params:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getParams()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/router/NavBean;->params:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/router/NavBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/router/NavBean;->params:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/router/NavBean;->path:Ljava/lang/String;

    return-void
.end method
