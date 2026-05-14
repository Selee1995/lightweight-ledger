.class Lcom/coderpage/mine/app/tally/module/home/HomRepository;
.super Ljava/lang/Object;
.source "HomRepository.java"


# instance fields
.field private mCategoryExpenseTotal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentMonthExpenseTotalAmount:D

.field private mCurrentMonthInComeTotalAmount:D

.field private mRecent3DayRecordCount:I

.field private mRecent3DayRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end field

.field private mTodayExpenseTotalAmount:D

.field private mTodayInComeTotalAmount:D

.field private mTodayRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mCategoryExpenseTotal:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mRecent3DayRecordList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mTodayRecordList:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$loadCurrentMonthExpenseData$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 5

    .line 160
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 161
    :goto_0
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_1
    cmpl-double p0, v3, v1

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    cmpl-double p0, v3, v1

    if-lez p0, :cond_3

    const/4 p0, -0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method static synthetic lambda$loadCurrentMonthExpenseData$1(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/base/common/Result;)V
    .locals 0

    .line 172
    invoke-interface {p0, p1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getCategoryExpenseTotal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mCategoryExpenseTotal:Ljava/util/List;

    return-object v0
.end method

.method getCurrentMonthExpenseTotalAmount()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mCurrentMonthExpenseTotalAmount:D

    return-wide v0
.end method

.method getCurrentMonthInComeTotalAmount()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mCurrentMonthInComeTotalAmount:D

    return-wide v0
.end method

.method public getRecent3DayRecordCount()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mRecent3DayRecordCount:I

    return v0
.end method

.method getRecent3DayRecordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mRecent3DayRecordList:Ljava/util/List;

    return-object v0
.end method

.method getTodayExpenseTotalAmount()D
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mTodayExpenseTotalAmount:D

    return-wide v0
.end method

.method getTodayInComeTotalAmount()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mTodayInComeTotalAmount:D

    return-wide v0
.end method

.method getTodayRecordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mTodayRecordList:Ljava/util/List;

    return-object v0
.end method

.method public synthetic lambda$loadCurrentMonthExpenseData$2$HomRepository(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 29

    move-object/from16 v0, p0

    .line 81
    invoke-static {}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->todayStartUnixTime()J

    move-result-wide v1

    .line 82
    invoke-static {}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->todayEndUnixTime()J

    move-result-wide v3

    const-wide/32 v5, 0xa4cb800

    sub-long v5, v1, v5

    .line 86
    invoke-static {}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->currentMonthStartUnixTime()J

    move-result-wide v8

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 98
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v7

    const-wide/32 v16, 0x7fffffff

    const-wide/16 v18, 0x0

    move-object v0, v12

    move-wide/from16 v12, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move-object v0, v15

    move-wide/from16 v14, v18

    invoke-interface/range {v7 .. v15}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryAll(JJJJ)Ljava/util/List;

    move-result-object v7

    .line 105
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v21, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    move-wide/from16 v23, v8

    const/4 v8, 0x1

    if-eqz v10, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 106
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v25

    cmp-long v10, v25, v1

    if-ltz v10, :cond_0

    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v25

    cmp-long v10, v25, v3

    if-gez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 107
    :goto_1
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v25

    cmp-long v27, v25, v5

    if-ltz v27, :cond_1

    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v25

    cmp-long v27, v25, v3

    if-gez v27, :cond_1

    const/16 v25, 0x1

    goto :goto_2

    :cond_1
    const/16 v25, 0x0

    :goto_2
    if-eqz v10, :cond_4

    .line 111
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v10

    if-nez v10, :cond_2

    .line 112
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v26

    add-double v12, v12, v26

    .line 114
    :cond_2
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v10

    if-ne v10, v8, :cond_3

    .line 115
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v26

    add-double v14, v14, v26

    .line 117
    :cond_3
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v25, :cond_5

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v17

    .line 123
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 v10, v17

    .line 127
    :goto_3
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v17

    if-nez v17, :cond_6

    .line 128
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v25

    add-double v23, v23, v25

    :cond_6
    move-wide/from16 v25, v1

    .line 130
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v1

    if-ne v1, v8, :cond_7

    .line 131
    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v1

    move-object/from16 v17, v9

    move-wide/from16 v8, v21

    add-double v21, v8, v1

    goto :goto_4

    :cond_7
    move-object/from16 v17, v9

    move-wide/from16 v8, v21

    .line 135
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v1

    if-nez v1, :cond_9

    .line 136
    invoke-virtual/range {v17 .. v17}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    const-wide/16 v19, 0x0

    if-nez v1, :cond_8

    .line 138
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 140
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v27

    add-double v8, v8, v27

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 141
    invoke-virtual/range {v17 .. v17}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    move-object/from16 v2, v16

    const-wide/16 v19, 0x0

    :goto_5
    move-object/from16 v16, v2

    move-object/from16 v17, v10

    move-wide/from16 v8, v23

    move-wide/from16 v1, v25

    goto/16 :goto_0

    :cond_a
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v10, v17

    move-wide/from16 v8, v21

    const/16 v16, 0x1

    .line 145
    iput v11, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mRecent3DayRecordCount:I

    .line 146
    iput-wide v12, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mTodayExpenseTotalAmount:D

    .line 147
    iput-wide v14, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mTodayInComeTotalAmount:D

    move-wide/from16 v3, v23

    .line 148
    iput-wide v3, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mCurrentMonthExpenseTotalAmount:D

    .line 149
    iput-wide v8, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mCurrentMonthInComeTotalAmount:D

    .line 150
    iget-object v3, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mRecent3DayRecordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 151
    iget-object v3, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mRecent3DayRecordList:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v3, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mTodayRecordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 153
    iget-object v3, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mTodayRecordList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 157
    new-instance v4, Landroid/util/Pair;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 159
    :cond_b
    sget-object v2, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$gETgPyWToHT68VlqATiLkfy9cso;->INSTANCE:Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$gETgPyWToHT68VlqATiLkfy9cso;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    iget-object v2, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mCategoryExpenseTotal:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 168
    iget-object v2, v1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->mCategoryExpenseTotal:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    new-instance v0, Lcom/coderpage/base/common/Result;

    invoke-direct {v0}, Lcom/coderpage/base/common/Result;-><init>()V

    .line 171
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coderpage/base/common/Result;->setData(Ljava/lang/Object;)V

    .line 172
    new-instance v2, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$OTKf1S_6ZwLmN0qWSfgkkIluKtw;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$OTKf1S_6ZwLmN0qWSfgkkIluKtw;-><init>(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/base/common/Result;)V

    invoke-static {v2}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method loadCurrentMonthExpenseData(Lcom/coderpage/base/common/SimpleCallback;)V
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
            "Lcom/coderpage/base/common/Result<",
            "Ljava/lang/Boolean;",
            "Lcom/coderpage/base/common/IError;",
            ">;>;)V"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$LDtSiumpDYMS0C9sMH69uBhq8bI;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$LDtSiumpDYMS0C9sMH69uBhq8bI;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomRepository;Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
