.class Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;
.super Ljava/lang/Object;
.source "RecordRepository.java"


# instance fields
.field private mDataBase:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->mDataBase:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    return-void
.end method

.method static synthetic lambda$queryAllCategory$0(Lcom/coderpage/base/common/SimpleCallback;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-interface {p0, p1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryAllCategory$1(Lcom/coderpage/base/common/SimpleCallback;Ljava/util/List;)V
    .locals 0

    .line 38
    invoke-interface {p0, p1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryAllCategory$2(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryRecordById$4(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 0

    .line 49
    invoke-interface {p0, p1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$saveRecord$6(Lcom/coderpage/base/common/SimpleCallback;J)V
    .locals 1

    .line 57
    new-instance v0, Lcom/coderpage/base/common/Result;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateExpense$8(Lcom/coderpage/base/common/SimpleCallback;J)V
    .locals 1

    .line 65
    new-instance v0, Lcom/coderpage/base/common/Result;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$queryAllCategory$3$RecordRepository(Lcom/coderpage/mine/app/tally/common/RecordType;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/coderpage/mine/app/tally/common/RecordType;->EXPENSE:Lcom/coderpage/mine/app/tally/common/RecordType;

    if-ne p1, v0, :cond_0

    .line 32
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->mDataBase:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object p1

    invoke-interface {p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->allExpenseCategory()Ljava/util/List;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$hgA-TYYHYUnYeQP6IcMOYgKxa9Q;

    invoke-direct {v0, p2, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$hgA-TYYHYUnYeQP6IcMOYgKxa9Q;-><init>(Lcom/coderpage/base/common/SimpleCallback;Ljava/util/List;)V

    invoke-static {v0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 36
    :cond_0
    sget-object v0, Lcom/coderpage/mine/app/tally/common/RecordType;->INCOME:Lcom/coderpage/mine/app/tally/common/RecordType;

    if-ne p1, v0, :cond_1

    .line 37
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->mDataBase:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object p1

    invoke-interface {p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->allIncomeCategory()Ljava/util/List;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$tcrwWgmykLsmjricThszA0qVG14;

    invoke-direct {v0, p2, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$tcrwWgmykLsmjricThszA0qVG14;-><init>(Lcom/coderpage/base/common/SimpleCallback;Ljava/util/List;)V

    invoke-static {v0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 41
    :cond_1
    new-instance p1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$sxCj1ESHavqi_UJiW0mBih0OJOA;

    invoke-direct {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$sxCj1ESHavqi_UJiW0mBih0OJOA;-><init>(Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-static {p1}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$queryRecordById$5$RecordRepository(JLcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->mDataBase:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryById(J)Lcom/coderpage/mine/app/tally/persistence/model/Record;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$MElqDD69NovyGdX2mNPq1S6H_9g;

    invoke-direct {p2, p3, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$MElqDD69NovyGdX2mNPq1S6H_9g;-><init>(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-static {p2}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$saveRecord$7$RecordRepository(Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->mDataBase:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->createEntity()Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->insert(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)J

    move-result-wide v0

    .line 57
    new-instance p1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$I_QOPYq0v_yheQJnJ-kNTVDeoRk;

    invoke-direct {p1, p2, v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$I_QOPYq0v_yheQJnJ-kNTVDeoRk;-><init>(Lcom/coderpage/base/common/SimpleCallback;J)V

    invoke-static {p1}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$updateExpense$9$RecordRepository(Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->mDataBase:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->createEntity()Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->update(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)I

    move-result p1

    int-to-long v0, p1

    .line 65
    new-instance p1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ijG0S_PoMzoqXOiKTZM-EOF9iaU;

    invoke-direct {p1, p2, v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ijG0S_PoMzoqXOiKTZM-EOF9iaU;-><init>(Lcom/coderpage/base/common/SimpleCallback;J)V

    invoke-static {p1}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryAllCategory(Lcom/coderpage/mine/app/tally/common/RecordType;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/common/RecordType;",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$36XTtnlW7uq4xBt9o7ifN_3MkSM;

    invoke-direct {v1, p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$36XTtnlW7uq4xBt9o7ifN_3MkSM;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;Lcom/coderpage/mine/app/tally/common/RecordType;Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryRecordById(JLcom/coderpage/base/common/SimpleCallback;)V
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
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ENMy3wHQ3RfRnR_q_I3fetp-iBI;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ENMy3wHQ3RfRnR_q_I3fetp-iBI;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;JLcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method saveRecord(Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "record",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Lcom/coderpage/base/common/Result<",
            "Ljava/lang/Long;",
            "Lcom/coderpage/base/common/IError;",
            ">;>;)V"
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$UDlVzH9RdeL2E43ngGT2wWLLFR8;

    invoke-direct {v1, p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$UDlVzH9RdeL2E43ngGT2wWLLFR8;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateExpense(Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "record",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Lcom/coderpage/base/common/Result<",
            "Ljava/lang/Long;",
            "Lcom/coderpage/base/common/IError;",
            ">;>;)V"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$2tvEET56j2m-mI6Y4No1I358H3Q;

    invoke-direct {v1, p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$2tvEET56j2m-mI6Y4No1I358H3Q;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
