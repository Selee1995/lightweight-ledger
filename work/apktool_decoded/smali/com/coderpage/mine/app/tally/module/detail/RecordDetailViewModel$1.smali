.class Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$1;
.super Ljava/lang/Object;
.source "RecordDetailViewModel.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/Callback<",
        "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)V
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
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iError"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-interface {p1}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->access$200(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic failure(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "iError"
        }
    .end annotation

    .line 97
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$1;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public success(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expense"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->access$002(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;-><init>()V

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->setType(I)V

    .line 103
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->setRecordId(J)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00a5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->setAmount(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->setCategoryIcon(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->setCategoryName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->setDesc(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->setTime(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "expense"
        }
    .end annotation

    .line 97
    check-cast p1, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$1;->success(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    return-void
.end method
