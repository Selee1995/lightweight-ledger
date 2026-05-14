.class public Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "SearchViewModel.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastSearchTimestamp:J

.field private mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/coderpage/mine/app/tally/module/search/SearchRepository;

.field private mSearchHistoryList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSearchKeyWord:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchPendingTask:Ljava/lang/Runnable;

.field private mSearchResultList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowSearchResult:Landroidx/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    .line 37
    new-instance p1, Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mShowSearchResult:Landroidx/databinding/ObservableBoolean;

    .line 39
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchKeyWord:Landroidx/databinding/ObservableField;

    .line 42
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchHistoryList:Landroid/arch/lifecycle/MutableLiveData;

    .line 44
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchResultList:Landroid/arch/lifecycle/MutableLiveData;

    .line 47
    new-instance p1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$ccM0LgC0ACEm4OEOi05rXmBvj2I;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$ccM0LgC0ACEm4OEOi05rXmBvj2I;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchPendingTask:Ljava/lang/Runnable;

    .line 53
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance p1, Lcom/coderpage/mine/app/tally/module/search/SearchRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/search/SearchRepository;

    .line 55
    new-instance p1, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$1;

    const/16 v0, 0xf

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;I)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    .line 71
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchKeyWord:Landroidx/databinding/ObservableField;

    new-instance v0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 87
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->loadSearchHistory()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroidx/databinding/ObservableField;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchKeyWord:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Lcom/coderpage/mine/app/tally/module/search/SearchRepository;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/search/SearchRepository;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchResultList:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroidx/databinding/ObservableBoolean;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mShowSearchResult:Landroidx/databinding/ObservableBoolean;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchPendingTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addSearchHistory(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyWord"
        }
    .end annotation

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchHistoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    :cond_1
    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$B_av8T5XBeg7M_XpU2neFL1Ug6s;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$B_av8T5XBeg7M_XpU2neFL1Ug6s;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->remove(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)I

    const/4 v1, 0x0

    .line 190
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/16 p1, 0xa

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_2

    .line 194
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/search/SearchRepository;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$C9I3Nb6-qOuoSgt-d_XIU1LlXY0;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$C9I3Nb6-qOuoSgt-d_XIU1LlXY0;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    invoke-virtual {p1, v0, v1}, Lcom/coderpage/mine/app/tally/module/search/SearchRepository;->saveSearchHistory(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method static synthetic lambda$addSearchHistory$5(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 188
    invoke-static {p1, p0}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ccM0LgC0ACEm4OEOi05rXmBvj2I(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->search()V

    return-void
.end method

.method static synthetic lambda$onRemoveHistoryItemClick$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 144
    invoke-static {p1, p0}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private loadSearchHistory()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/search/SearchRepository;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$BtaNY9TJwU9iOSS7Mjr5t1IkXwM;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$BtaNY9TJwU9iOSS7Mjr5t1IkXwM;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/search/SearchRepository;->loadSearchHistory(Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method private search()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchKeyWord:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u641c\u7d22\u5185\u5bb9"

    .line 162
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$Cx8NyjQfnq9Hp023n6HxrNcp9gA;

    invoke-direct {v2, p0, v0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$Cx8NyjQfnq9Hp023n6HxrNcp9gA;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refresh(Lcom/coderpage/base/common/SimpleCallback;)V

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

    .line 123
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

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

    .line 127
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->getLoadingStatus()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

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

    .line 119
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->getRefreshing()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method getSearchHistoryList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchHistoryList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSearchKeyWord()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchKeyWord:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method getSearchResultList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchResultList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getShowSearchResult()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mShowSearchResult:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public synthetic lambda$addSearchHistory$6$SearchViewModel(Ljava/lang/Void;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->loadSearchHistory()V

    return-void
.end method

.method public synthetic lambda$loadSearchHistory$4$SearchViewModel(Ljava/util/List;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchHistoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onClearSearchHistoryClick$2$SearchViewModel(Ljava/lang/Void;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->loadSearchHistory()V

    return-void
.end method

.method public synthetic lambda$onRemoveHistoryItemClick$1$SearchViewModel(Ljava/lang/Void;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->loadSearchHistory()V

    return-void
.end method

.method public synthetic lambda$search$3$SearchViewModel(Ljava/lang/String;Lcom/coderpage/base/common/Result;)V
    .locals 1

    .line 167
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mShowSearchResult:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 169
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->addSearchHistory(Ljava/lang/String;)V

    return-void
.end method

.method load()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->load()V

    return-void
.end method

.method loadMore()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->loadMore()V

    return-void
.end method

.method public onClearSearchHistoryClick()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/search/SearchRepository;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$94WnVXShz8GgoJy3JxliM9he7ig;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$94WnVXShz8GgoJy3JxliM9he7ig;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/search/SearchRepository;->saveSearchHistory(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method public onRemoveHistoryItemClick(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "history"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchHistoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :cond_0
    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$ueCz5_4umMF7Aeyh0oPHmnbzH3Q;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$ueCz5_4umMF7Aeyh0oPHmnbzH3Q;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->remove(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)I

    .line 146
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/search/SearchRepository;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$qpTZiMYfMzuF-DTagPJdarsBtP4;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$qpTZiMYfMzuF-DTagPJdarsBtP4;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    invoke-virtual {p1, v0, v1}, Lcom/coderpage/mine/app/tally/module/search/SearchRepository;->saveSearchHistory(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method public onSearchClick()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->refresh()V

    return-void
.end method

.method public onSearchHistoryItemClick(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "history"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mSearchKeyWord:Landroidx/databinding/ObservableField;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method refresh()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->mLoadDelegate:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;->refresh()V

    return-void
.end method
