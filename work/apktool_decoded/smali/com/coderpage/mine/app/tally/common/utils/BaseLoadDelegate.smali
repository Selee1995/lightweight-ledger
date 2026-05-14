.class public abstract Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;
.super Ljava/lang/Object;
.source "BaseLoadDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mIsRequestingData:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLoadingMore:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingStatus:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPageIndex:I

.field private mPageSize:I

.field private mRefreshing:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageSize"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageIndex:I

    const/16 v0, 0xa

    .line 29
    iput v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageSize:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mDataList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mIsRequestingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mLoadingMore:Landroid/arch/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mLoadingStatus:Landroid/arch/lifecycle/MutableLiveData;

    .line 43
    iput p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageSize:I

    const/4 p1, 0x0

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mLoadingStatus:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mIsRequestingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mLoadingMore:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public getLastItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLoadingMore()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mLoadingMore:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLoadingStatus()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mLoadingStatus:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageIndex:I

    return v0
.end method

.method public getRefreshing()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public load()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mIsRequestingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mLoadingStatus:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->LOAD:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestStart(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;)V

    .line 102
    iget v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageSize:I

    new-instance v2, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;

    invoke-direct {v2, p0, v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$1;-><init>(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;I)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->requestData(IILcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method public loadMore()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mIsRequestingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mLoadingMore:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mIsRequestingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mLoadingMore:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 213
    iget v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageIndex:I

    add-int/2addr v0, v1

    .line 215
    sget-object v1, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->LOAD_MORE:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    invoke-virtual {p0, v1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestStart(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;)V

    .line 217
    iget v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageSize:I

    new-instance v2, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;

    invoke-direct {v2, p0, v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$3;-><init>(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->requestData(IILcom/coderpage/base/common/Callback;)V

    return-void
.end method

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
            "TT;>;",
            "Lcom/coderpage/base/common/IError;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onRequestStart(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    return-void
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refresh(Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method public refresh(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Lcom/coderpage/base/common/Result<",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/coderpage/base/common/IError;",
            ">;>;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mIsRequestingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->REFRESH:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestStart(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;)V

    .line 153
    iget v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageSize:I

    new-instance v2, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$2;-><init>(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;ILcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->requestData(IILcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method public refreshAllBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refreshAllBackground(Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method public refreshAllBackground(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Lcom/coderpage/base/common/Result<",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/coderpage/base/common/IError;",
            ">;>;)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mIsRequestingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageSize:I

    iget v2, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageIndex:I

    mul-int v0, v0, v2

    .line 273
    sget-object v2, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->REFRESH_BACKGROUND:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    invoke-virtual {p0, v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->onRequestStart(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;)V

    .line 275
    new-instance v2, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;

    invoke-direct {v2, p0, p1}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$4;-><init>(Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->requestData(IILcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method public abstract requestData(IILcom/coderpage/base/common/Callback;)V
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
            "TT;>;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation
.end method

.method public setInitData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mPageIndex:I

    .line 61
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method
