.class public Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;
.super Ljava/lang/Object;
.source "RecordEntity.java"


# static fields
.field public static final TYPE_EXPENSE:I = 0x0

.field public static final TYPE_INCOME:I = 0x1


# instance fields
.field private accountId:J

.field private amount:D

.field private categoryUniqueName:Ljava/lang/String;

.field private delete:I

.field private desc:Ljava/lang/String;

.field private id:J

.field private syncId:Ljava/lang/String;

.field private syncStatus:I

.field private time:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->desc:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->syncId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->accountId:J

    return-wide v0
.end method

.method public getAmount()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->amount:D

    return-wide v0
.end method

.method public getCategoryUniqueName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->categoryUniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public getDelete()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->delete:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->id:J

    return-wide v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->syncId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncStatus()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->syncStatus:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->type:I

    return v0
.end method

.method public setAccountId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountId"
        }
    .end annotation

    .line 77
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->accountId:J

    return-void
.end method

.method public setAmount(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 93
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->amount:D

    return-void
.end method

.method public setCategoryUniqueName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryUniqueName"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->categoryUniqueName:Ljava/lang/String;

    return-void
.end method

.method public setDelete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delete"
        }
    .end annotation

    .line 135
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->delete:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->desc:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 69
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->id:J

    return-void
.end method

.method public setSyncId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncId"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->syncId:Ljava/lang/String;

    return-void
.end method

.method public setSyncStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncStatus"
        }
    .end annotation

    .line 127
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->syncStatus:I

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

    .line 85
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->time:J

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 143
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->type:I

    return-void
.end method
