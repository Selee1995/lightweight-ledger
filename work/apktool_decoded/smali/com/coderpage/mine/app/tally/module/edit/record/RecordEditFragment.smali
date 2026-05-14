.class public Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecordEditFragment.java"


# static fields
.field static final EXTRA_RECORD_ID:Ljava/lang/String; = "extra_record_id"

.field static final EXTRA_RECORD_TYPE:Ljava/lang/String; = "extra_record_type"


# instance fields
.field private mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

.field private mCategoryPageAdapter:Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;

.field private mRecordType:Lcom/coderpage/mine/app/tally/common/RecordType;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 57
    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-direct {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;-><init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mCategoryPageAdapter:Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;

    .line 58
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    iget-object v0, v0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->categoryViewpager:Lcom/coderpage/mine/app/tally/module/edit/widget/CategoryViewPager;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mCategoryPageAdapter:Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/widget/CategoryViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    iget-object v0, v0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->focusView:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    iget-object v1, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->categoryViewpager:Lcom/coderpage/mine/app/tally/module/edit/widget/CategoryViewPager;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public static instance(JLcom/coderpage/mine/app/tally/common/RecordType;)Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recordId",
            "type"
        }
    .end annotation

    .line 34
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "extra_record_id"

    .line 35
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "extra_record_type"

    .line 36
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 38
    new-instance p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;

    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;-><init>()V

    .line 39
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private subscribeUi()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mRecordType:Lcom/coderpage/mine/app/tally/common/RecordType;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->setType(Lcom/coderpage/mine/app/tally/common/RecordType;)V

    .line 65
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->setActivity(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->setVm(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    .line 67
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->getCategoryList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordEditFragment$E4b7l-6to4gjgbiGUQc5qxY_y4c;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordEditFragment$E4b7l-6to4gjgbiGUQc5qxY_y4c;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 70
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->getCurrentSelectCategory()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordEditFragment$ye1BwYzw4vFwRtLaSpe4LXF4EJQ;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordEditFragment$ye1BwYzw4vFwRtLaSpe4LXF4EJQ;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 73
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->getActivityRelayTask()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordEditFragment$UpmYbqwfYItXc9PHUKVMMOdXwUo;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordEditFragment$UpmYbqwfYItXc9PHUKVMMOdXwUo;-><init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$subscribeUi$0$RecordEditFragment(Ljava/util/List;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mCategoryPageAdapter:Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->setCategoryList(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$subscribeUi$1$RecordEditFragment(Lcom/coderpage/mine/app/tally/module/edit/model/Category;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->setCategory(Lcom/coderpage/mine/app/tally/module/edit/model/Category;)V

    return-void
.end method

.method public synthetic lambda$subscribeUi$2$RecordEditFragment(Lcom/coderpage/framework/ViewReliedTask;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coderpage/framework/ViewReliedTask;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {p3, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p3

    check-cast p3, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    const p3, 0x7f0b0069

    const/4 v0, 0x0

    .line 47
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    .line 48
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 50
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "extra_record_type"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/common/RecordType;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mRecordType:Lcom/coderpage/mine/app/tally/common/RecordType;

    .line 51
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->initView()V

    .line 52
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->subscribeUi()V

    .line 53
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->mBinding:Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
