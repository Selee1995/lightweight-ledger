.class Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;
.super Ljava/lang/Object;
.source "TallyChartRepository.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$queryCategoryExpense$5(JJLcom/coderpage/base/common/Callback;)V
    .locals 8

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryExpenseCategoryGroup(JJ)Ljava/util/List;

    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;

    .line 180
    new-instance v5, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    invoke-direct {v5}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;-><init>()V

    .line 181
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setType(I)V

    .line 182
    invoke-virtual {v5, p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setStartDate(J)V

    .line 183
    invoke-virtual {v5, p2, p3}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setEndDate(J)V

    .line 184
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getCategoryId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setCategoryId(J)V

    .line 185
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setCategoryIconName(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setCategoryName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getAmount()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setAmount(D)V

    .line 189
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getAmount()D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    .line 195
    invoke-virtual {p1, v2, v3}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setAmountTotal(D)V

    goto :goto_1

    .line 197
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 198
    invoke-interface {p4, v0}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryCategoryIncome$6(JJLcom/coderpage/base/common/Callback;)V
    .locals 8

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryIncomeCategoryGroup(JJ)Ljava/util/List;

    move-result-object v1

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;

    .line 218
    new-instance v5, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    invoke-direct {v5}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;-><init>()V

    .line 219
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setType(I)V

    .line 220
    invoke-virtual {v5, p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setStartDate(J)V

    .line 221
    invoke-virtual {v5, p2, p3}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setEndDate(J)V

    .line 222
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getCategoryId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setCategoryId(J)V

    .line 223
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setCategoryIconName(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setCategoryName(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getAmount()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setAmount(D)V

    .line 227
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->getAmount()D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 232
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    .line 233
    invoke-virtual {p1, v2, v3}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->setAmountTotal(D)V

    goto :goto_1

    .line 235
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 237
    invoke-interface {p4, v0}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryDailyExpense$1(JJLcom/coderpage/base/common/Callback;)V
    .locals 3

    .line 52
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    .line 53
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryExpenseDailyGroup(JJ)Ljava/util/List;

    move-result-object p0

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;

    .line 58
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 59
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;-><init>()V

    .line 60
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setCount(J)V

    .line 61
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getAmount()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setAmount(F)V

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setYear(I)V

    const/4 v2, 0x2

    .line 63
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setMonth(I)V

    const/4 v1, 0x5

    .line 64
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setDayOfMonth(I)V

    .line 65
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setTimeMillis(J)V

    .line 66
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {p4, p2}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryDailyInCome$2(JJLcom/coderpage/base/common/Callback;)V
    .locals 3

    .line 81
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    .line 82
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryIncomeDailyGroup(JJ)Ljava/util/List;

    move-result-object p0

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;

    .line 87
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 88
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;-><init>()V

    .line 89
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setCount(J)V

    .line 90
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getAmount()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setAmount(F)V

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setYear(I)V

    const/4 v2, 0x2

    .line 92
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setMonth(I)V

    const/4 v1, 0x5

    .line 93
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setDayOfMonth(I)V

    .line 94
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setTimeMillis(J)V

    .line 95
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {p4, p2}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryFirstRecordTime$0(Lcom/coderpage/base/common/Callback;)V
    .locals 3

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 35
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryFirst()Lcom/coderpage/mine/app/tally/persistence/model/Record;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v0

    .line 39
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryMonthList$7()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$queryMonthlyExpense$3(JJLcom/coderpage/base/common/Callback;)V
    .locals 4

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryExpenseMonthGroup(JJ)Ljava/util/List;

    move-result-object p0

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 114
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;

    .line 115
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getTime()J

    move-result-wide v1

    .line 116
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getAmount()F

    move-result p3

    .line 118
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 119
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 120
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 121
    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>(II)V

    .line 122
    new-instance v2, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;-><init>()V

    .line 123
    invoke-virtual {v2, v1}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->setMonth(Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V

    .line 124
    invoke-virtual {v2, p3}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->setAmount(F)V

    .line 125
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getCount()J

    move-result-wide p2

    invoke-virtual {v2, p2, p3}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->setCount(J)V

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_0
    invoke-interface {p4, v0}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryMonthlyIncome$4(JJLcom/coderpage/base/common/Callback;)V
    .locals 4

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryIncomeMonthGroup(JJ)Ljava/util/List;

    move-result-object p0

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;

    .line 146
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getTime()J

    move-result-wide v1

    .line 147
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getAmount()F

    move-result p3

    .line 149
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 150
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 151
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 152
    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>(II)V

    .line 153
    new-instance v2, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;-><init>()V

    .line 154
    invoke-virtual {v2, v1}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->setMonth(Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V

    .line 155
    invoke-virtual {v2, p3}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->setAmount(F)V

    .line 156
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->getCount()J

    move-result-wide p2

    invoke-virtual {v2, p2, p3}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->setCount(J)V

    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {p4, v0}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method queryCategoryExpense(JJLcom/coderpage/base/common/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$eCgIkei0ZqVWtxOWLpQ9LB0W0FI;

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$eCgIkei0ZqVWtxOWLpQ9LB0W0FI;-><init>(JJLcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryCategoryIncome(JJLcom/coderpage/base/common/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 210
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$tnIKYh3dLeqU5i2jHAwcIaFIR2k;

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$tnIKYh3dLeqU5i2jHAwcIaFIR2k;-><init>(JJLcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryDailyExpense(JJLcom/coderpage/base/common/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$6XRDnqmVqhu57Vql8IEXUKvQgGc;

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$6XRDnqmVqhu57Vql8IEXUKvQgGc;-><init>(JJLcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryDailyInCome(JJLcom/coderpage/base/common/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$OKNdlg4kr2lWNKtsKDmc3HCBNKU;

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$OKNdlg4kr2lWNKtsKDmc3HCBNKU;-><init>(JJLcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryFirstRecordTime(Lcom/coderpage/base/common/Callback;)V
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
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/lang/Long;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$bQShDR1f6AliKP7USs78cjMz1wA;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$bQShDR1f6AliKP7USs78cjMz1wA;-><init>(Lcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryMonthList(Lcom/coderpage/base/common/Callback;)V
    .locals 1
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
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    sget-object v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$1UIk32wqhe1dhhE8k79aoNxPwAo;->INSTANCE:Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$1UIk32wqhe1dhhE8k79aoNxPwAo;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryMonthlyExpense(JJLcom/coderpage/base/common/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$4yQr2Np9HqUxnu2QMXS7n3aDY7g;

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$4yQr2Np9HqUxnu2QMXS7n3aDY7g;-><init>(JJLcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method queryMonthlyIncome(JJLcom/coderpage/base/common/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$-9Jzb_ZstgULitLzq0XrISPu7zo;

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$-9Jzb_ZstgULitLzq0XrISPu7zo;-><init>(JJLcom/coderpage/base/common/Callback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
