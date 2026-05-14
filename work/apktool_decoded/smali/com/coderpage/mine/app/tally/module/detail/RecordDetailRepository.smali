.class Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;
.super Ljava/lang/Object;
.source "RecordDetailRepository.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$deleteExpense$6(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$deleteExpense$7(JLcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;-><init>()V

    .line 45
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setId(J)V

    .line 46
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->delete(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V

    .line 47
    new-instance p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$r_qZKFePxX4vokgHej-gb_TGNXY;

    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$r_qZKFePxX4vokgHej-gb_TGNXY;-><init>(Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-static {p0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$deleteIncome$8(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$deleteIncome$9(JLcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;-><init>()V

    .line 54
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->setId(J)V

    .line 55
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->delete(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V

    .line 56
    new-instance p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$LhcJTjPmf0x6_3LXV1ysrrw2paE;

    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$LhcJTjPmf0x6_3LXV1ysrrw2paE;-><init>(Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-static {p0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$queryExpense$0(Lcom/coderpage/base/common/Callback;)V
    .locals 3

    .line 24
    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    const/16 v1, 0x2711

    const-string v2, "EMPTY DATA"

    invoke-direct {v0, v1, v2}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/Callback;->failure(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryExpense$1(Lcom/coderpage/base/common/Callback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 0

    .line 26
    invoke-interface {p0, p1}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryExpense$2(JLcom/coderpage/base/common/Callback;)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryById(J)Lcom/coderpage/mine/app/tally/persistence/model/Record;

    move-result-object p0

    if-nez p0, :cond_0

    .line 24
    new-instance p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$JeIdD1psnrrR-Vp7rJEhyEU23Yw;

    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$JeIdD1psnrrR-Vp7rJEhyEU23Yw;-><init>(Lcom/coderpage/base/common/Callback;)V

    invoke-static {p0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$xK8HeCTPx4iPXesGovbdloCFh9o;

    invoke-direct {p1, p2, p0}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$xK8HeCTPx4iPXesGovbdloCFh9o;-><init>(Lcom/coderpage/base/common/Callback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-static {p1}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$queryIncome$3(Lcom/coderpage/base/common/Callback;)V
    .locals 3

    .line 35
    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    const/16 v1, 0x2711

    const-string v2, "EMPTY DATA"

    invoke-direct {v0, v1, v2}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/Callback;->failure(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryIncome$4(Lcom/coderpage/base/common/Callback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 0

    .line 37
    invoke-interface {p0, p1}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryIncome$5(JLcom/coderpage/base/common/Callback;)V
    .locals 1

    .line 33
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryById(J)Lcom/coderpage/mine/app/tally/persistence/model/Record;

    move-result-object p0

    if-nez p0, :cond_0

    .line 35
    new-instance p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$4WWTD05uCEXlqf17bvGVTaRciQM;

    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$4WWTD05uCEXlqf17bvGVTaRciQM;-><init>(Lcom/coderpage/base/common/Callback;)V

    invoke-static {p0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$91ZdPdX7xXJG3JRlMcYASr00G7o;

    invoke-direct {p1, p2, p0}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$91ZdPdX7xXJG3JRlMcYASr00G7o;-><init>(Lcom/coderpage/base/common/Callback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-static {p1}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method deleteExpense(JLcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expenseId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$d8zvJr3nBTB5pNBg6qlzMPm_E7U;

    invoke-direct {v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$d8zvJr3nBTB5pNBg6qlzMPm_E7U;-><init>(JLcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method deleteIncome(JLcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "incomeId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$Y5W8GoxEHIrsO2KZKgIGxMcSXYg;

    invoke-direct {v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$Y5W8GoxEHIrsO2KZKgIGxMcSXYg;-><init>(JLcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryExpense(JLcom/coderpage/base/common/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expenseId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/coderpage/base/common/Callback<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$bcyDCy1Iy64_Tsfmzbi8pe1R1Bo;

    invoke-direct {v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$bcyDCy1Iy64_Tsfmzbi8pe1R1Bo;-><init>(JLcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryIncome(JLcom/coderpage/base/common/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "incomeId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/coderpage/base/common/Callback<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$ZiT-diOW5at2-UHtjpedu5U9pGw;

    invoke-direct {v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$ZiT-diOW5at2-UHtjpedu5U9pGw;-><init>(JLcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
