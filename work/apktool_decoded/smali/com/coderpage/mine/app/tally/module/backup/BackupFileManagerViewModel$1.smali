.class Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel$1;
.super Ljava/lang/Object;
.source "BackupFileManagerViewModel.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->lambda$refreshData$0(Landroid/app/Activity;)V
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
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$success$0(Ljava/util/List;IILcom/coderpage/mine/persistence/document/DocumentFile;)V
    .locals 0

    .line 106
    new-instance p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    invoke-direct {p1, p3}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;-><init>(Lcom/coderpage/mine/persistence/document/DocumentFile;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$success$1(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)I
    .locals 5

    .line 108
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    invoke-interface {p1}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;Ljava/lang/String;)V

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

    .line 102
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel$1;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fileList"
        }
    .end annotation

    .line 102
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel$1;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileList"
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

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$EGs6d15pWXvleS2ChW1MprLhe18;

    invoke-direct {v1, v0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$EGs6d15pWXvleS2ChW1MprLhe18;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 107
    sget-object p1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$VkcFFl9e2iz7fxqCVtglCLWE3mw;->INSTANCE:Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$VkcFFl9e2iz7fxqCVtglCLWE3mw;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
