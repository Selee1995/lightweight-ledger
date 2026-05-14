.class Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$2;
.super Ljava/lang/Object;
.source "AutoBackupWorker.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->deleteOldAutoBackupFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/Callback<",
        "Ljava/util/List<",
        "Lcom/coderpage/mine/persistence/document/DocumentFile;",
        ">;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$2;->this$0:Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$success$0(JLcom/coderpage/mine/persistence/document/DocumentFile;)Z
    .locals 4

    .line 102
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/document/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/document/DocumentFile;->getCreateDate()J

    move-result-wide v1

    const/4 p2, 0x1

    cmp-long v3, v1, p0

    if-lez v3, :cond_0

    return p2

    :cond_0
    if-eqz v0, :cond_2

    const-string p0, ".auto"

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2
.end method

.method static synthetic lambda$success$1(IILcom/coderpage/mine/persistence/document/DocumentFile;)V
    .locals 0

    .line 111
    :try_start_0
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/document/DocumentFile;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    .line 97
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$2;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "documentFiles"
        }
    .end annotation

    .line 97
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$2;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "documentFiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    sub-long/2addr v0, v2

    .line 101
    new-instance v2, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$55bHz0G1Q91whdXPgmPp_rjIo14;

    invoke-direct {v2, v0, v1}, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$55bHz0G1Q91whdXPgmPp_rjIo14;-><init>(J)V

    invoke-static {p1, v2}, Lcom/coderpage/base/utils/ArrayUtils;->remove(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)I

    .line 109
    sget-object v0, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$Ayk4C_yUjvm7ChfwXWokbgcU3-g;->INSTANCE:Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$Ayk4C_yUjvm7ChfwXWokbgcU3-g;

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    return-void
.end method
