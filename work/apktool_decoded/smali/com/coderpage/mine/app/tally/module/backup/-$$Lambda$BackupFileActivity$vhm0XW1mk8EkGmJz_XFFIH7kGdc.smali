.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileActivity$vhm0XW1mk8EkGmJz_XFFIH7kGdc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileActivity$vhm0XW1mk8EkGmJz_XFFIH7kGdc;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileActivity$vhm0XW1mk8EkGmJz_XFFIH7kGdc;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->lambda$subscribeUi$0$BackupFileActivity(Ljava/lang/String;)V

    return-void
.end method
