.class public Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;
.super Landroid/app/Dialog;
.source "MonthSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;,
        Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;,
        Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;,
        Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDateSelectListener:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;

.field private mMonthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthRecyclerAdapter:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;

.field private mMonthRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

.field private mSelectedYear:I

.field private mYearTabLayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "monthList",
            "dateSelectListener",
            "selectedMonth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;",
            "Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ")V"
        }
    .end annotation

    const v0, 0x7f0f0194

    .line 62
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    .line 56
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mDateSelectListener:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0b0075

    .line 64
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->configWindowSizeAndPosition()V

    .line 68
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthList:Ljava/util/List;

    .line 69
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mDateSelectListener:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;

    .line 70
    iput-object p4, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    if-nez p4, :cond_0

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 73
    new-instance p3, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p4, 0x2

    invoke-virtual {p2, p4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>(II)V

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result p1

    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedYear:I

    .line 77
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->initView()V

    return-void
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedYear:I

    return p0
.end method

.method static synthetic access$1000(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)Lcom/coderpage/mine/app/tally/module/chart/data/Month;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)Lcom/coderpage/mine/app/tally/module/chart/data/Month;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    return-object p1
.end method

.method static synthetic access$102(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedYear:I

    return p1
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mDateSelectListener:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Ljava/util/List;I)Ljava/util/List;
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->getMonthListByYear(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthRecyclerAdapter:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;

    return-object p0
.end method

.method private configWindowSizeAndPosition()V
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coderpage/base/utils/UIUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 112
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x30

    .line 113
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 114
    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x0

    .line 115
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 116
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700ae

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private getMonthListByYear(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "year"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_2

    .line 177
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    .line 179
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getYearList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 188
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    .line 190
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f090092

    .line 124
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ce

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 127
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthList:Ljava/util/List;

    iget v3, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedYear:I

    .line 128
    invoke-direct {p0, v2, v3}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->getMonthListByYear(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Ljava/util/List;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$1;)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthRecyclerAdapter:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;

    .line 129
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 130
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthRecyclerAdapter:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v1, 0x7f090106

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mYearTabLayout:Landroid/support/design/widget/TabLayout;

    .line 133
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->initYearTabs()V

    return-void
.end method

.method private initYearTabs()V
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mMonthList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->getYearList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mYearTabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v2, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$1;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$1;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 164
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mYearTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0074

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090177

    .line 167
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v4, Lcom/coderpage/mine/app/tally/ui/widget/-$$Lambda$MonthSelectDialog$YRZuwsQ1P3RkecHVEv_Wt21_5sU;

    invoke-direct {v4, v2}, Lcom/coderpage/mine/app/tally/ui/widget/-$$Lambda$MonthSelectDialog$YRZuwsQ1P3RkecHVEv_Wt21_5sU;-><init>(Landroid/support/design/widget/TabLayout$Tab;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 171
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mYearTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->mSelectedYear:I

    if-ne v1, v4, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-virtual {v3, v2, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$initYearTabs$0(Landroid/support/design/widget/TabLayout$Tab;Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    return-void
.end method
