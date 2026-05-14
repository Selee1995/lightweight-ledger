.class public Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;
.super Ljava/lang/Object;
.source "BackupFileSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewModel"
.end annotation


# instance fields
.field private mFileTimeDateFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance p1, Ljava/text/SimpleDateFormat;

    const v0, 0x7f0e0032

    .line 152
    invoke-static {p2, v0}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;->mFileTimeDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public formatBackupFileSize(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getFile()Lcom/coderpage/mine/persistence/document/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getSize()J

    move-result-wide v0

    long-to-double v2, v0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 176
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    div-double v4, v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v4, v6

    if-lez p1, :cond_1

    .line 179
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.00M"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmpl-double p1, v2, v6

    if-lez p1, :cond_2

    .line 182
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.00KB"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "0 KB"

    return-object p1
.end method

.method public declared-synchronized formatBackupTime(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getFile()Lcom/coderpage/mine/persistence/document/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;->mFileTimeDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onItemClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->access$100(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getFile()Lcom/coderpage/mine/persistence/document/DocumentFile;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;->onFileSelect(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;Lcom/coderpage/mine/persistence/document/DocumentFile;)V

    return-void
.end method
