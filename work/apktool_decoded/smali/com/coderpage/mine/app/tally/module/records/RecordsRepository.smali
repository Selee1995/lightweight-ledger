.class Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;
.super Ljava/lang/Object;
.source "RecordsRepository.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$deleteRecord$1(Lcom/coderpage/base/common/Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-interface {p0, v0}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$deleteRecord$2(Lcom/coderpage/base/common/Callback;)V
    .locals 3

    .line 65
    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    const/16 v1, 0x2711

    const-string v2, "SQL ERR"

    invoke-direct {v0, v1, v2}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/Callback;->failure(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$deleteRecord$3(JLcom/coderpage/base/common/Callback;)V
    .locals 1

    .line 60
    :try_start_0
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;-><init>()V

    .line 61
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setId(J)V

    .line 62
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->delete(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V

    .line 63
    new-instance p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$nujlWgOvigpeNpzsAo34lIshm_4;

    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$nujlWgOvigpeNpzsAo34lIshm_4;-><init>(Lcom/coderpage/base/common/Callback;)V

    invoke-static {p0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    new-instance p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$Je2eo3-LFDbK4yaUHMSU_KrOhh8;

    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$Je2eo3-LFDbK4yaUHMSU_KrOhh8;-><init>(Lcom/coderpage/base/common/Callback;)V

    invoke-static {p0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$queryRecords$0(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;IILcom/coderpage/base/common/Callback;)V
    .locals 12

    .line 33
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->getType()I

    move-result v1

    .line 34
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->getStartTime()J

    move-result-wide v3

    .line 35
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->getEndTime()J

    move-result-wide v5

    int-to-long v7, p1

    add-int/lit8 p2, p2, -0x1

    mul-int p2, p2, p1

    int-to-long v9, p2

    .line 38
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->getCategoryUniqueNameArray()[Ljava/lang/String;

    move-result-object v11

    .line 41
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v2

    const/4 p0, -0x1

    if-ne v1, p0, :cond_1

    if-eqz v11, :cond_0

    .line 45
    invoke-interface/range {v2 .. v11}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryAll(JJJJ[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface/range {v2 .. v10}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryAll(JJJJ)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_2

    move-object v0, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v11

    .line 49
    invoke-interface/range {v0 .. v10}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->query(IJJJJ[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object v0, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    .line 50
    invoke-interface/range {v0 .. v9}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->query(IJJJJ)Ljava/util/List;

    move-result-object p0

    .line 52
    :goto_0
    invoke-interface {p3, p0}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public deleteRecord(JLcom/coderpage/base/common/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recordId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/lang/Void;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$ZgreoY_p9pSrMZo56swFKjuZmfs;

    invoke-direct {v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$ZgreoY_p9pSrMZo56swFKjuZmfs;-><init>(JLcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryRecords(IILcom/coderpage/mine/app/tally/module/records/RecordQuery;Lcom/coderpage/base/common/Callback;)V
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
            "query",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/coderpage/mine/app/tally/module/records/RecordQuery;",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;

    invoke-direct {v1, p3, p2, p1, p4}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;IILcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
