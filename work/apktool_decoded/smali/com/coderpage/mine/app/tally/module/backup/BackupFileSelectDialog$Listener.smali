.class public interface abstract Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;
.super Ljava/lang/Object;
.source "BackupFileSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCancelClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation
.end method

.method public abstract onFileSelect(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;Lcom/coderpage/mine/persistence/document/DocumentFile;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "file"
        }
    .end annotation
.end method

.method public abstract onSelectFromLocalClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation
.end method
