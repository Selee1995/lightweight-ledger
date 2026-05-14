.class public Lcom/coderpage/lib/update/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TData:",
        "Ljava/lang/Object;",
        "TError:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTData;"
        }
    .end annotation
.end field

.field private mErr:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTError;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/coderpage/lib/update/Result;->mData:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/coderpage/lib/update/Result;->mErr:Ljava/lang/Object;

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

    .line 22
    iget-object v0, p0, Lcom/coderpage/lib/update/Result;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public error()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTError;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/coderpage/lib/update/Result;->mErr:Ljava/lang/Object;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/coderpage/lib/update/Result;->error()Ljava/lang/Object;

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

    .line 26
    iput-object p1, p0, Lcom/coderpage/lib/update/Result;->mData:Ljava/lang/Object;

    return-void
.end method

.method public setErr(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "err"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTError;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/coderpage/lib/update/Result;->mErr:Ljava/lang/Object;

    return-void
.end method
