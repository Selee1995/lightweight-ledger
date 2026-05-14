.class public Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "RecordDetailViewModel.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# static fields
.field static final EXTRA_RECORD_ID:Ljava/lang/String; = "extra_record_id"

.field static final EXTRA_RECORD_TYPE:Ljava/lang/String; = "extra_record_type"

.field public static final TYPE_EXPENSE:I = 0x0

.field public static final TYPE_INCOME:I = 0x1


# instance fields
.field private mDataModified:Z

.field private mRecord:Ljava/lang/Object;

.field private mRecordData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/coderpage/mine/app/tally/module/detail/RecordData;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordId:J

.field private mRepository:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    .line 46
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordData:Landroid/arch/lifecycle/MutableLiveData;

    .line 51
    new-instance p1, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;

    return-void
.end method

.method static synthetic access$002(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecord:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordData:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method private refreshData()V
    .locals 4

    .line 96
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mType:I

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordId:J

    new-instance v3, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$1;

    invoke-direct {v3, p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;->queryExpense(JLcom/coderpage/base/common/Callback;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordId:J

    new-instance v3, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$2;

    invoke-direct {v3, p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel$2;-><init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;->queryIncome(JLcom/coderpage/base/common/Callback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method getRecordData()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/coderpage/mine/app/tally/module/detail/RecordData;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$onDeleteClick$0$RecordDetailViewModel(Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 76
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/coderpage/mine/app/tally/eventbus/EventRecordDelete;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecord:Ljava/lang/Object;

    check-cast v0, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {p2, v0}, Lcom/coderpage/mine/app/tally/eventbus/EventRecordDelete;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onDeleteClick$1$RecordDetailViewModel(Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/coderpage/mine/app/tally/eventbus/EventRecordDelete;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecord:Ljava/lang/Object;

    check-cast v0, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {p2, v0}, Lcom/coderpage/mine/app/tally/eventbus/EventRecordDelete;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onDeleteClick$2$RecordDetailViewModel(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 73
    iget p2, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mType:I

    if-nez p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;

    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordId:J

    new-instance p3, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailViewModel$IgzHA4Ly2COeaf3i3yHpVwSaHBQ;

    invoke-direct {p3, p0, p1}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailViewModel$IgzHA4Ly2COeaf3i3yHpVwSaHBQ;-><init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;Landroid/app/Activity;)V

    invoke-virtual {p2, v0, v1, p3}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;->deleteExpense(JLcom/coderpage/base/common/SimpleCallback;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;

    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordId:J

    new-instance p3, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailViewModel$JhyzT6lwp8AVgYgtg06EpL_fWvw;

    invoke-direct {p3, p0, p1}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailViewModel$JhyzT6lwp8AVgYgtg06EpL_fWvw;-><init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;Landroid/app/Activity;)V

    invoke-virtual {p2, v0, v1, p3}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;->deleteIncome(JLcom/coderpage/base/common/SimpleCallback;)V

    :goto_0
    return-void
.end method

.method onBackPressed(Landroid/app/Activity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mDataModified:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 143
    check-cast p1, Landroid/app/Activity;

    .line 144
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_record_type"

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mType:I

    const-string v0, "extra_record_id"

    const-wide/16 v1, 0x0

    .line 146
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordId:J

    .line 147
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->refreshData()V

    .line 149
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method onDeleteClick(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 69
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e003c

    .line 70
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0035

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailViewModel$EkqiPDFyUnv_twDEmwO36qoTZiE;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailViewModel$EkqiPDFyUnv_twDEmwO36qoTZiE;-><init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;Landroid/app/Activity;)V

    const p1, 0x7f0e0037

    .line 72
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public onDestroy(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 154
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventRecordUpdate(Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mDataModified:Z

    .line 160
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;->getRecord()Lcom/coderpage/mine/app/tally/persistence/model/Record;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;->getRecord()Lcom/coderpage/mine/app/tally/persistence/model/Record;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->refreshData()V

    :cond_0
    return-void
.end method

.method public onUpdateClick(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 60
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mType:I

    if-nez v0, :cond_0

    .line 61
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordId:J

    invoke-static {p1, v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->openAsUpdateExpense(Landroid/content/Context;J)V

    goto :goto_0

    .line 63
    :cond_0
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->mRecordId:J

    invoke-static {p1, v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->openAsUpdateIncome(Landroid/content/Context;J)V

    :goto_0
    return-void
.end method
