.class public Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;
.super Landroid/arch/lifecycle/AndroidViewModel;
.source "RecordViewModel.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# instance fields
.field private mActivityRelayTask:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAmount:D

.field private mAmountFormat:Ljava/text/DecimalFormat;

.field private mAmountText:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAmountUnit:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/edit/model/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCategorySettingItem:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

.field private mCurrentSelectCategory:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/coderpage/mine/app/tally/module/edit/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mDate:J

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDateText:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDesc:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;

.field private mRecordId:J

.field private mRepository:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

.field private mType:Lcom/coderpage/mine/app/tally/common/RecordType;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 62
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountFormat:Ljava/text/DecimalFormat;

    .line 74
    new-instance v0, Landroidx/databinding/ObservableField;

    const-string v1, "\u00a5"

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountUnit:Landroidx/databinding/ObservableField;

    .line 76
    new-instance v0, Landroidx/databinding/ObservableField;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    .line 78
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDesc:Landroidx/databinding/ObservableField;

    .line 80
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDateText:Landroidx/databinding/ObservableField;

    .line 82
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCurrentSelectCategory:Landroid/arch/lifecycle/MutableLiveData;

    .line 84
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    .line 86
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mActivityRelayTask:Landroid/arch/lifecycle/MutableLiveData;

    .line 90
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;-><init>()V

    const-string v1, "com.coderpage.mine.ic.category_setting"

    .line 91
    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setIcon(Ljava/lang/String;)V

    const v1, 0x7f0e009d

    .line 92
    invoke-static {p1, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setName(Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-direct {v1, v0}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategorySettingItem:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0031

    invoke-static {p1, v2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " HH:mm"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 97
    new-instance p1, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    .line 98
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDate:J

    .line 100
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDateText:Landroidx/databinding/ObservableField;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDate:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)Landroidx/databinding/ObservableField;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDesc:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDate:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;J)J
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDate:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)Landroidx/databinding/ObservableField;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDateText:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method private initData()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$YzB5kmEMl8M1eFyqajqu33iciXc;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$YzB5kmEMl8M1eFyqajqu33iciXc;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->queryAllCategory(Lcom/coderpage/mine/app/tally/common/RecordType;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method static synthetic lambda$setRecordId$1(Ljava/lang/String;Lcom/coderpage/mine/app/tally/module/edit/model/Category;)Z
    .locals 0

    .line 263
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private makeCategorySelect(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "categoryUniqueName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/edit/model/Category;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 366
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    .line 367
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 368
    invoke-virtual {v1, v2}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->setSelect(Z)V

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 374
    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->setSelect(Z)V

    .line 375
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCurrentSelectCategory:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private refreshCategoryList()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$iMOHmFgFgtwu-1gmLJVGusMyynM;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$iMOHmFgFgtwu-1gmLJVGusMyynM;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->queryAllCategory(Lcom/coderpage/mine/app/tally/common/RecordType;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method private saveData()V
    .locals 7

    .line 321
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCurrentSelectCategory:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "no category"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_2

    .line 332
    :cond_2
    new-instance v2, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V

    .line 333
    iget-object v5, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    sget-object v6, Lcom/coderpage/mine/app/tally/common/RecordType;->EXPENSE:Lcom/coderpage/mine/app/tally/common/RecordType;

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 334
    invoke-static {}, Lcom/coderpage/mine/utils/AndroidUtils;->generateUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 336
    :goto_2
    iget-wide v5, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmount:D

    invoke-virtual {v2, v5, v6}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 337
    iget-wide v5, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDate:J

    invoke-virtual {v2, v5, v6}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 338
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDesc:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ""

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDesc:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    .line 344
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$SoWA_Z0uQasQ3wzvfw_XiyWJdbs;

    invoke-direct {v1, p0, v2}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$SoWA_Z0uQasQ3wzvfw_XiyWJdbs;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-virtual {v0, v2, v1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->saveRecord(Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/SimpleCallback;)V

    goto :goto_4

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$UdnUREpHEdepWcmR5HPOJyMzRPU;

    invoke-direct {v1, p0, v2}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$UdnUREpHEdepWcmR5HPOJyMzRPU;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-virtual {v0, v2, v1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->updateExpense(Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/SimpleCallback;)V

    :goto_4
    return-void
.end method

.method private setRecordId(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordId"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 249
    :cond_0
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRecordId:J

    .line 250
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$b0wN2FEpDQakAGSMmZkuOr-b8kE;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$b0wN2FEpDQakAGSMmZkuOr-b8kE;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->queryRecordById(JLcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method


# virtual methods
.method getActivityRelayTask()Landroid/arch/lifecycle/LiveData;
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

    .line 128
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mActivityRelayTask:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAmountText()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getAmountUnit()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountUnit:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method getCategoryList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/edit/model/Category;",
            ">;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getCurrentSelectCategory()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/coderpage/mine/app/tally/module/edit/model/Category;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCurrentSelectCategory:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDateText()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDateText:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getDesc()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDesc:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public synthetic lambda$initData$3$RecordViewModel(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 274
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 279
    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-direct {v2, v1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategorySettingItem:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 285
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 286
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    .line 287
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->makeCategorySelect(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :cond_2
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->makeCategorySelect(Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$onCategoryClick$0$RecordViewModel(Landroid/app/Activity;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    sget-object v1, Lcom/coderpage/mine/app/tally/common/RecordType;->EXPENSE:Lcom/coderpage/mine/app/tally/common/RecordType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 136
    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->open(Landroid/content/Context;I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    sget-object v1, Lcom/coderpage/mine/app/tally/common/RecordType;->INCOME:Lcom/coderpage/mine/app/tally/common/RecordType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 139
    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->open(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$refreshCategoryList$4$RecordViewModel(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 298
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 301
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 302
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 303
    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-direct {v2, v1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 308
    sget-object v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RqpgrspuXZ4_JVsq9DM5fJLS33k;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RqpgrspuXZ4_JVsq9DM5fJLS33k;

    invoke-static {p1, v1}, Lcom/coderpage/base/utils/ArrayUtils;->findFirst(Ljava/util/Collection;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    if-eqz p1, :cond_3

    .line 309
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 310
    :cond_2
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, ""

    .line 313
    :goto_2
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategorySettingItem:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 315
    invoke-direct {p0, v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->makeCategorySelect(Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public synthetic lambda$saveData$5$RecordViewModel(Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/Result;)V
    .locals 2

    .line 345
    invoke-virtual {p2}, Lcom/coderpage/base/common/Result;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p2}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 347
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/coderpage/mine/app/tally/eventbus/EventRecordAdd;

    invoke-direct {v0, p1}, Lcom/coderpage/mine/app/tally/eventbus/EventRecordAdd;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 348
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mActivityRelayTask:Landroid/arch/lifecycle/MutableLiveData;

    sget-object p2, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$7506_fL9kl_C5bNErxeatE1RidI;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$7506_fL9kl_C5bNErxeatE1RidI;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$saveData$6$RecordViewModel(Lcom/coderpage/mine/app/tally/persistence/model/Record;Lcom/coderpage/base/common/Result;)V
    .locals 1

    .line 353
    invoke-virtual {p2}, Lcom/coderpage/base/common/Result;->isOk()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 354
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;

    invoke-direct {v0, p1}, Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 355
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mActivityRelayTask:Landroid/arch/lifecycle/MutableLiveData;

    sget-object p2, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$7506_fL9kl_C5bNErxeatE1RidI;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$7506_fL9kl_C5bNErxeatE1RidI;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setRecordId$2$RecordViewModel(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 255
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmount:D

    .line 256
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDate:J

    .line 257
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDesc:Landroidx/databinding/ObservableField;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 258
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDateText:Landroidx/databinding/ObservableField;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDate:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 259
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountFormat:Ljava/text/DecimalFormat;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmount:D

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coderpage/base/utils/CommonUtils;->removeOddDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 261
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$B-0B_qaYZ7SoWG2tI28UvpiODP8;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$B-0B_qaYZ7SoWG2tI28UvpiODP8;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->findFirst(Ljava/util/Collection;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    if-eqz p1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCurrentSelectCategory:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onCategoryClick(Lcom/coderpage/mine/app/tally/module/edit/model/Category;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategorySettingItem:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    if-ne p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mActivityRelayTask:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$vx9O3p2_HQTu3b6hOR7S3oNcmoc;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$vx9O3p2_HQTu3b6hOR7S3oNcmoc;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->makeCategorySelect(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onClearClick()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 222
    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmount:D

    return-void
.end method

.method public onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 4
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

    .line 385
    check-cast p1, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;

    .line 386
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_record_id"

    const-wide/16 v1, -0x1

    .line 387
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "extra_record_type"

    .line 388
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/common/RecordType;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    .line 389
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mCategorySettingItem:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object p1

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    sget-object v3, Lcom/coderpage/mine/app/tally/common/RecordType;->EXPENSE:Lcom/coderpage/mine/app/tally/common/RecordType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setType(I)V

    .line 391
    invoke-direct {p0, v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->setRecordId(J)V

    .line 392
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->initData()V

    .line 394
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDateClick(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 174
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDate:J

    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$2;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$2;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    invoke-static {p1, v0, v1, v2}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils;->showDatePickDialog(Landroid/app/Activity;JLcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V

    return-void
.end method

.method public onDeleteClick()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 209
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "0"

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {v1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 216
    invoke-static {v0, v1}, Lcom/coderpage/base/utils/CommonUtils;->string2float(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmount:D

    return-void
.end method

.method public onDescClick(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mDesc:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f0e00b5

    .line 151
    invoke-static {p1, v2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->setTitle(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;

    move-result-object v1

    const v2, 0x7f0e00d0

    .line 152
    invoke-static {p1, v2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->setHint(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->setContent(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$1;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;Landroid/app/Activity;)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->setListener(Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;)Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->setCanceledOnTouchOutside(Z)V

    .line 169
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->show()V

    return-void
.end method

.method public onDestroy(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 399
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDotClick()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, "."

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {v1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 233
    invoke-static {v0, v1}, Lcom/coderpage/base/utils/CommonUtils;->string2float(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmount:D

    return-void
.end method

.method public onEnterClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Lcom/coderpage/base/utils/CommonUtils;->isViewFastDoubleClick(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->saveData()V

    return-void
.end method

.method public onEventAddCategory(Lcom/coderpage/mine/app/tally/eventbus/EventCategoryAdd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 404
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->refreshCategoryList()V

    return-void
.end method

.method public onEventCategoryOrderChange(Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 419
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;->getCategoryType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    sget-object v1, Lcom/coderpage/mine/app/tally/common/RecordType;->EXPENSE:Lcom/coderpage/mine/app/tally/common/RecordType;

    if-ne v0, v1, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->refreshCategoryList()V

    .line 422
    :cond_0
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;->getCategoryType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    sget-object v0, Lcom/coderpage/mine/app/tally/common/RecordType;->INCOME:Lcom/coderpage/mine/app/tally/common/RecordType;

    if-ne p1, v0, :cond_1

    .line 423
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->refreshCategoryList()V

    :cond_1
    return-void
.end method

.method public onEventDeleteCategory(Lcom/coderpage/mine/app/tally/eventbus/EventCategoryDelete;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 414
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->refreshCategoryList()V

    return-void
.end method

.method public onEventUpdateCategory(Lcom/coderpage/mine/app/tally/eventbus/EventCategoryUpdate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 409
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->refreshCategoryList()V

    return-void
.end method

.method public onNumberClick(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    const-string v1, "0"

    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 200
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmountText:Landroidx/databinding/ObservableField;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 202
    invoke-static {p1, v0}, Lcom/coderpage/base/utils/CommonUtils;->string2float(Ljava/lang/String;F)F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->mAmount:D

    return-void
.end method
