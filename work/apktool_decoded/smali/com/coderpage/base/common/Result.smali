.class public Lcom/coderpage/base/common/Result;
.super Lcom/coderpage/base/common/ResultAbs;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TData:",
        "Ljava/lang/Object;",
        "TError:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/coderpage/base/common/ResultAbs<",
        "TTData;TTError;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/coderpage/base/common/ResultAbs;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTData;TTError;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/coderpage/base/common/ResultAbs;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/coderpage/base/common/Result;->data:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/coderpage/base/common/Result;->error:Ljava/lang/Object;

    return-void
.end method
