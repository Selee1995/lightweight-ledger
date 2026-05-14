.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$RHHlIcCNrjk2gs6IKKbfnYjWO1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$RHHlIcCNrjk2gs6IKKbfnYjWO1s;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$RHHlIcCNrjk2gs6IKKbfnYjWO1s;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$RHHlIcCNrjk2gs6IKKbfnYjWO1s;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$RHHlIcCNrjk2gs6IKKbfnYjWO1s;->f$1:Landroid/app/Activity;

    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    invoke-virtual {v0, v1, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->lambda$onBackupFileSelectedFromFileSystem$2$BackupFileViewModel(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    return-void
.end method
