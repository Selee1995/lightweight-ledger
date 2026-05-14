.class Lcom/coderpage/mine/app/tally/module/backup/Backup$1;
.super Ljava/lang/Object;
.source "Backup.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/backup/Backup;->backupToJsonFileSync(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;)Lcom/coderpage/base/common/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic failure(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    .line 130
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$1;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public success(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "uri"
        }
    .end annotation

    .line 130
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$1;->success(Landroid/net/Uri;)V

    return-void
.end method
