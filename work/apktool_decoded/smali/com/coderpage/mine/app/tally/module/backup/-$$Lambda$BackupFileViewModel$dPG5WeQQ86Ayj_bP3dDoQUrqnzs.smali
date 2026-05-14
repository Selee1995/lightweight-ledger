.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$dPG5WeQQ86Ayj_bP3dDoQUrqnzs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/lib/permission/PermissionReq$Listener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$dPG5WeQQ86Ayj_bP3dDoQUrqnzs;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$dPG5WeQQ86Ayj_bP3dDoQUrqnzs;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$dPG5WeQQ86Ayj_bP3dDoQUrqnzs;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$dPG5WeQQ86Ayj_bP3dDoQUrqnzs;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$dPG5WeQQ86Ayj_bP3dDoQUrqnzs;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$dPG5WeQQ86Ayj_bP3dDoQUrqnzs;->f$2:Landroid/view/View;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->lambda$onAutoBackupClick$1$BackupFileViewModel(Ljava/lang/Runnable;Landroid/view/View;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
