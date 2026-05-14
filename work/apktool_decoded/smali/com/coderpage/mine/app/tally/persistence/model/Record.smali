.class public Lcom/coderpage/mine/app/tally/persistence/model/Record;
.super Ljava/lang/Object;
.source "Record.java"


# static fields
.field public static final TYPE_EXPENSE:I = 0x0

.field public static final TYPE_INCOME:I = 0x1


# instance fields
.field private accountId:J

.field private amount:D

.field private categoryIcon:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private categoryUniqueName:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private id:J

.field private syncId:Ljava/lang/String;

.field private syncStatus:I

.field private time:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEntity()Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;
    .locals 3

    .line 66
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setId(J)V

    .line 68
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setAccountId(J)V

    .line 69
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setAmount(D)V

    .line 70
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setDesc(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getSyncId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setSyncId(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getSyncStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setSyncStatus(I)V

    .line 73
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setTime(J)V

    .line 74
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setType(I)V

    return-object v0
.end method

.method public getAccountId()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->accountId:J

    return-wide v0
.end method

.method public getAmount()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->amount:D

    return-wide v0
.end method

.method public getCategoryIcon()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->categoryIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryUniqueName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->categoryUniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->id:J

    return-wide v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->syncId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncStatus()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->syncStatus:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->type:I

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

    .line 92
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->accountId:J

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

    .line 132
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->amount:D

    return-void
.end method

.method public setCategoryIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryIcon"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->categoryIcon:Ljava/lang/String;

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryName"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->categoryName:Ljava/lang/String;

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

    .line 108
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->categoryUniqueName:Ljava/lang/String;

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

    .line 140
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->desc:Ljava/lang/String;

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

    .line 84
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->id:J

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

    .line 148
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->syncId:Ljava/lang/String;

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

    .line 156
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->syncStatus:I

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

    .line 100
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->time:J

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

    .line 164
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/Record;->type:I

    return-void
.end method
