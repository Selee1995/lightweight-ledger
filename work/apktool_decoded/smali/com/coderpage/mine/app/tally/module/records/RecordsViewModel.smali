.class public Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "RecordsViewModel.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# instance fields
.field private mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end field

.field private mQuery:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

.field private mRecordList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;

.field private mToolbarTitle:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarTitleBase:Ljava/lang/String;

.field private mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mToolbarTitleBase:Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mToolbarTitle:Landroid/arch/lifecycle/MutableLiveData;

    .line 59
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mRecordList:Landroid/arch/lifecycle/MutableLiveData;

    .line 61
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    .line 64
    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;-><init>()V

    const/4 v1, -0x1

    .line 65
    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setType(I)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setStartTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setEndTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->build()Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mQuery:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    const v0, 0x7f0e00f4

    .line 75
    invoke-static {p1, v0}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mToolbarTitleBase:Ljava/lang/String;

    .line 76
    new-instance p1, Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;

    .line 77
    new-instance p1, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$1;

    const/16 v0, 0xf

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;I)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;)Lcom/coderpage/mine/app/tally/module/records/RecordQuery;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mQuery:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;)Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->formatRecordList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mRecordList:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private createAbsoluteSizeSpan(Ljava/lang/String;Landroid/graphics/Typeface;II)Landroid/text/SpannableString;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "typeface",
            "sizeDip",
            "color"
        }
    .end annotation

    .line 168
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    new-instance p1, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$2;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    int-to-float p3, p3

    invoke-static {v1, p3}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p3

    invoke-direct {p1, p0, p3, p4, p2}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$2;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;IILandroid/graphics/Typeface;)V

    .line 182
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/4 p3, 0x0

    const/16 p4, 0x21

    invoke-virtual {v0, p1, p3, p2, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private formatRecordList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mRecordList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mRecordList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_2

    .line 194
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    new-instance v1, Lcom/coderpage/base/utils/WrappedInt;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/coderpage/base/utils/WrappedInt;-><init>(I)V

    .line 200
    new-instance v3, Lcom/coderpage/base/utils/WrappedInt;

    invoke-direct {v3, v2}, Lcom/coderpage/base/utils/WrappedInt;-><init>(I)V

    .line 201
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 204
    new-instance v4, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;

    invoke-direct {v4, v2, v1, v3, v0}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;-><init>(Ljava/util/Calendar;Lcom/coderpage/base/utils/WrappedInt;Lcom/coderpage/base/utils/WrappedInt;Ljava/util/List;)V

    invoke-static {p1, v4}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic lambda$formatRecordList$0(Ljava/util/Calendar;Lcom/coderpage/base/utils/WrappedInt;Lcom/coderpage/base/utils/WrappedInt;Ljava/util/List;IILcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 1

    .line 205
    invoke-virtual {p6}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide p4

    .line 206
    invoke-virtual {p0, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p4, 0x1

    .line 207
    invoke-virtual {p0, p4}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/4 v0, 0x2

    .line 208
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, p4

    .line 209
    invoke-virtual {p1}, Lcom/coderpage/base/utils/WrappedInt;->get()I

    move-result p4

    if-ne p4, p5, :cond_0

    invoke-virtual {p2}, Lcom/coderpage/base/utils/WrappedInt;->get()I

    move-result p4

    if-eq p4, p0, :cond_1

    .line 210
    :cond_0
    new-instance p4, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;

    invoke-direct {p4, p5, p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;-><init>(II)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p1, p5}, Lcom/coderpage/base/utils/WrappedInt;->set(I)V

    .line 212
    invoke-virtual {p2, p0}, Lcom/coderpage/base/utils/WrappedInt;->set(I)V

    .line 214
    :cond_1
    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method getLoadingMore()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->getLoadingMore()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method getLoadingStatus()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->getLoadingStatus()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method getRecordList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mRecordList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getRefreshing()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->getRefreshing()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method getToolbarTitle()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mToolbarTitle:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method load()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->load()V

    return-void
.end method

.method loadMore()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->loadMore()V

    return-void
.end method

.method public onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 2
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

    .line 226
    check-cast p1, Landroid/app/Activity;

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_query"

    .line 228
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    if-nez p1, :cond_0

    .line 233
    new-instance p1, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;-><init>()V

    const/4 v0, -0x1

    .line 230
    invoke-virtual {p1, v0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setType(I)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 231
    invoke-virtual {p1, v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setStartTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object p1

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setEndTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->build()Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mQuery:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    .line 234
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->setQuery(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;)V

    .line 236
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

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

    .line 241
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventRecordAdd(Lcom/coderpage/mine/app/tally/eventbus/EventRecordAdd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 250
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refreshAllBackground()V

    return-void
.end method

.method public onEventRecordDelete(Lcom/coderpage/mine/app/tally/eventbus/EventRecordDelete;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 260
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refreshAllBackground()V

    return-void
.end method

.method public onEventRecordUpdate(Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 255
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refreshAllBackground()V

    return-void
.end method

.method refresh()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refresh()V

    return-void
.end method

.method setQuery(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mQuery:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    .line 122
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mRecordList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mRecordList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 124
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->load()V

    goto :goto_2

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refresh()V

    .line 131
    :goto_2
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mQuery:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_4

    const-string p1, ""

    goto :goto_3

    .line 132
    :cond_4
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mQuery:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->getStartTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mQuery:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->getEndTime()J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->formatDisplayDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    .line 134
    :goto_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mToolbarTitleBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/16 v2, 0xe

    .line 138
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f060029

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 137
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->createAbsoluteSizeSpan(Ljava/lang/String;Landroid/graphics/Typeface;II)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->mToolbarTitle:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
