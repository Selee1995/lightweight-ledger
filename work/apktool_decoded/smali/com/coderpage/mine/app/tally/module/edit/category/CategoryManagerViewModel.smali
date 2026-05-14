.class public Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "CategoryManagerViewModel.java"

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
            "Lcom/coderpage/mine/ui/BaseActivity;",
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

    .line 53
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mType:I

    .line 49
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    .line 50
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    .line 54
    new-instance p1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    return-void
.end method

.method private deleteCategory(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other"

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtherIncome"

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    sget-object v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$woiFOxBTk90Lo_eYj2BPYmLrBqk;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$woiFOxBTk90Lo_eYj2BPYmLrBqk;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$zW2VjL-o0sLIY4dYfL4FmaD942c;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$zW2VjL-o0sLIY4dYfL4FmaD942c;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "\u7cfb\u7edf\u5206\u7c7b\uff0c\u65e0\u6cd5\u5220\u9664"

    .line 112
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method private deleteCategoryAndAllRecord(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    sget-object v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$Jr8mGuoW8DuSdIcIi5C9IqZQPDk;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$Jr8mGuoW8DuSdIcIi5C9IqZQPDk;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$LtvTSbPZBki9g5Iwvnjx7LRC2-w;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$LtvTSbPZBki9g5Iwvnjx7LRC2-w;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$deleteCategory$2(Lcom/coderpage/mine/ui/BaseActivity;)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0, v0, v1, v2}, Lcom/coderpage/mine/ui/BaseActivity;->showProcessDialog(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic lambda$deleteCategory$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 126
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$deleteCategoryAndAllRecord$7(Lcom/coderpage/mine/ui/BaseActivity;)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0, v0, v1, v2}, Lcom/coderpage/mine/ui/BaseActivity;->showProcessDialog(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private refreshData()V
    .locals 3

    .line 156
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mType:I

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$hKZz2LGdx1xkUCu0APK--KOv8MI;

    invoke-direct {v2, v1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$hKZz2LGdx1xkUCu0APK--KOv8MI;-><init>(Landroid/arch/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->loadAllExpenseCategory(Lcom/coderpage/base/common/SimpleCallback;)V

    .line 159
    :cond_0
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

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

    .line 58
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mCategoryList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getViewReliedTask()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Lcom/coderpage/mine/ui/BaseActivity;",
            ">;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$deleteCategory$4$CategoryManagerViewModel(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 128
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 129
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->deleteCategoryAndAllRecord(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$deleteCategory$5$CategoryManagerViewModel(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;JLcom/coderpage/mine/ui/BaseActivity;)V
    .locals 2

    .line 122
    invoke-virtual {p4}, Lcom/coderpage/mine/ui/BaseActivity;->dismissProcessDialog()V

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5220\u9664 \'"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 125
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    const-string p2, "\u8be5\u5206\u7c7b\u4e0b\u5171 %s \u6761\u8d26\u5355\uff0c\u5220\u9664\u8be5\u5206\u7c7b\u5c06\u540c\u65f6\u5220\u9664\u8be5\u5206\u7c7b\u4e0b\u7684\u6240\u6709\u8d26\u5355\uff01"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$mireDNnR9iRiC6bok6aOxMLRUhw;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$mireDNnR9iRiC6bok6aOxMLRUhw;

    const p4, 0x7f0e0027

    .line 126
    invoke-virtual {p2, p4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$Y6kPe_OmHXfnMGxgV2in5cr_Fo8;

    invoke-direct {p3, p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$Y6kPe_OmHXfnMGxgV2in5cr_Fo8;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    const p1, 0x7f0e0034

    .line 127
    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public synthetic lambda$deleteCategory$6$CategoryManagerViewModel(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 4

    .line 118
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryCountOfCategory(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/model/Count;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-wide v0, v0, Lcom/coderpage/mine/app/tally/persistence/model/Count;->count:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v3, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$yEoXy2SM7yB-ijuW0VMnfbE_CJY;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$yEoXy2SM7yB-ijuW0VMnfbE_CJY;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;J)V

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$deleteCategoryAndAllRecord$8$CategoryManagerViewModel(Ljava/lang/String;)V
    .locals 1

    .line 140
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->deleteAllFromCategory(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;->delete(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryDelete;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryDelete;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    sget-object v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$IHiiJ_qNeQvsnvkZv-_qvr9uH9k;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$IHiiJ_qNeQvsnvkZv-_qvr9uH9k;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 144
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->refreshData()V

    return-void
.end method

.method public synthetic lambda$onAddCategoryClick$9$CategoryManagerViewModel(Lcom/coderpage/mine/ui/BaseActivity;)V
    .locals 1

    .line 151
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mType:I

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->openAsAddNew(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic lambda$onItemMenuClick$0$CategoryManagerViewModel(Lcom/coderpage/mine/ui/BaseActivity;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;Landroid/widget/PopupWindow;Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;)V
    .locals 0

    .line 90
    invoke-virtual {p4}, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->getId()I

    move-result p4

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    if-eq p4, p1, :cond_0

    .line 100
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 97
    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->deleteCategory(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 93
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getId()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->openAsEdit(Landroid/content/Context;J)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onItemMenuClick$1$CategoryManagerViewModel(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;Landroid/view/View;Lcom/coderpage/mine/ui/BaseActivity;)V
    .locals 4

    .line 86
    new-instance v0, Lcom/coderpage/mine/ui/widget/PopupMenu;

    invoke-direct {v0, p3}, Lcom/coderpage/mine/ui/widget/PopupMenu;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0e003f

    .line 87
    invoke-static {p3, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/coderpage/mine/ui/widget/PopupMenu;->addMenu(IILjava/lang/String;)Lcom/coderpage/mine/ui/widget/PopupMenu;

    move-result-object v0

    const/4 v1, 0x1

    const-string v3, "\u5220\u9664\u5206\u7c7b"

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lcom/coderpage/mine/ui/widget/PopupMenu;->addMenu(IILjava/lang/String;)Lcom/coderpage/mine/ui/widget/PopupMenu;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$pJ2ENkSE42IeZlmYBRfjZhJRL-c;

    invoke-direct {v1, p0, p3, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$pJ2ENkSE42IeZlmYBRfjZhJRL-c;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Lcom/coderpage/mine/ui/BaseActivity;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/coderpage/mine/ui/widget/PopupMenu;->setOnItemClickListener(Lcom/coderpage/mine/ui/widget/PopupMenu$OnItemClickListener;)Lcom/coderpage/mine/ui/widget/PopupMenu;

    move-result-object p1

    .line 104
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/ui/widget/PopupMenu;->show(Landroid/view/View;)V

    return-void
.end method

.method public onAddCategoryClick()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$3m_99-sh1C0qm1CxIVQlIA___ig;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$3m_99-sh1C0qm1CxIVQlIA___ig;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 0
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

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

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

    .line 171
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

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

    .line 176
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->refreshData()V

    return-void
.end method

.method public onEventSortCategory(Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;)V
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

    .line 186
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->refreshData()V

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

    .line 181
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->refreshData()V

    return-void
.end method

.method public onItemMenuClick(Landroid/view/View;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchorView",
            "category"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$UUYLQ_D7FLqbirgVQ17G-hHQMvA;

    invoke-direct {v1, p0, p2, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$UUYLQ_D7FLqbirgVQ17G-hHQMvA;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method onMenuSortClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "shareRoot"
        }
    .end annotation

    .line 80
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mType:I

    invoke-static {p1, v0, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->open(Landroid/content/Context;ILandroid/view/View;)V

    return-void
.end method

.method onTypeChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 71
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mType:I

    if-ne p1, v0, :cond_0

    return-void

    .line 74
    :cond_0
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->mType:I

    .line 75
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->refreshData()V

    return-void
.end method
