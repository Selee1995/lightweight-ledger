.class Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel$1;
.super Ljava/lang/Object;
.source "RecordItemViewModel.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->lambda$onItemLongClick$1(Lcom/coderpage/mine/app/tally/persistence/model/Record;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/Callback<",
        "Ljava/lang/Void;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

.field final synthetic val$record:Lcom/coderpage/mine/app/tally/persistence/model/Record;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$record"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel$1;->val$record:Lcom/coderpage/mine/app/tally/persistence/model/Record;

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

    .line 120
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-interface {p1}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/UIUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

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

    .line 112
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel$1;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aVoid"
        }
    .end annotation

    .line 112
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel$1;->success(Ljava/lang/Void;)V

    return-void
.end method

.method public success(Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aVoid"
        }
    .end annotation

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/coderpage/mine/app/tally/eventbus/EventRecordDelete;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel$1;->val$record:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v0, v1}, Lcom/coderpage/mine/app/tally/eventbus/EventRecordDelete;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
