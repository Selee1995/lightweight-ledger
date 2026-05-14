.class public Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;
.super Ljava/lang/Object;
.source "RecordGroup.java"


# instance fields
.field private amount:F

.field private count:J

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->amount:F

    return v0
.end method

.method public getCount()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->count:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->time:J

    return-wide v0
.end method

.method public setAmount(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 45
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->amount:F

    return-void
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

    .line 29
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->count:J

    return-void
.end method

.method public setTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 37
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->time:J

    return-void
.end method
