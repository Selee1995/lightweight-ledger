.class public Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;
.super Ljava/lang/Object;
.source "BackupModelMetadata.java"


# instance fields
.field private backupDate:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "backup_date"
    .end annotation
.end field

.field private clientVersion:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "client_version"
    .end annotation
.end field

.field private clientVersionCode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "client_version_code"
    .end annotation
.end field

.field private deviceName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "device_name"
    .end annotation
.end field

.field private expenseNumber:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "expense_number"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupDate()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->backupDate:J

    return-wide v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersionCode()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->clientVersionCode:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpenseNumber()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->expenseNumber:J

    return-wide v0
.end method

.method public setBackupDate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupDate"
        }
    .end annotation

    .line 66
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->backupDate:J

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientVersion"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->clientVersion:Ljava/lang/String;

    return-void
.end method

.method public setClientVersionCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientVersionCode"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->clientVersionCode:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setExpenseNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expenseNumber"
        }
    .end annotation

    .line 74
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->expenseNumber:J

    return-void
.end method
