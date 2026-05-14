.class public Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "CategorySortViewModel.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# instance fields
.field private mCategoryList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

.field private mType:I

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
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mType:I

    .line 34
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    .line 35
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    .line 39
    new-instance p1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    return-void
.end method

.method static synthetic lambda$onDrag2OrderClick$2(IILcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 0

    .line 78
    invoke-virtual {p2, p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setOrder(I)V

    return-void
.end method

.method static synthetic lambda$onSaveClick$0(IILcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 0

    .line 54
    invoke-virtual {p2, p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setOrder(I)V

    return-void
.end method

.method private refreshData()V
    .locals 3

    .line 87
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mType:I

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$hKZz2LGdx1xkUCu0APK--KOv8MI;

    invoke-direct {v2, v1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$hKZz2LGdx1xkUCu0APK--KOv8MI;-><init>(Landroid/arch/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->loadAllExpenseCategory(Lcom/coderpage/base/common/SimpleCallback;)V

    .line 90
    :cond_0
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$hKZz2LGdx1xkUCu0APK--KOv8MI;

    invoke-direct {v2, v1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$hKZz2LGdx1xkUCu0APK--KOv8MI;-><init>(Landroid/arch/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->loadAllIncomeCategory(Lcom/coderpage/base/common/SimpleCallback;)V

    :cond_1
    return-void
.end method


# virtual methods
.method getCategoryList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

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

    .line 47
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$onDrag2OrderClick$3$CategorySortViewModel(Ljava/lang/Void;)V
    .locals 2

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;

    iget v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mType:I

    invoke-direct {v0, v1}, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onSaveClick$1$CategorySortViewModel(Ljava/lang/Void;)V
    .locals 2

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;

    iget v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mType:I

    invoke-direct {v0, v1}, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    sget-object v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$cIU-dZaqX9d8Oj5LNlEAn2zzMEk;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$cIU-dZaqX9d8Oj5LNlEAn2zzMEk;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 2
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

    .line 97
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_category_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mType:I

    .line 99
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->refreshData()V

    return-void
.end method

.method public onDrag2OrderClick()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    sget-object v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$Kfy2-Q8Su-bgp-XevfPDR8jQE_I;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$Kfy2-Q8Su-bgp-XevfPDR8jQE_I;

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 80
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$QowXuP1dykmsHrZj-Aa1jXUBayg;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$QowXuP1dykmsHrZj-Aa1jXUBayg;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->updateCategoryOrder(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method onItemSwap(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromPosition",
            "toPosition"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 71
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onSaveClick()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 53
    sget-object v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$W4Oqx4xtaZLU-PhNPT5r73BMOqY;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$W4Oqx4xtaZLU-PhNPT5r73BMOqY;

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 56
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$cJWayipfE8btRjsZzZW4opNwIZc;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$cJWayipfE8btRjsZzZW4opNwIZc;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->updateCategoryOrder(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method
