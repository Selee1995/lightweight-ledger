.class public Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "TallyChartActivity.java"


# static fields
.field static final EXTRA_MONTH:Ljava/lang/String; = "extra_month"

.field static final EXTRA_YEAR:Ljava/lang/String; = "extra_year"


# instance fields
.field private final categoryExpenseColorArray:[I

.field private final categoryIncomeColorArray:[I

.field private mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

.field private mBinding:Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

.field private mCategoryDataAdapter:Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;

.field private mCategoryDataRecycler:Landroid/support/v7/widget/RecyclerView;

.field private mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

.field private mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 62
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 68
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v2

    const v3, 0x7f060046

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 69
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v2

    const v4, 0x7f060047

    invoke-static {v2, v4}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 70
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v2

    const v5, 0x7f060048

    invoke-static {v2, v5}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 71
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v2

    const v6, 0x7f060049

    invoke-static {v2, v6}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v6, 0x3

    aput v2, v1, v6

    .line 72
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v2

    const v7, 0x7f06004a

    invoke-static {v2, v7}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v7, 0x4

    aput v2, v1, v7

    .line 73
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v2

    const v8, 0x7f06004b

    invoke-static {v2, v8}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v8, 0x5

    aput v2, v1, v8

    .line 74
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v2

    const v9, 0x7f06004c

    invoke-static {v2, v9}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v9, 0x6

    aput v2, v1, v9

    .line 75
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v2

    const v10, 0x7f06004e

    invoke-static {v2, v10}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v10, 0x7

    aput v2, v1, v10

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->categoryExpenseColorArray:[I

    new-array v0, v0, [I

    .line 78
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const v2, 0x7f06004f

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 79
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const v2, 0x7f060050

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v4

    .line 80
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const v2, 0x7f060051

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v5

    .line 81
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const v2, 0x7f060052

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v6

    .line 82
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const v2, 0x7f060053

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v7

    .line 83
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const v2, 0x7f060054

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v8

    .line 84
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const v2, 0x7f060055

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v9

    .line 85
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const v2, 0x7f060057

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v10

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->categoryIncomeColorArray:[I

    return-void
.end method

.method private initView()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBinding:Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->barChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    .line 130
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBinding:Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->lineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    .line 131
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBinding:Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->pieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    .line 132
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBinding:Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->recyclerCategory:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mCategoryDataRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 133
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 134
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-direct {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mCategoryDataAdapter:Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;

    .line 135
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mCategoryDataRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 136
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mCategoryDataRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 137
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mCategoryDataRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$showDailyBarChart$7(Ljava/util/List;FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 245
    iget v1, p2, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    iget p2, p2, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    .line 250
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_1

    float-to-int p1, p1

    .line 251
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getMonth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getDayOfMonth()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method static synthetic lambda$showMonthlyLineChart$10(Landroid/util/SparseArray;Ljava/util/List;IILcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;)V
    .locals 2

    .line 316
    new-instance p2, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v0, p3

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getAmount()F

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 317
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;-><init>()V

    invoke-virtual {p0, p3, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    .line 318
    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->setMonth(Lcom/coderpage/mine/app/tally/module/chart/data/Month;)Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    move-result-object p0

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getAmount()F

    move-result p3

    float-to-double p3, p3

    invoke-virtual {p0, p3, p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->setIncomeAmount(D)Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 319
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$showMonthlyLineChart$11(Ljava/util/List;FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 0

    .line 361
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_0

    float-to-int p1, p1

    .line 362
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method static synthetic lambda$showMonthlyLineChart$9(Landroid/util/SparseArray;Ljava/util/List;IILcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;)V
    .locals 2

    .line 305
    new-instance p2, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v0, p3

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getAmount()F

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 306
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;-><init>()V

    invoke-virtual {p0, p3, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    .line 307
    invoke-virtual {p0, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->setMonth(Lcom/coderpage/mine/app/tally/module/chart/data/Month;)Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    move-result-object p0

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getAmount()F

    move-result p3

    float-to-double p3, p3

    invoke-virtual {p0, p3, p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->setExpenseAmount(D)Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 309
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$showPieChart$13(Ljava/util/List;IILcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V
    .locals 2

    .line 426
    new-instance p1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getAmount()D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getCategoryName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$showPieChart$14(Ljava/text/DecimalFormat;FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 0

    .line 444
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double p3, p1

    invoke-virtual {p0, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static open(Landroid/app/Activity;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "year",
            "month"
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_year"

    .line 123
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_month"

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showDailyBarChart(ZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isShowExpense",
            "dailyDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const p1, 0x7f060070

    .line 210
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/UIUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f06007c

    .line 211
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/UIUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 213
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    .line 215
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 216
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;

    .line 217
    new-instance v4, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v5, v2

    invoke-virtual {v3}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getAmount()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 218
    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 219
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 224
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f060058

    const/4 v6, 0x1

    if-nez v2, :cond_2

    .line 225
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v7, ""

    invoke-direct {v2, v0, v7}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const v7, -0x777778

    .line 226
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/data/BarDataSet;->setColor(I)V

    .line 227
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 228
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setFormLineWidth(F)V

    .line 229
    invoke-static {p0, v5}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/data/BarDataSet;->setBarShadowColor(I)V

    .line 230
    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->setColor(I)V

    .line 232
    new-instance p1, Lcom/github/mikephil/charting/data/BarData;

    new-array v7, v6, [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    aput-object v2, v7, v1

    invoke-direct {p1, v7}, Lcom/github/mikephil/charting/data/BarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 233
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    goto :goto_2

    :cond_2
    move-object p1, v3

    .line 236
    :goto_2
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    .line 237
    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 238
    invoke-static {p0, v5}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 239
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 240
    invoke-static {p0, v5}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/XAxis;->setGridColor(I)V

    .line 241
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 242
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 243
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$tPLrIwFrWUl6dqY5KSs6jz6GCEo;

    invoke-direct {v0, p2}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$tPLrIwFrWUl6dqY5KSs6jz6GCEo;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 258
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    .line 259
    invoke-virtual {p2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 260
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 261
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 262
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 264
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    .line 265
    invoke-virtual {p2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 266
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 267
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 268
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 270
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    .line 271
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v0, v2}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 272
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    .line 273
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 274
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 270
    invoke-virtual {p2, v0, v4, v5, v2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setViewPortOffsets(FFFF)V

    .line 275
    new-instance p2, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    const v2, 0x7f0b005e

    invoke-direct {p2, v0, v2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;-><init>(Landroid/content/Context;I)V

    .line 276
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$vsZzI6mzUGgqW6EJIl4G3uoWUCg;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$vsZzI6mzUGgqW6EJIl4G3uoWUCg;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V

    invoke-virtual {p2, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->setOnClickListener(Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {v0, v6}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setDrawMarkOnTop(Z)V

    .line 278
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {v0, p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 279
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    const v2, 0x7f0e00c5

    invoke-static {v0, v2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setNoDataText(Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    const v2, 0x7f060028

    invoke-static {v0, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setNoDataTextColor(I)V

    .line 281
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setScaleEnabled(Z)V

    .line 282
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setDrawBorders(Z)V

    .line 283
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2, v6}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setDrawBarShadow(Z)V

    .line 284
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setDrawGridBackground(Z)V

    .line 285
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setDrawValueAboveBar(Z)V

    .line 286
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2, v3}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    .line 287
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 288
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {p2, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 289
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBarChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    const/16 p2, 0x1f4

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->animateY(I)V

    return-void
.end method

.method private showMonthlyLineChart(Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthlyDataList"
        }
    .end annotation

    .line 299
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->getExpenseList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->getExpenseList()Ljava/util/List;

    move-result-object v2

    .line 304
    new-instance v3, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$Mg-pxEjXXcwzA8KrwL9c35Wh--o;

    invoke-direct {v3, v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$Mg-pxEjXXcwzA8KrwL9c35Wh--o;-><init>(Landroid/util/SparseArray;Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 312
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->getIncomeList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->getIncomeList()Ljava/util/List;

    move-result-object p1

    .line 315
    new-instance v3, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$887T_FRrowpgzsrNoVIBZzOzHsE;

    invoke-direct {v3, v0, v2}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$887T_FRrowpgzsrNoVIBZzOzHsE;-><init>(Landroid/util/SparseArray;Ljava/util/List;)V

    invoke-static {p1, v3}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 323
    :cond_1
    new-instance p1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v0, ""

    invoke-direct {p1, v1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const v3, 0x7f060070

    .line 324
    invoke-static {p0, v3}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/4 v4, 0x0

    .line 325
    invoke-virtual {p1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/4 v5, 0x0

    .line 326
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setFormLineWidth(F)V

    .line 327
    invoke-static {p0, v3}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    const/high16 v3, -0x40800000    # -1.0f

    .line 328
    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 329
    invoke-virtual {p1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    const/4 v3, 0x1

    .line 330
    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawVerticalHighlightIndicator(Z)V

    .line 331
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v6

    const v7, 0x7f060034

    invoke-static {v6, v7}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 332
    sget-object v6, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 334
    new-instance v6, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-direct {v6, v2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const v0, 0x7f06007c

    .line 335
    invoke-static {p0, v0}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 336
    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 337
    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setFormLineWidth(F)V

    .line 338
    invoke-static {p0, v0}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 339
    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 340
    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawVerticalHighlightIndicator(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 342
    sget-object v0, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_2

    move-object v7, v1

    goto :goto_0

    :cond_2
    move-object v7, v2

    .line 346
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    .line 347
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    .line 348
    invoke-virtual {v8}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object v8

    const v9, 0x7f0e00db

    new-array v10, v3, [Ljava/lang/Object;

    .line 349
    invoke-virtual {v8}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v4

    invoke-static {p0, v9, v10}, Lcom/coderpage/base/utils/UIUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_3
    iget-object v7, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v7}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v7

    .line 353
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 354
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 355
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f060027

    invoke-static {v8, v9}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 356
    sget-object v8, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const v8, 0x7f060058

    .line 357
    invoke-static {p0, v8}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 358
    invoke-virtual {v7, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 359
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 360
    new-instance v8, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$Eh9MJISBDggktyY4NYZX1PT54Xs;

    invoke-direct {v8, v0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$Eh9MJISBDggktyY4NYZX1PT54Xs;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 367
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 369
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 370
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 371
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 373
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 374
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 375
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 376
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 377
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 379
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/LineData;-><init>()V

    .line 380
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 381
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/data/LineData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 383
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 384
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 388
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    move-object v0, v1

    :cond_6
    if-eqz v0, :cond_7

    .line 392
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getXMax()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 393
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getXMin()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 396
    :cond_7
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    .line 397
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v2, v6}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 398
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v7

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v7, v8}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    .line 399
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    .line 400
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 396
    invoke-virtual {p1, v2, v7, v8, v6}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setViewPortOffsets(FFFF)V

    .line 401
    new-instance p1, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    const v6, 0x7f0b005e

    invoke-direct {p1, v2, v6}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;-><init>(Landroid/content/Context;I)V

    .line 402
    new-instance v2, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$p05QUaor5zk8FZdEYNLQVL1YcXM;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$p05QUaor5zk8FZdEYNLQVL1YcXM;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V

    invoke-virtual {p1, v2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->setOnClickListener(Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData$OnClickListener;)V

    .line 403
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v6

    const v7, 0x7f0e00c5

    invoke-static {v6, v7}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setNoDataText(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v6

    const v7, 0x7f060028

    invoke-static {v6, v7}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setNoDataTextColor(I)V

    .line 405
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v2, v3}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setDragEnabled(Z)V

    .line 406
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v2, v4}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setScaleEnabled(Z)V

    .line 407
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v2, v5, v6}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setVisibleXRange(FF)V

    .line 408
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v2, v4}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setDrawBorders(Z)V

    .line 409
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v2, v4}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setDrawGridBackground(Z)V

    .line 410
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v2, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    .line 411
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 412
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setScaleMinima(FF)V

    .line 413
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v1, v3}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setDrawMarkers(Z)V

    .line 414
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v1, v3}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setDrawMarkOnTop(Z)V

    .line 415
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v1, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 416
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 417
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mLineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->animateY(I)V

    return-void
.end method

.method private showPieChart(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "categoryDataList",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;I)V"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-virtual {v3}, Lcom/coderpage/mine/common/Font;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    new-instance v3, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$CXPd-o5rfaHevzoi6-EmHIcfAoo;

    invoke-direct {v3, v2}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$CXPd-o5rfaHevzoi6-EmHIcfAoo;-><init>(Ljava/util/List;)V

    invoke-static {p1, v3}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 429
    new-instance p1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v3, ""

    invoke-direct {p1, v2, v3}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 430
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->categoryIncomeColorArray:[I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->categoryExpenseColorArray:[I

    .line 431
    :goto_0
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors([I)V

    .line 432
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    array-length v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    aget v8, p2, v7

    .line 434
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 437
    :cond_1
    sget-object p2, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/PieDataSet;->setYValuePosition(Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;)V

    .line 438
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object p2

    const v5, 0x7f060028

    invoke-static {p2, v5}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/PieDataSet;->setValueLineColor(I)V

    .line 439
    invoke-virtual {p1, v4}, Lcom/github/mikephil/charting/data/PieDataSet;->setValueTextColors(Ljava/util/List;)V

    const/high16 p2, 0x41100000    # 9.0f

    .line 440
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/PieDataSet;->setValueTextSize(F)V

    .line 441
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/PieDataSet;->setValueTypeface(Landroid/graphics/Typeface;)V

    .line 442
    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setValueLineVariableLength(Z)V

    .line 443
    new-instance p2, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$IMszjb1O3gnV-R4KLoTu7QTdcQk;

    invoke-direct {p2, v0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$IMszjb1O3gnV-R4KLoTu7QTdcQk;-><init>(Ljava/text/DecimalFormat;)V

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/PieDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    .line 448
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 449
    new-instance p2, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {p2, p1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    goto :goto_2

    :cond_2
    move-object p2, v0

    .line 452
    :goto_2
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    const v2, 0x7f0e00c5

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setNoDataText(Ljava/lang/String;)V

    .line 453
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setNoDataTextColor(I)V

    .line 454
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setExtraTopOffset(F)V

    .line 455
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setExtraBottomOffset(F)V

    .line 456
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1, v3}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setUsePercentValues(Z)V

    .line 457
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    .line 458
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setCenterTextSize(F)V

    .line 459
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1, v6}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setDrawEntryLabels(Z)V

    .line 460
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1, v3}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setHighlightPerTapEnabled(Z)V

    .line 461
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 462
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p1

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    .line 463
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p1

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    .line 464
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p1

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    .line 465
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/components/Legend;->setWordWrapEnabled(Z)V

    .line 466
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 467
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mPieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    const/16 p2, 0x578

    sget-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutQuart:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    invoke-virtual {p1, p2, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    return-void
.end method

.method private subScribeUi()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBinding:Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->setActivity(Landroid/app/Activity;)V

    .line 142
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBinding:Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->setVm(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V

    .line 145
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getDailyExpenseList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$9eOGnjuoFO9fzHLV4CPeRooOR18;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$9eOGnjuoFO9fzHLV4CPeRooOR18;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 151
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getDailyIncomeList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$XQppFgaLKDugBMYfuds0OVToaeU;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$XQppFgaLKDugBMYfuds0OVToaeU;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 157
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getMonthlyDataList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$f6MZ7n-etheY1P0HHlKirFX_7V8;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$f6MZ7n-etheY1P0HHlKirFX_7V8;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 163
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getCategoryExpenseDataList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$Wglwseo-kXlcemvL2iliGrzIx-o;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$Wglwseo-kXlcemvL2iliGrzIx-o;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 170
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getCategoryIncomeDataList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$OFHd27ICZgHAXXth3ZTC0GvCDxw;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$OFHd27ICZgHAXXth3ZTC0GvCDxw;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 176
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getViewReliedTask()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$p24MsSqBiy9OaV6WPVYhvs9OmV0;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$p24MsSqBiy9OaV6WPVYhvs9OmV0;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPostCreate$0$TallyChartActivity(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showDailyBarChart$8$TallyChartActivity(Landroid/view/View;Lcom/github/mikephil/charting/data/Entry;)V
    .locals 1

    .line 276
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;

    invoke-virtual {p1, v0, p2}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onDailyMarkerViewClick(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;)V

    return-void
.end method

.method public synthetic lambda$showMonthlyLineChart$12$TallyChartActivity(Landroid/view/View;Lcom/github/mikephil/charting/data/Entry;)V
    .locals 1

    .line 402
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    invoke-virtual {p1, v0, p2}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onMonthlyMarkerViewClick(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;)V

    return-void
.end method

.method public synthetic lambda$subScribeUi$1$TallyChartActivity(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 147
    invoke-direct {p0, v0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->showDailyBarChart(ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subScribeUi$2$TallyChartActivity(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->showDailyBarChart(ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subScribeUi$3$TallyChartActivity(Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->showMonthlyLineChart(Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subScribeUi$4$TallyChartActivity(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mCategoryDataAdapter:Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->setDataList(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->showPieChart(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subScribeUi$5$TallyChartActivity(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mCategoryDataAdapter:Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->setDataList(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->showPieChart(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subScribeUi$6$TallyChartActivity(Lcom/coderpage/framework/ViewReliedTask;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p1, p0}, Lcom/coderpage/framework/ViewReliedTask;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b005f

    .line 100
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mBinding:Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    .line 101
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    .line 102
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 104
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->initView()V

    .line 105
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->subScribeUi()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 185
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 186
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onSelectDateClick(Landroid/app/Activity;)V

    .line 200
    :goto_0
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 111
    new-instance p1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$sm5812lPi7Y_zdjVT_blC0aRzKU;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$sm5812lPi7Y_zdjVT_blC0aRzKU;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->setToolbarAsClose(Landroid/view/View$OnClickListener;)V

    return-void
.end method
