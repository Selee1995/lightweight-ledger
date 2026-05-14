.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$q5CVipcxxHmpqjCzofY3I-e4ga0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/module/backup/BackupModel;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$q5CVipcxxHmpqjCzofY3I-e4ga0;->f$0:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$q5CVipcxxHmpqjCzofY3I-e4ga0;->f$1:Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$q5CVipcxxHmpqjCzofY3I-e4ga0;->f$0:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$q5CVipcxxHmpqjCzofY3I-e4ga0;->f$1:Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->lambda$restoreDataFromBackupData$2(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    return-void
.end method
