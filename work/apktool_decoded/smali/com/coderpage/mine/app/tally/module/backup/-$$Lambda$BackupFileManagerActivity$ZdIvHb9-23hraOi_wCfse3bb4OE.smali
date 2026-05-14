.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerActivity$ZdIvHb9-23hraOi_wCfse3bb4OE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerActivity$ZdIvHb9-23hraOi_wCfse3bb4OE;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerActivity$ZdIvHb9-23hraOi_wCfse3bb4OE;->f$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->lambda$subscribeUi$1$BackupFileManagerActivity(Ljava/util/List;)V

    return-void
.end method
