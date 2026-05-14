.class public Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;
.super Ljava/lang/Object;
.source "BackupModelRecord.java"


# instance fields
.field private accountId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "6"
    .end annotation
.end field

.field private amount:D
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "1"
    .end annotation
.end field

.field private category:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "3"
    .end annotation
.end field

.field private categoryUniqueName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "7"
    .end annotation
.end field

.field private desc:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "2"
    .end annotation
.end field

.field private syncId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "5"
    .end annotation
.end field

.field private syncStatus:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "8"
    .end annotation
.end field

.field private time:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "4"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "9"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->type:I

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->accountId:J

    return-wide v0
.end method

.method public getAmount()D
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->amount:D

    return-wide v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryUniqueName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->categoryUniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->syncId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncStatus()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->syncStatus:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->type:I

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
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->accountId:J

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

    .line 52
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->amount:D

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->category:Ljava/lang/String;

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

    .line 100
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->categoryUniqueName:Ljava/lang/String;

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

    .line 60
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->desc:Ljava/lang/String;

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

    .line 84
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->syncId:Ljava/lang/String;

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

    .line 108
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->syncStatus:I

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

    .line 76
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->time:J

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

    .line 116
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelRecord;->type:I

    return-void
.end method
