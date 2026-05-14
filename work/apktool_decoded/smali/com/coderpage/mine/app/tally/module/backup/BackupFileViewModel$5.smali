.class synthetic Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$5;
.super Ljava/lang/Object;
.source "BackupFileViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$coderpage$mine$app$tally$module$backup$Backup$BackupProgress:[I

.field static final synthetic $SwitchMap$com$coderpage$mine$app$tally$module$backup$Backup$RestoreProgress:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 280
    invoke-static {}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->values()[Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$5;->$SwitchMap$com$coderpage$mine$app$tally$module$backup$Backup$RestoreProgress:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->READ_FILE:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$5;->$SwitchMap$com$coderpage$mine$app$tally$module$backup$Backup$RestoreProgress:[I

    sget-object v3, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->CHECK_FILE_FORMAT:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$5;->$SwitchMap$com$coderpage$mine$app$tally$module$backup$Backup$RestoreProgress:[I

    sget-object v3, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->RESTORE_TO_DB:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 238
    :catch_2
    invoke-static {}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->values()[Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$5;->$SwitchMap$com$coderpage$mine$app$tally$module$backup$Backup$BackupProgress:[I

    :try_start_3
    sget-object v3, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->READ_DATA:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$5;->$SwitchMap$com$coderpage$mine$app$tally$module$backup$Backup$BackupProgress:[I

    sget-object v2, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->WRITE_FILE:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
