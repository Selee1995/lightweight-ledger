.class public Lcom/coderpage/mine/app/tally/common/server/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "message"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/server/BaseResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/coderpage/mine/app/tally/common/server/BaseResponse;->status:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/server/BaseResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 24
    iput p1, p0, Lcom/coderpage/mine/app/tally/common/server/BaseResponse;->status:I

    return-void
.end method
