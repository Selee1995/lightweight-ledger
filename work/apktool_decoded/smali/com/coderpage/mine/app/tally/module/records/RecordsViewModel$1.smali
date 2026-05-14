.class Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$1;
.super Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;
.source "RecordsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate<",
        "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "pageSize"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onRequestFinish(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;Ljava/util/List;Lcom/coderpage/base/common/IError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "dataList",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestFinish(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;Ljava/util/List;Lcom/coderpage/base/common/IError;)V

    if-eqz p3, :cond_0

    .line 87
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-interface {p3}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->access$200(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->access$400(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p3, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-static {p3, p2}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public requestData(IILcom/coderpage/base/common/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "page",
            "pageSize",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;)Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;)Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;->queryRecords(IILcom/coderpage/mine/app/tally/module/records/RecordQuery;Lcom/coderpage/base/common/Callback;)V

    return-void
.end method
