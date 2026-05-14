.class public Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;
.super Ljava/lang/Object;
.source "BackupFileItem.java"


# instance fields
.field private createTime:J

.field private file:Lcom/coderpage/mine/persistence/document/DocumentFile;

.field private name:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>(Lcom/coderpage/mine/persistence/document/DocumentFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->file:Lcom/coderpage/mine/persistence/document/DocumentFile;

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFile;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->size:J

    .line 25
    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFile;->getCreateDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->createTime:J

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->createTime:J

    return-wide v0
.end method

.method public getFile()Lcom/coderpage/mine/persistence/document/DocumentFile;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->file:Lcom/coderpage/mine/persistence/document/DocumentFile;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->size:J

    return-wide v0
.end method

.method public setCreateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createTime"
        }
    .end annotation

    .line 42
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->createTime:J

    return-void
.end method

.method public setFile(Lcom/coderpage/mine/persistence/document/DocumentFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->file:Lcom/coderpage/mine/persistence/document/DocumentFile;

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

    .line 34
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 50
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->size:J

    return-void
.end method
