.class public Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;
.super Ljava/lang/Object;
.source "BackupModelCategory.java"


# instance fields
.field private accountId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "accountId"
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "icon"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field private syncStatus:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "syncStatus"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field

.field private uniqueName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uniqueName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->accountId:J

    return-wide v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncStatus()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->syncStatus:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->type:I

    return v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->uniqueName:Ljava/lang/String;

    return-object v0
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

    .line 78
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->accountId:J

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->icon:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->name:Ljava/lang/String;

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

    .line 86
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->syncStatus:I

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

    .line 46
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->type:I

    return-void
.end method

.method public setUniqueName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueName"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelCategory;->uniqueName:Ljava/lang/String;

    return-void
.end method
