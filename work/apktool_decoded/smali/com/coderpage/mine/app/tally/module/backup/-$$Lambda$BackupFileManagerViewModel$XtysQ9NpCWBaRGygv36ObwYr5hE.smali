.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$XtysQ9NpCWBaRGygv36ObwYr5hE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Comparator;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$XtysQ9NpCWBaRGygv36ObwYr5hE;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$XtysQ9NpCWBaRGygv36ObwYr5hE;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->lambda$deleteBackupFile$1(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Z

    move-result p1

    return p1
.end method
