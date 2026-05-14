.class public abstract Lcom/coderpage/base/common/ResultAbs;
.super Ljava/lang/Object;
.source "ResultAbs.java"

# interfaces
.implements Lcom/coderpage/base/common/IResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TData:",
        "Ljava/lang/Object;",
        "TError:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/IResult<",
        "TTData;TTError;>;"
    }
.end annotation


# instance fields
.field protected data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTData;"
        }
    .end annotation
.end field

.field protected error:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTError;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public data()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTData;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/coderpage/base/common/ResultAbs;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public error()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTError;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/coderpage/base/common/ResultAbs;->error:Ljava/lang/Object;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/coderpage/base/common/ResultAbs;->error()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTData;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/coderpage/base/common/ResultAbs;->data:Ljava/lang/Object;

    return-void
.end method

.method public setError(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTError;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/coderpage/base/common/ResultAbs;->error:Ljava/lang/Object;

    return-void
.end method
