.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$4hSTb1MO8V-5X_pb0OlsoLRbuik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/module/backup/BackupModel;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$4hSTb1MO8V-5X_pb0OlsoLRbuik;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$4hSTb1MO8V-5X_pb0OlsoLRbuik;->f$1:Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$4hSTb1MO8V-5X_pb0OlsoLRbuik;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$4hSTb1MO8V-5X_pb0OlsoLRbuik;->f$1:Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->lambda$showRestoreDataConfirmDialog$4$BackupFileViewModel(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Landroid/content/DialogInterface;I)V

    return-void
.end method
