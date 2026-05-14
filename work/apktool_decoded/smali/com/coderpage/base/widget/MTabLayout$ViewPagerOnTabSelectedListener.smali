.class public Lcom/coderpage/base/widget/MTabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "MTabLayout.java"

# interfaces
.implements Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/base/widget/MTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPager"
        }
    .end annotation

    .line 2141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2142
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method

.method public onTabSelected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 2147
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method
