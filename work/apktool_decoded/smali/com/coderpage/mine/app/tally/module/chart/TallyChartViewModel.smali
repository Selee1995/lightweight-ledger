.class public Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "TallyChartViewModel.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategoryDailyExpenseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryDailyIncomeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryYearlyExpenseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryYearlyIncomeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDateText:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDailyExpenseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;"
        }
    .end annotation
.end field

.field private mDailyIncomeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDailyChart:Landroidx/databinding/ObservableBoolean;

.field private mDisplayExpenseChart:Landroidx/databinding/ObservableBoolean;

.field private mEndDate:Ljava/util/Calendar;

.field private mExpenseTotalAmount:D

.field private mExpenseTotalAmountText:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomeTotalAmount:D

.field private mIncomeTotalAmountText:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftTotalAmountText:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthlyExpenseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthlyIncomeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;"
        }
    .end annotation
.end field

.field private mObservableCategoryExpenseDataList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mObservableCategoryIncomeDataList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mObservableDailyExpenseList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mObservableDailyIncomeList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mObservableMonthlyDataList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;",
            ">;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

.field private mSelectableMonthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDate:Ljava/util/Calendar;

.field private mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

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

    .line 106
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mSelectableMonthList:Ljava/util/List;

    .line 69
    new-instance p1, Landroidx/databinding/ObservableField;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCurrentDateText:Landroidx/databinding/ObservableField;

    .line 71
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mExpenseTotalAmountText:Landroidx/databinding/ObservableField;

    .line 73
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mIncomeTotalAmountText:Landroidx/databinding/ObservableField;

    .line 75
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mLeftTotalAmountText:Landroidx/databinding/ObservableField;

    .line 77
    new-instance p1, Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayDailyChart:Landroidx/databinding/ObservableBoolean;

    .line 79
    new-instance p1, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayExpenseChart:Landroidx/databinding/ObservableBoolean;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyExpenseList:Ljava/util/List;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyIncomeList:Ljava/util/List;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyExpenseList:Ljava/util/List;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyIncomeList:Ljava/util/List;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyExpenseList:Ljava/util/List;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyIncomeList:Ljava/util/List;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyExpenseList:Ljava/util/List;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyIncomeList:Ljava/util/List;

    .line 91
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableMonthlyDataList:Landroid/arch/lifecycle/MutableLiveData;

    .line 93
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableDailyExpenseList:Landroid/arch/lifecycle/MutableLiveData;

    .line 95
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableDailyIncomeList:Landroid/arch/lifecycle/MutableLiveData;

    .line 97
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryExpenseDataList:Landroid/arch/lifecycle/MutableLiveData;

    .line 99
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryIncomeDataList:Landroid/arch/lifecycle/MutableLiveData;

    .line 101
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    .line 107
    new-instance p1, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/Calendar;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/Calendar;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mEndDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyIncomeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;JJLjava/util/List;)Ljava/util/List;
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->completeEmptyMonthlyData(JJLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyExpenseList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyIncomeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyExpenseList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyIncomeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->clearData()V

    return-void
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->refreshData()V

    return-void
.end method

.method static synthetic access$400(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mSelectableMonthList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;JJLjava/util/List;)Ljava/util/List;
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->completeEmptyDailyData(JJLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyExpenseList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyIncomeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyExpenseList:Ljava/util/List;

    return-object p0
.end method

.method private clearData()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyExpenseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 297
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyIncomeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 298
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyExpenseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyIncomeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 300
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyExpenseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyIncomeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 302
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyExpenseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyIncomeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableMonthlyDataList:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableDailyExpenseList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableDailyIncomeList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryExpenseDataList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryIncomeDataList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private completeEmptyDailyData(JJLjava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startDate",
            "endDate",
            "dailyDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    .line 720
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 722
    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x1

    .line 723
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    .line 724
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v6

    const/4 v10, 0x5

    .line 725
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    .line 727
    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 728
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 729
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v12, v6

    .line 730
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    .line 733
    div-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    long-to-int v1, v0

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v7

    :goto_0
    if-gt v2, v11, :cond_6

    if-ne v7, v11, :cond_0

    move v3, v9

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-ne v2, v11, :cond_1

    move v13, v12

    goto :goto_2

    :cond_1
    const/16 v13, 0xc

    :goto_2
    if-gt v3, v13, :cond_5

    .line 744
    invoke-static {v2, v3}, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->getDaysTotalOfMonth(II)I

    move-result v14

    const/4 v15, 0x1

    :goto_3
    if-gt v15, v14, :cond_4

    if-eqz v4, :cond_2

    .line 746
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v1, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;

    goto :goto_4

    :cond_2
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_3

    .line 748
    invoke-virtual {v10}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getYear()I

    move-result v8

    if-ne v8, v2, :cond_3

    .line 749
    invoke-virtual {v10}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getMonth()I

    move-result v8

    if-ne v8, v3, :cond_3

    .line 750
    invoke-virtual {v10}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getDayOfMonth()I

    move-result v8

    if-ne v8, v15, :cond_3

    .line 751
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move/from16 v16, v9

    const/4 v10, 0x2

    goto :goto_5

    .line 754
    :cond_3
    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v8, v3, -0x1

    const/4 v10, 0x2

    .line 755
    invoke-virtual {v5, v10, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x5

    .line 756
    invoke-virtual {v5, v8, v15}, Ljava/util/Calendar;->set(II)V

    .line 757
    new-instance v6, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;

    invoke-direct {v6}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;-><init>()V

    move/from16 v16, v9

    .line 758
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setTimeMillis(J)V

    .line 759
    invoke-virtual {v6, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setYear(I)V

    .line 760
    invoke-virtual {v6, v3}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setMonth(I)V

    .line 761
    invoke-virtual {v6, v15}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setDayOfMonth(I)V

    const/4 v8, 0x0

    .line 762
    invoke-virtual {v6, v8}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->setAmount(F)V

    .line 763
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v16

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x5

    goto :goto_3

    :cond_4
    move/from16 v16, v9

    const/4 v10, 0x2

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x5

    goto :goto_2

    :cond_5
    move/from16 v16, v9

    const/4 v10, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x5

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private completeEmptyMonthlyData(JJLjava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startDate",
            "endDate",
            "monthlyDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 783
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 784
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x2

    .line 785
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p1

    .line 787
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 788
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 789
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 792
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-gt v1, p3, :cond_4

    if-ne p2, p3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    const/16 v4, 0xc

    if-gt v3, v4, :cond_3

    if-eqz p5, :cond_1

    .line 800
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    .line 802
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 803
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 804
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getMonth()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 805
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 808
    :cond_2
    new-instance v4, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;

    invoke-direct {v4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;-><init>()V

    .line 809
    new-instance v5, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-direct {v5, v1, v3}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->setMonth(Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V

    const/4 v5, 0x0

    .line 810
    invoke-virtual {v4, v5}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->setAmount(F)V

    .line 811
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p4
.end method

.method private displayDailyExpenseAmountTotal()V
    .locals 11

    .line 619
    new-instance v0, Lcom/coderpage/base/utils/WrappedLong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coderpage/base/utils/WrappedLong;-><init>(I)V

    .line 620
    new-instance v2, Lcom/coderpage/base/utils/WrappedObject;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coderpage/base/utils/WrappedObject;-><init>(Ljava/lang/Object;)V

    .line 621
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyExpenseList:Ljava/util/List;

    new-instance v4, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$Y18WHYR4TSWZ67VxkFg2m94BkZ4;

    invoke-direct {v4, v2, v0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$Y18WHYR4TSWZ67VxkFg2m94BkZ4;-><init>(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;)V

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 626
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 627
    iget-object v5, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 628
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u00a5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 629
    iget-object v8, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCurrentDateText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getApplication()Landroid/app/Application;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v4

    const v3, 0x7f0e00c2

    invoke-static {v9, v3, v10}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 630
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mExpenseTotalAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getApplication()Landroid/app/Application;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/coderpage/base/utils/WrappedLong;->get()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v1

    aput-object v7, v6, v4

    const v0, 0x7f0e00cf

    invoke-static {v5, v0, v6}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 632
    invoke-virtual {v2}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mExpenseTotalAmount:D

    .line 633
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->displayLeftAmountTotal()V

    return-void
.end method

.method private displayDailyIncomeAmountTotal()V
    .locals 11

    .line 638
    new-instance v0, Lcom/coderpage/base/utils/WrappedLong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coderpage/base/utils/WrappedLong;-><init>(I)V

    .line 639
    new-instance v2, Lcom/coderpage/base/utils/WrappedObject;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coderpage/base/utils/WrappedObject;-><init>(Ljava/lang/Object;)V

    .line 640
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyIncomeList:Ljava/util/List;

    new-instance v4, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$eGKA_9nMlHrWujDyUkYkPhIVGUc;

    invoke-direct {v4, v2, v0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$eGKA_9nMlHrWujDyUkYkPhIVGUc;-><init>(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;)V

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 645
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 646
    iget-object v5, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 647
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u00a5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 648
    iget-object v8, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCurrentDateText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getApplication()Landroid/app/Application;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v4

    const v3, 0x7f0e00c2

    invoke-static {v9, v3, v10}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 649
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mIncomeTotalAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getApplication()Landroid/app/Application;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/coderpage/base/utils/WrappedLong;->get()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v1

    aput-object v7, v6, v4

    const v0, 0x7f0e00d3

    invoke-static {v5, v0, v6}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 651
    invoke-virtual {v2}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mIncomeTotalAmount:D

    .line 652
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->displayLeftAmountTotal()V

    return-void
.end method

.method private displayLeftAmountTotal()V
    .locals 9

    .line 696
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mIncomeTotalAmount:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 697
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mLeftTotalAmountText:Landroidx/databinding/ObservableField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void

    .line 701
    :cond_0
    iget-wide v4, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mExpenseTotalAmount:D

    sub-double/2addr v0, v4

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u00a5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 703
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getApplication()Landroid/app/Application;

    move-result-object v5

    const v6, 0x7f0e00d4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_1

    .line 705
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mLeftTotalAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0, v4}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->wrapIncome(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mLeftTotalAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0, v4}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->wrapExpense(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private displayMonthlyExpenseAmountTotal()V
    .locals 10

    .line 657
    new-instance v0, Lcom/coderpage/base/utils/WrappedLong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coderpage/base/utils/WrappedLong;-><init>(I)V

    .line 658
    new-instance v2, Lcom/coderpage/base/utils/WrappedObject;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coderpage/base/utils/WrappedObject;-><init>(Ljava/lang/Object;)V

    .line 659
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyExpenseList:Ljava/util/List;

    new-instance v4, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$1Kwh3kxkL_gvXfnw4V_OPsmb6aU;

    invoke-direct {v4, v2, v0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$1Kwh3kxkL_gvXfnw4V_OPsmb6aU;-><init>(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;)V

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 664
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 665
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u00a5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 666
    iget-object v6, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCurrentDateText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getApplication()Landroid/app/Application;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    const v3, 0x7f0e00c3

    invoke-static {v7, v3, v8}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 667
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mExpenseTotalAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getApplication()Landroid/app/Application;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/coderpage/base/utils/WrappedLong;->get()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v1

    aput-object v5, v7, v4

    const v0, 0x7f0e00cf

    invoke-static {v6, v0, v7}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 669
    invoke-virtual {v2}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mExpenseTotalAmount:D

    .line 670
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->displayLeftAmountTotal()V

    return-void
.end method

.method private displayMonthlyIncomeAmountTotal()V
    .locals 10

    .line 675
    new-instance v0, Lcom/coderpage/base/utils/WrappedLong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coderpage/base/utils/WrappedLong;-><init>(I)V

    .line 676
    new-instance v2, Lcom/coderpage/base/utils/WrappedObject;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coderpage/base/utils/WrappedObject;-><init>(Ljava/lang/Object;)V

    .line 677
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyIncomeList:Ljava/util/List;

    new-instance v4, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$qaCufusMYNrSGuUoBdmt2WmBqao;

    invoke-direct {v4, v2, v0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$qaCufusMYNrSGuUoBdmt2WmBqao;-><init>(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;)V

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 682
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u00a5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 684
    iget-object v6, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCurrentDateText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getApplication()Landroid/app/Application;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    const v3, 0x7f0e00c3

    invoke-static {v7, v3, v8}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 685
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mIncomeTotalAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getApplication()Landroid/app/Application;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/coderpage/base/utils/WrappedLong;->get()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v1

    aput-object v5, v7, v4

    const v0, 0x7f0e00d3

    invoke-static {v6, v0, v7}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 687
    invoke-virtual {v2}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mIncomeTotalAmount:D

    .line 688
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->displayLeftAmountTotal()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$2;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$2;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->queryFirstRecordTime(Lcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method static synthetic lambda$displayDailyExpenseAmountTotal$7(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;IILcom/coderpage/mine/app/tally/module/chart/data/DailyData;)V
    .locals 2

    .line 622
    invoke-virtual {p0}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getAmount()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coderpage/base/utils/WrappedObject;->set(Ljava/lang/Object;)V

    .line 623
    invoke-virtual {p1}, Lcom/coderpage/base/utils/WrappedLong;->get()J

    move-result-wide p2

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getCount()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/coderpage/base/utils/WrappedLong;->set(J)V

    return-void
.end method

.method static synthetic lambda$displayDailyIncomeAmountTotal$8(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;IILcom/coderpage/mine/app/tally/module/chart/data/DailyData;)V
    .locals 2

    .line 641
    invoke-virtual {p0}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getAmount()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coderpage/base/utils/WrappedObject;->set(Ljava/lang/Object;)V

    .line 642
    invoke-virtual {p1}, Lcom/coderpage/base/utils/WrappedLong;->get()J

    move-result-wide p2

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getCount()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/coderpage/base/utils/WrappedLong;->set(J)V

    return-void
.end method

.method static synthetic lambda$displayMonthlyExpenseAmountTotal$9(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;IILcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;)V
    .locals 2

    .line 660
    invoke-virtual {p0}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getAmount()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coderpage/base/utils/WrappedObject;->set(Ljava/lang/Object;)V

    .line 661
    invoke-virtual {p1}, Lcom/coderpage/base/utils/WrappedLong;->get()J

    move-result-wide p2

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getCount()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/coderpage/base/utils/WrappedLong;->set(J)V

    return-void
.end method

.method static synthetic lambda$displayMonthlyIncomeAmountTotal$10(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;IILcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;)V
    .locals 2

    .line 678
    invoke-virtual {p0}, Lcom/coderpage/base/utils/WrappedObject;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getAmount()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coderpage/base/utils/WrappedObject;->set(Ljava/lang/Object;)V

    .line 679
    invoke-virtual {p1}, Lcom/coderpage/base/utils/WrappedLong;->get()J

    move-result-wide p2

    invoke-virtual {p4}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getCount()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/coderpage/base/utils/WrappedLong;->set(J)V

    return-void
.end method

.method static synthetic lambda$onCategoryDataItemClick$0(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;Landroid/app/Activity;)V
    .locals 3

    .line 237
    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;-><init>()V

    .line 238
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getStartDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setStartTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getEndDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setEndTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setType(I)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setCategoryUniqueNameArray([Ljava/lang/String;)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->build()Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    move-result-object p0

    .line 237
    invoke-static {p1, p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->open(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/records/RecordQuery;)V

    return-void
.end method

.method static synthetic lambda$refreshData$1(Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;)Z
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getAmount()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$refreshData$2(Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;)Z
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getAmount()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$refreshData$4(Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;)Z
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getAmount()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$refreshData$5(Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;)Z
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->getAmount()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSelectAsDailyChartClick()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayDailyChart:Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 255
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->refreshData()V

    return-void
.end method

.method private onSelectAsYearChartClick()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayDailyChart:Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 249
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->refreshData()V

    return-void
.end method

.method private queryDailyData(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 19
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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 377
    iget-object v0, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 378
    iget-object v0, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 381
    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v15, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 384
    iget-object v0, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyExpenseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v8, 0x0

    const/4 v7, 0x4

    if-nez v0, :cond_1

    .line 385
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 386
    invoke-interface {v10, v8}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    :cond_0
    const/4 v10, 0x4

    goto :goto_0

    .line 389
    :cond_1
    iget-object v6, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    new-instance v16, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$3;

    const/16 v17, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v4, v13

    move-object/from16 v18, v6

    move-object v6, v15

    const/4 v10, 0x4

    move/from16 v7, v17

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$3;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;JJLjava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V

    move-object/from16 v1, v18

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->queryDailyExpense(JJLcom/coderpage/base/common/Callback;)V

    .line 412
    :goto_0
    iget-object v0, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyIncomeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 413
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v10, :cond_2

    move-object/from16 v10, p1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 414
    invoke-interface {v10, v8}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object/from16 v10, p1

    const/4 v7, 0x4

    :goto_1
    const/4 v10, 0x4

    goto :goto_2

    :cond_3
    move-object/from16 v10, p1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 417
    iget-object v6, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    new-instance v16, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;

    const/16 v17, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v4, v13

    move-object/from16 v18, v6

    move-object v6, v15

    const/4 v10, 0x4

    move/from16 v7, v17

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;JJLjava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V

    move-object/from16 v1, v18

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->queryDailyInCome(JJLcom/coderpage/base/common/Callback;)V

    .line 439
    :goto_2
    iget-object v0, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyExpenseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 440
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v10, :cond_4

    move-object/from16 v0, p1

    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 441
    invoke-interface {v0, v7}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    const/4 v7, 0x0

    const/4 v8, 0x4

    goto :goto_3

    :cond_5
    move-object/from16 v0, p1

    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 444
    iget-object v1, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    new-instance v6, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$5;

    invoke-direct {v6, v9, v15, v8, v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$5;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V

    move-wide v2, v11

    move-wide v4, v13

    invoke-virtual/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->queryCategoryExpense(JJLcom/coderpage/base/common/Callback;)V

    .line 467
    :goto_3
    iget-object v1, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyIncomeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 468
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-ne v1, v8, :cond_7

    .line 469
    invoke-interface {v0, v7}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 472
    :cond_6
    iget-object v1, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    new-instance v6, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$6;

    invoke-direct {v6, v9, v15, v8, v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$6;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V

    move-wide v2, v11

    move-wide v4, v13

    invoke-virtual/range {v1 .. v6}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->queryCategoryIncome(JJLcom/coderpage/base/common/Callback;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private queryYearlyData(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 19
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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 497
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 498
    iget-object v1, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v5, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 499
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->yearDateRange(I)Landroid/util/Pair;

    move-result-object v0

    .line 500
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 501
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 504
    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v15, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 507
    iget-object v0, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyExpenseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v8, 0x0

    const/4 v7, 0x4

    if-nez v0, :cond_1

    .line 508
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 509
    invoke-interface {v10, v8}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    :cond_0
    const/4 v10, 0x4

    goto :goto_0

    .line 512
    :cond_1
    iget-object v6, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    new-instance v16, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$7;

    const/16 v17, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v4, v13

    move-object/from16 v18, v6

    move-object v6, v15

    const/4 v10, 0x4

    move/from16 v7, v17

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$7;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;JJLjava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V

    move-object/from16 v2, v18

    move-wide v3, v11

    move-wide v5, v13

    move-object/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->queryMonthlyExpense(JJLcom/coderpage/base/common/Callback;)V

    .line 534
    :goto_0
    iget-object v0, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyIncomeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 535
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v10, :cond_2

    move-object/from16 v10, p1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 536
    invoke-interface {v10, v8}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object/from16 v10, p1

    const/4 v7, 0x4

    :goto_1
    const/4 v10, 0x4

    goto :goto_2

    :cond_3
    move-object/from16 v10, p1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 539
    iget-object v6, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    new-instance v16, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;

    const/16 v17, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v4, v13

    move-object/from16 v18, v6

    move-object v6, v15

    const/4 v10, 0x4

    move/from16 v7, v17

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;JJLjava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V

    move-object/from16 v2, v18

    move-wide v3, v11

    move-wide v5, v13

    move-object/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->queryMonthlyIncome(JJLcom/coderpage/base/common/Callback;)V

    .line 561
    :goto_2
    iget-object v0, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyExpenseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 562
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v10, :cond_4

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v8, 0x4

    .line 563
    invoke-interface {v0, v1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v8, 0x4

    goto :goto_3

    :cond_5
    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v8, 0x4

    .line 566
    iget-object v2, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    new-instance v7, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;

    invoke-direct {v7, v9, v15, v8, v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V

    move-wide v3, v11

    move-wide v5, v13

    invoke-virtual/range {v2 .. v7}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->queryCategoryExpense(JJLcom/coderpage/base/common/Callback;)V

    .line 589
    :goto_3
    iget-object v2, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyIncomeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 590
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    if-ne v2, v8, :cond_7

    .line 591
    invoke-interface {v0, v1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 594
    :cond_6
    iget-object v2, v9, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;

    new-instance v7, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$10;

    invoke-direct {v7, v9, v15, v8, v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$10;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V

    move-wide v3, v11

    move-wide v5, v13

    invoke-virtual/range {v2 .. v7}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->queryCategoryIncome(JJLcom/coderpage/base/common/Callback;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private refreshData()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayDailyChart:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    .line 314
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayExpenseChart:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v1

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$_hx3aeyN1bnble7d012Lvvt86F0;

    invoke-direct {v0, p0, v1}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$_hx3aeyN1bnble7d012Lvvt86F0;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;Z)V

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->queryDailyData(Lcom/coderpage/base/common/SimpleCallback;)V

    goto :goto_0

    .line 343
    :cond_0
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$2cqVOYMUy0h7Zit5QRZSKisHKNg;

    invoke-direct {v0, p0, v1}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$2cqVOYMUy0h7Zit5QRZSKisHKNg;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;Z)V

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->queryYearlyData(Lcom/coderpage/base/common/SimpleCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public formatCategoryDataAmount(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u00a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getCategoryExpenseDataList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryExpenseDataList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getCategoryIncomeDataList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;>;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryIncomeDataList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCurrentDateText()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCurrentDateText:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method getDailyExpenseList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableDailyExpenseList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getDailyIncomeList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableDailyIncomeList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDisplayDailyChart()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayDailyChart:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getDisplayExpenseChart()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayExpenseChart:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getExpenseTotalAmountText()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mExpenseTotalAmountText:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getIncomeTotalAmountText()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mIncomeTotalAmountText:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getLeftTotalAmountText()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mLeftTotalAmountText:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method getMonthlyDataList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableMonthlyDataList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getViewReliedTask()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$refreshData$3$TallyChartViewModel(ZLjava/lang/Void;)V
    .locals 2

    .line 320
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyExpenseList:Ljava/util/List;

    sget-object v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$NCazF2n7DQ1nhsYb3v7d4TogddY;->INSTANCE:Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$NCazF2n7DQ1nhsYb3v7d4TogddY;

    invoke-static {p2, v0}, Lcom/coderpage/base/utils/ArrayUtils;->contains(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Z

    move-result p2

    .line 321
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyIncomeList:Ljava/util/List;

    sget-object v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$z3B4uyZkYWU1M6NMl8nFndt3nUU;->INSTANCE:Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$z3B4uyZkYWU1M6NMl8nFndt3nUU;

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->contains(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Z

    move-result v0

    if-nez p2, :cond_0

    .line 324
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyExpenseList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    if-nez v0, :cond_1

    .line 328
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyIncomeList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    .line 331
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableDailyExpenseList:Landroid/arch/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyExpenseList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 332
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryExpenseDataList:Landroid/arch/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyExpenseList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableDailyIncomeList:Landroid/arch/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDailyIncomeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 335
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryIncomeDataList:Landroid/arch/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryDailyIncomeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 339
    :goto_0
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->displayDailyExpenseAmountTotal()V

    .line 340
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->displayDailyIncomeAmountTotal()V

    return-void
.end method

.method public synthetic lambda$refreshData$6$TallyChartViewModel(ZLjava/lang/Void;)V
    .locals 2

    .line 345
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyExpenseList:Ljava/util/List;

    sget-object v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$vDtI2aWrhFpbX0X-rxP8rPNqVHs;->INSTANCE:Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$vDtI2aWrhFpbX0X-rxP8rPNqVHs;

    invoke-static {p2, v0}, Lcom/coderpage/base/utils/ArrayUtils;->contains(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Z

    move-result p2

    .line 346
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyIncomeList:Ljava/util/List;

    sget-object v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$UF7ubh7DS5yyDQ-Tdyfl8o6_E3o;->INSTANCE:Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$UF7ubh7DS5yyDQ-Tdyfl8o6_E3o;

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->contains(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Z

    move-result v0

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 349
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyExpenseList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 350
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyIncomeList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 353
    :cond_0
    new-instance p2, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;

    invoke-direct {p2}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;-><init>()V

    .line 354
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyExpenseList:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->setExpenseList(Ljava/util/List;)V

    .line 355
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mMonthlyIncomeList:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->setIncomeList(Ljava/util/List;)V

    .line 356
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableMonthlyDataList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 360
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryExpenseDataList:Landroid/arch/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyExpenseList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mObservableCategoryIncomeDataList:Landroid/arch/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mCategoryYearlyIncomeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 365
    :goto_0
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->displayMonthlyExpenseAmountTotal()V

    .line 366
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->displayMonthlyIncomeAmountTotal()V

    return-void
.end method

.method public onCategoryDataItemClick(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryData"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$bpc1Ds3w5QKfrX91BPgBw8YmwZo;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$bpc1Ds3w5QKfrX91BPgBw8YmwZo;-><init>(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 5
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 821
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_year"

    const/4 v1, -0x1

    .line 822
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "extra_month"

    .line 823
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 826
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    .line 827
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mEndDate:Ljava/util/Calendar;

    .line 829
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 830
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    if-lez v0, :cond_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    move p1, v3

    .line 836
    :goto_0
    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->monthDateRange(II)Landroid/util/Pair;

    move-result-object p1

    .line 839
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 840
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mEndDate:Ljava/util/Calendar;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 843
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->init()V

    .line 844
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->refreshData()V

    return-void
.end method

.method onDailyMarkerViewClick(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "dailyData"
        }
    .end annotation

    .line 185
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getMonth()I

    move-result v1

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getDayOfMonth()I

    move-result p2

    .line 184
    invoke-static {v0, v1, p2}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->dayDateRange(III)Landroid/util/Pair;

    move-result-object p2

    .line 186
    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayExpenseChart:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setType(I)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setStartTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    .line 189
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setEndTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object p2

    .line 190
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->build()Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    move-result-object p2

    .line 191
    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->open(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/records/RecordQuery;)V

    return-void
.end method

.method onMonthlyMarkerViewClick(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "monthlyData"
        }
    .end annotation

    .line 197
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getMonth()I

    move-result p2

    .line 196
    invoke-static {v0, p2}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->monthDateRange(II)Landroid/util/Pair;

    move-result-object p2

    .line 198
    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayExpenseChart:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setType(I)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 200
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setStartTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object v0

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    .line 201
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->setEndTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;

    move-result-object p2

    .line 202
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->build()Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    move-result-object p2

    .line 203
    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->open(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/records/RecordQuery;)V

    return-void
.end method

.method public onSelectAsExpenseChartClick()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayExpenseChart:Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 214
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->refreshData()V

    return-void
.end method

.method public onSelectAsIncomeChartClick()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayExpenseChart:Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 220
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->refreshData()V

    return-void
.end method

.method onSelectDateClick(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->setYear(I)V

    .line 166
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mStartDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->setMonth(I)V

    .line 168
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mSelectableMonthList:Ljava/util/List;

    new-instance v3, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$1;

    invoke-direct {v3, p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V

    .line 179
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->show()V

    return-void
.end method

.method public onSwitchChartModelClick()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->mDisplayDailyChart:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onSelectAsYearChartClick()V

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onSelectAsDailyChartClick()V

    :goto_0
    return-void
.end method
