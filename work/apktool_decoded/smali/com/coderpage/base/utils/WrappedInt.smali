.class public Lcom/coderpage/base/utils/WrappedInt;
.super Ljava/lang/Object;
.source "WrappedInt.java"


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/coderpage/base/utils/WrappedInt;->i:I

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/coderpage/base/utils/WrappedInt;->i:I

    return v0
.end method

.method public set(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 21
    iput p1, p0, Lcom/coderpage/base/utils/WrappedInt;->i:I

    return-void
.end method
