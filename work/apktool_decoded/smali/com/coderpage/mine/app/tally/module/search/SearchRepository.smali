.class Lcom/coderpage/mine/app/tally/module/search/SearchRepository;
.super Ljava/lang/Object;
.source "SearchRepository.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$loadSearchHistory$1(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadSearchHistory$2(Lcom/coderpage/base/common/SimpleCallback;Ljava/util/List;)V
    .locals 0

    .line 62
    invoke-interface {p0, p1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadSearchHistory$3(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadSearchHistory$4(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2

    .line 54
    invoke-static {}, Lcom/coderpage/mine/persistence/database/MineDatabase;->getInstance()Lcom/coderpage/mine/persistence/database/MineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/persistence/database/MineDatabase;->keyValueDao()Lcom/coderpage/mine/persistence/dao/KeyValueDao;

    move-result-object v0

    const-string v1, "tally_search_history_list"

    invoke-interface {v0, v1}, Lcom/coderpage/mine/persistence/dao/KeyValueDao;->query(Ljava/lang/String;)Lcom/coderpage/mine/persistence/entity/KeyValue;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/coderpage/mine/persistence/entity/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/coderpage/mine/persistence/entity/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$_3isyiTmtRc-f6GUCdz3QPD8kQQ;

    invoke-direct {v1, p0, v0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$_3isyiTmtRc-f6GUCdz3QPD8kQQ;-><init>(Lcom/coderpage/base/common/SimpleCallback;Ljava/util/List;)V

    invoke-static {v1}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    new-instance v0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$CSR_UlKjLGTmR5loTGck1UOH9lU;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$CSR_UlKjLGTmR5loTGck1UOH9lU;-><init>(Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-static {v0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 57
    :cond_1
    :goto_1
    new-instance v0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$4TJRDJNoCyrgOIAd8YtkibgMqz0;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$4TJRDJNoCyrgOIAd8YtkibgMqz0;-><init>(Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-static {v0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$queryRecords$0(IILjava/lang/String;Lcom/coderpage/base/common/Callback;)V
    .locals 6

    int-to-long v2, p0

    add-int/lit8 p1, p1, -0x1

    mul-int p1, p1, p0

    int-to-long v4, p1

    .line 40
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-interface/range {v0 .. v5}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryByKeyWord(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p0

    .line 42
    invoke-interface {p3, p0}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$saveSearchHistory$5(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$saveSearchHistory$6(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2

    .line 77
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Lcom/coderpage/mine/persistence/entity/KeyValue;

    const-string v1, "tally_search_history_list"

    invoke-direct {v0, v1, p0}, Lcom/coderpage/mine/persistence/entity/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/coderpage/mine/persistence/database/MineDatabase;->getInstance()Lcom/coderpage/mine/persistence/database/MineDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coderpage/mine/persistence/database/MineDatabase;->keyValueDao()Lcom/coderpage/mine/persistence/dao/KeyValueDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/coderpage/mine/persistence/dao/KeyValueDao;->insert(Lcom/coderpage/mine/persistence/entity/KeyValue;)J

    .line 82
    new-instance p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$nQCyoYOkYLwGIwRCliWYP0UkPL4;

    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$nQCyoYOkYLwGIwRCliWYP0UkPL4;-><init>(Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-static {p0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method loadSearchHistory(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$wnw4maUDyOI3Fir-kKKgip7_xZA;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$wnw4maUDyOI3Fir-kKKgip7_xZA;-><init>(Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryRecords(IILjava/lang/String;Lcom/coderpage/base/common/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "page",
            "pageSize",
            "keyWord",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;-><init>(IILjava/lang/String;Lcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method saveSearchHistory(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$5TDLhrJCySiTm7Q-CrlH7yRVe2k;

    invoke-direct {v1, p1, p2}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$5TDLhrJCySiTm7Q-CrlH7yRVe2k;-><init>(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
