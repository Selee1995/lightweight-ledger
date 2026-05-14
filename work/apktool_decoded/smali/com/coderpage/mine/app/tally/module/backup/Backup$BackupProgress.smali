.class public final enum Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;
.super Ljava/lang/Enum;
.source "Backup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/Backup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackupProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

.field public static final enum READ_DATA:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

.field public static final enum WRITE_FILE:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    const-string v1, "READ_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->READ_DATA:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    .line 72
    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    const-string v3, "WRITE_FILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->WRITE_FILE:Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 68
    sput-object v3, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->$VALUES:[Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 68
    const-class v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    return-object p0
.end method

.method public static values()[Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;
    .locals 1

    .line 68
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->$VALUES:[Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    invoke-virtual {v0}, [Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;

    return-object v0
.end method
