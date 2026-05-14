.class public Lcom/coderpage/mine/app/tally/persistence/model/Count;
.super Ljava/lang/Object;
.source "Count.java"


# instance fields
.field public count:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Count;->count:J

    return-wide v0
.end method

.method public setCount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 21
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Count;->count:J

    return-void
.end method
