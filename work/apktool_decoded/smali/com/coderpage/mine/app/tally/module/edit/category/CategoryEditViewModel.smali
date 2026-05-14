.class public Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "CategoryEditViewModel.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# instance fields
.field private mCategoryIcon:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryIconList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCategoryId:J

.field private mCategoryName:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

.field private mToolbarTitle:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Landroidx/databinding/ObservableInt;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    .line 38
    new-instance p1, Landroidx/databinding/ObservableInt;

    invoke-direct {p1}, Landroidx/databinding/ObservableInt;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mType:Landroidx/databinding/ObservableInt;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryId:J

    .line 44
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryName:Landroidx/databinding/ObservableField;

    .line 46
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryIcon:Landroidx/databinding/ObservableField;

    .line 48
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryIconList:Landroid/arch/lifecycle/MutableLiveData;

    .line 50
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mToolbarTitle:Landroid/arch/lifecycle/MutableLiveData;

    .line 51
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    .line 79
    new-instance p1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    return-void
.end method

.method private addCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uniqueName",
            "icon",
            "name"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mType:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    new-instance v5, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->addCategory(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method private init()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryIconList:Landroid/arch/lifecycle/MutableLiveData;

    sget-object v1, Lcom/coderpage/mine/app/tally/data/CategoryIconHelper;->ALL_ICON:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 143
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 144
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    new-instance v3, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$aKuHA-95bYfZlWPjbfCHCztBkI4;

    invoke-direct {v3, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$aKuHA-95bYfZlWPjbfCHCztBkI4;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->queryCategoryById(JLcom/coderpage/base/common/SimpleCallback;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryName:Landroidx/databinding/ObservableField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryIcon:Landroidx/databinding/ObservableField;

    sget-object v1, Lcom/coderpage/mine/app/tally/data/CategoryIconHelper;->ALL_ICON:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private updateCategory(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "categoryId",
            "icon",
            "name"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    new-instance v5, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$f7NpvXAF9KuyNJbJAn6-f9cCfao;

    invoke-direct {v5, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$f7NpvXAF9KuyNJbJAn6-f9cCfao;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;)V

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->updateCategory(JLjava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method


# virtual methods
.method public getCategoryIcon()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryIcon:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method getCategoryIconList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryIconList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCategoryName()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryName:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method getToolbarTitle()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mToolbarTitle:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getType()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mType:Landroidx/databinding/ObservableInt;

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

    .line 74
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$addCategory$1$CategoryEditViewModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/Result;)V
    .locals 1

    .line 125
    invoke-virtual {p4}, Lcom/coderpage/base/common/Result;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance p4, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-direct {p4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;-><init>()V

    .line 127
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mType:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setType(I)V

    .line 128
    invoke-virtual {p4, p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setUniqueName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p4, p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setIcon(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p4, p3}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setName(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryAdd;

    invoke-direct {p2, p4}, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryAdd;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    sget-object p2, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$7506_fL9kl_C5bNErxeatE1RidI;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$7506_fL9kl_C5bNErxeatE1RidI;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p4}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-interface {p1}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->showToastShort(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$2$CategoryEditViewModel(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mType:Landroidx/databinding/ObservableInt;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 146
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryName:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryIcon:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$updateCategory$0$CategoryEditViewModel(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 2

    .line 111
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryUpdate;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryUpdate;-><init>(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    sget-object v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$7506_fL9kl_C5bNErxeatE1RidI;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$7506_fL9kl_C5bNErxeatE1RidI;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 6
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

    .line 159
    check-cast p1, Landroid/app/Activity;

    .line 160
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_category_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryId:J

    .line 161
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_category_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mType:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 163
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mToolbarTitle:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 164
    iget-wide v4, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryId:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    const v1, 0x7f0e003f

    goto :goto_0

    :cond_0
    const v1, 0x7f0e001d

    .line 163
    :goto_0
    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 165
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->init()V

    return-void
.end method

.method public onIconSelect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryIcon:Landroidx/databinding/ObservableField;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubmitClick()V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryIcon:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryName:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    iget-wide v2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->mCategoryId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 94
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->updateCategory(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    invoke-static {}, Lcom/coderpage/mine/utils/AndroidUtils;->generateUUID()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-direct {p0, v2, v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->addCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
