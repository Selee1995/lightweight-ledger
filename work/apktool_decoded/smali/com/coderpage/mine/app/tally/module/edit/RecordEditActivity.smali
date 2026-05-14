.class public Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "RecordEditActivity.java"


# static fields
.field private static final EXTRA_EXPENSE_ID:Ljava/lang/String; = "extra_expense_id"

.field private static final EXTRA_INCOME_ID:Ljava/lang/String; = "extra_income_id"

.field private static final EXTRA_MODE:Ljava/lang/String; = "extra_mode"

.field private static final MODE_EXPENSE:I = 0x0

.field private static final MODE_INCOME:I = 0x1


# instance fields
.field private mBinding:Lcom/coderpage/mine/tally/module/edit/RecordEditActivityBinding;

.field private mPageAdapter:Lcom/coderpage/mine/app/tally/module/edit/RecordViewPageAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 8

    .line 87
    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/-$$Lambda$RecordEditActivity$Y51CxBq3SDpyPEowmvrrXNH7ibw;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/edit/-$$Lambda$RecordEditActivity$Y51CxBq3SDpyPEowmvrrXNH7ibw;-><init>(Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->setToolbarAsClose(Landroid/view/View$OnClickListener;)V

    const-string v0, ""

    .line 88
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 91
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extra_expense_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 92
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extra_income_id"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 94
    sget-object v1, Lcom/coderpage/mine/app/tally/common/RecordType;->EXPENSE:Lcom/coderpage/mine/app/tally/common/RecordType;

    invoke-static {v6, v7, v1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->instance(JLcom/coderpage/mine/app/tally/common/RecordType;)Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;

    move-result-object v1

    .line 95
    sget-object v5, Lcom/coderpage/mine/app/tally/common/RecordType;->INCOME:Lcom/coderpage/mine/app/tally/common/RecordType;

    invoke-static {v3, v4, v5}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->instance(JLcom/coderpage/mine/app/tally/common/RecordType;)Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;

    move-result-object v3

    .line 97
    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->mBinding:Lcom/coderpage/mine/tally/module/edit/RecordEditActivityBinding;

    iget-object v4, v4, Lcom/coderpage/mine/tally/module/edit/RecordEditActivityBinding;->viewPager:Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 98
    new-instance v4, Lcom/coderpage/mine/app/tally/module/edit/RecordViewPageAdapter;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/coderpage/mine/app/tally/module/edit/RecordViewPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v4, p0, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->mPageAdapter:Lcom/coderpage/mine/app/tally/module/edit/RecordViewPageAdapter;

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/support/v4/app/Fragment;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v3, v6, v1

    .line 99
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/String;

    const v6, 0x7f0e00cc

    .line 100
    invoke-static {p0, v6}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const v2, 0x7f0e00cd

    .line 101
    invoke-static {p0, v2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 100
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-virtual {v4, v3, v1}, Lcom/coderpage/mine/app/tally/module/edit/RecordViewPageAdapter;->setData(Ljava/util/List;Ljava/util/List;)V

    .line 102
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->mPageAdapter:Lcom/coderpage/mine/app/tally/module/edit/RecordViewPageAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 103
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 105
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->mBinding:Lcom/coderpage/mine/tally/module/edit/RecordEditActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/tally/module/edit/RecordEditActivityBinding;->tabLayout:Lcom/coderpage/base/widget/MTabLayout;

    .line 106
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/MTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public static openAsAddNewExpense(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x0

    const-string v2, "extra_mode"

    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openAsAddNewIncome(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x1

    const-string v2, "extra_mode"

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openAsUpdateExpense(Landroid/content/Context;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "expenseId"
        }
    .end annotation

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x0

    const-string v2, "extra_mode"

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_expense_id"

    .line 63
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openAsUpdateIncome(Landroid/content/Context;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "incomeId"
        }
    .end annotation

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x1

    const-string v2, "extra_mode"

    .line 81
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_income_id"

    .line 82
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$RecordEditActivity(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0062

    .line 44
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tally/module/edit/RecordEditActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->mBinding:Lcom/coderpage/mine/tally/module/edit/RecordEditActivityBinding;

    .line 45
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->initView()V

    return-void
.end method
