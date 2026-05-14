.class public interface abstract Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;
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
    name = "BackupProgressListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/Callback<",
        "Landroid/net/Uri;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupProgress"
        }
    .end annotation
.end method
