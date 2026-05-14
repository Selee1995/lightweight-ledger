.class public interface abstract Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;
.super Ljava/lang/Object;
.source "Backup.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/Backup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RestoreProgressListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/Callback<",
        "Lcom/coderpage/mine/app/tally/module/backup/BackupModel;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restoreProgress"
        }
    .end annotation
.end method
