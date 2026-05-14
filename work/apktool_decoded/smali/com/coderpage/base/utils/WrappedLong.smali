.class public Lcom/coderpage/base/utils/WrappedLong;
.super Ljava/lang/Object;
.source "WrappedLong.java"


# instance fields
.field private i:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
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

    int-to-long v0, p1

    .line 13
    iput-wide v0, p0, Lcom/coderpage/base/utils/WrappedLong;->i:J

    return-void
.end method


# virtual methods
.method public get()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/coderpage/base/utils/WrappedLong;->i:J

    return-wide v0
.end method

.method public set(J)V
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
    iput-wide p1, p0, Lcom/coderpage/base/utils/WrappedLong;->i:J

    return-void
.end method
