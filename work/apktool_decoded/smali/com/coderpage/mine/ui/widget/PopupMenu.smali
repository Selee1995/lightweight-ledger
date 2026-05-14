.class public Lcom/coderpage/mine/ui/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;,
        Lcom/coderpage/mine/ui/widget/PopupMenu$OnItemClickListener;,
        Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;,
        Lcom/coderpage/mine/ui/widget/PopupMenu$DefaultOffsetInterceptor;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mItemClickListener:Lcom/coderpage/mine/ui/widget/PopupMenu$OnItemClickListener;

.field private mMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetInterceptor:Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;

.field private mOffsetX:I

.field private mOffsetY:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mMenuList:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/coderpage/mine/ui/widget/PopupMenu$DefaultOffsetInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coderpage/mine/ui/widget/PopupMenu$DefaultOffsetInterceptor;-><init>(Lcom/coderpage/mine/ui/widget/PopupMenu;Lcom/coderpage/mine/ui/widget/PopupMenu$1;)V

    iput-object v0, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mOffsetInterceptor:Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;

    .line 38
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mOffsetX:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 40
    invoke-static {p1, v0}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mOffsetY:I

    return-void
.end method


# virtual methods
.method public addMenu(IILjava/lang/String;)Lcom/coderpage/mine/ui/widget/PopupMenu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "iconRes",
            "text"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;-><init>(Lcom/coderpage/mine/ui/widget/PopupMenu;)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->setId(I)V

    if-eqz p2, :cond_0

    .line 51
    iget-object p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/coderpage/base/utils/ResUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {v0, p3}, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->setText(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public synthetic lambda$show$0$PopupMenu(Landroid/widget/PopupWindow;Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p3, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mItemClickListener:Lcom/coderpage/mine/ui/widget/PopupMenu$OnItemClickListener;

    if-eqz p3, :cond_0

    .line 85
    invoke-interface {p3, p1, p2}, Lcom/coderpage/mine/ui/widget/PopupMenu$OnItemClickListener;->onClick(Landroid/widget/PopupWindow;Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;)V

    :cond_0
    return-void
.end method

.method public setOffsetInterceptor(Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;)Lcom/coderpage/mine/ui/widget/PopupMenu;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interceptor"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mOffsetInterceptor:Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;

    return-object p0
.end method

.method public setOnItemClickListener(Lcom/coderpage/mine/ui/widget/PopupMenu$OnItemClickListener;)Lcom/coderpage/mine/ui/widget/PopupMenu;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mItemClickListener:Lcom/coderpage/mine/ui/widget/PopupMenu$OnItemClickListener;

    return-object p0
.end method

.method public show(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    .line 63
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0036

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 68
    :goto_0
    iget-object v7, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_2

    const v7, 0x7f0b0037

    .line 69
    invoke-virtual {v2, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f09007f

    .line 70
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f09017e

    .line 71
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f090186

    .line 72
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 73
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v12, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    invoke-virtual {v3, v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v12, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;

    .line 77
    invoke-virtual {v12}, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v12}, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/16 v13, 0x8

    if-eqz v10, :cond_0

    .line 79
    invoke-virtual {v12}, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :goto_1
    new-instance v9, Lcom/coderpage/mine/ui/widget/-$$Lambda$PopupMenu$7URxUczg7PMC3x3sMD_8aGhijgk;

    invoke-direct {v9, p0, v0, v12}, Lcom/coderpage/mine/ui/widget/-$$Lambda$PopupMenu$7URxUczg7PMC3x3sMD_8aGhijgk;-><init>(Lcom/coderpage/mine/ui/widget/PopupMenu;Landroid/widget/PopupWindow;Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v7, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_1

    .line 90
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v3, v5, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 98
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    .line 99
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    .line 101
    iget-object v7, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mActivity:Landroid/app/Activity;

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v7, v9}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 103
    iget-object v7, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mOffsetInterceptor:Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;

    invoke-virtual {v7, v4, v6, v1, v2}, Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;->offsetX(IIII)I

    move-result v7

    .line 104
    iget-object v9, p0, Lcom/coderpage/mine/ui/widget/PopupMenu;->mOffsetInterceptor:Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;

    invoke-virtual {v9, v4, v6, v1, v2}, Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;->offsetY(IIII)I

    move-result v1

    .line 106
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 107
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 108
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 109
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 111
    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 112
    invoke-virtual {v0, p1, v7, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
