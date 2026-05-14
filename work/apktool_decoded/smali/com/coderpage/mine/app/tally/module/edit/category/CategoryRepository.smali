.class Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;
.super Ljava/lang/Object;
.source "CategoryRepository.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$addCategory$6(Ljava/lang/String;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)Z
    .locals 0

    .line 117
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$addCategory$7(Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 113
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->allCategory()Ljava/util/List;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$gv7xFb-80IEGMgxRzeImvwVthLc;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$gv7xFb-80IEGMgxRzeImvwVthLc;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->contains(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    new-instance p0, Lcom/coderpage/base/common/Result;

    new-instance p2, Lcom/coderpage/base/common/NonThrowError;

    const/16 p3, 0x2713

    .line 122
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object p4

    const v0, 0x7f0e0040

    invoke-static {p4, v0}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    invoke-interface {p1, p0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 126
    :cond_0
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;-><init>()V

    .line 127
    invoke-virtual {v0, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setType(I)V

    .line 128
    invoke-virtual {v0, p0}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setUniqueName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p3}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setIcon(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p4}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->setName(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    invoke-interface {p0, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->insert([Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V

    .line 133
    new-instance p0, Lcom/coderpage/base/common/Result;

    invoke-direct {p0, v1, v1}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadAllExpenseCategory$1(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->allExpenseCategory()Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadAllIncomeCategory$2(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->allIncomeCategory()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {p0, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryCategoryById$0(JLcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->queryById(J)Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object p0

    .line 38
    invoke-interface {p2, p0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateCategory$3(JLjava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1

    .line 76
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->update(JLjava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->queryById(J)Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object p0

    .line 78
    invoke-interface {p4, p0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateCategoryOrder$4(Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;IILcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 0

    .line 92
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getId()J

    move-result-wide p1

    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getOrder()I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->updateOrder(JI)V

    return-void
.end method

.method static synthetic lambda$updateCategoryOrder$5(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2

    .line 90
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$cneZGuLDyJ416lK0-xoPShDWCcA;

    invoke-direct {v1, v0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$cneZGuLDyJ416lK0-xoPShDWCcA;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;)V

    invoke-static {p0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    const/4 p0, 0x0

    .line 94
    invoke-interface {p1, p0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method addCategory(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "uniqueName",
            "iconName",
            "name",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Lcom/coderpage/base/common/Result<",
            "Ljava/lang/Void;",
            "Lcom/coderpage/base/common/IError;",
            ">;>;)V"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$CjY8C5K4Tn2pUp79UIZzM6HhyTs;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p5

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$CjY8C5K4Tn2pUp79UIZzM6HhyTs;-><init>(Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method loadAllExpenseCategory(Lcom/coderpage/base/common/SimpleCallback;)V
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
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;>;)V"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$mSG9NAbNJnwSbo4txeLGx-xsOHs;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$mSG9NAbNJnwSbo4txeLGx-xsOHs;-><init>(Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method loadAllIncomeCategory(Lcom/coderpage/base/common/SimpleCallback;)V
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
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;>;)V"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$AedFeWEzS12j1OGYDhRlfnx1q7U;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$AedFeWEzS12j1OGYDhRlfnx1q7U;-><init>(Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryCategoryById(JLcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "categoryId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$LCrdNtgd9HImBnH19Aa_i-z8UA0;

    invoke-direct {v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$LCrdNtgd9HImBnH19Aa_i-z8UA0;-><init>(JLcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateCategory(JLjava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "categoryId",
            "icon",
            "name",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;

    move-object v1, v7

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateCategoryOrder(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "categoryList",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$4XwR_XxTVsZTkSX9ctq-ZwXyn3A;

    invoke-direct {v1, p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$4XwR_XxTVsZTkSX9ctq-ZwXyn3A;-><init>(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
