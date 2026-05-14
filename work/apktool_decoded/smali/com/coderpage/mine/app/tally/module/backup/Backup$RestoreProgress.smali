.class public final enum Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;
.super Ljava/lang/Enum;
.source "Backup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/Backup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RestoreProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

.field public static final enum CHECK_FILE_FORMAT:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

.field public static final enum READ_FILE:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

.field public static final enum RESTORE_TO_DB:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 89
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    const-string v1, "READ_FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->READ_FILE:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    .line 91
    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    const-string v3, "CHECK_FILE_FORMAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->CHECK_FILE_FORMAT:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    .line 93
    new-instance v3, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    const-string v5, "RESTORE_TO_DB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->RESTORE_TO_DB:Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 87
    sput-object v5, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->$VALUES:[Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

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

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 87
    const-class v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    return-object p0
.end method

.method public static values()[Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;
    .locals 1

    .line 87
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->$VALUES:[Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    invoke-virtual {v0}, [Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;

    return-object v0
.end method
