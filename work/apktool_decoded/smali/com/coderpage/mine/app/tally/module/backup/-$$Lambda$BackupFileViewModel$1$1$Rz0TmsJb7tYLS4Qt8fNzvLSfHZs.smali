.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$1$1$Rz0TmsJb7tYLS4Qt8fNzvLSfHZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$1$1$Rz0TmsJb7tYLS4Qt8fNzvLSfHZs;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$1$1$Rz0TmsJb7tYLS4Qt8fNzvLSfHZs;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$1$1$Rz0TmsJb7tYLS4Qt8fNzvLSfHZs;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$1$1$Rz0TmsJb7tYLS4Qt8fNzvLSfHZs;->f$1:Landroid/app/Activity;

    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    invoke-virtual {v0, v1, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;->lambda$onFileSelect$0$BackupFileViewModel$1$1(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    return-void
.end method
