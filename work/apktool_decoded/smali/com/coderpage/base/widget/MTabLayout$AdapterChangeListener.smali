.class Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "MTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/base/widget/MTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private mAutoRefresh:Z

.field final synthetic this$0:Lcom/coderpage/base/widget/MTabLayout;


# direct methods
.method constructor <init>(Lcom/coderpage/base/widget/MTabLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 2179
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewPager",
            "oldAdapter",
            "newAdapter"
        }
    .end annotation

    .line 2185
    iget-object p2, p0, Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget-object p2, p2, Lcom/coderpage/base/widget/MTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne p2, p1, :cond_0

    .line 2186
    iget-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget-boolean p2, p0, Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;->mAutoRefresh:Z

    invoke-virtual {p1, p3, p2}, Lcom/coderpage/base/widget/MTabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoRefresh"
        }
    .end annotation

    .line 2191
    iput-boolean p1, p0, Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;->mAutoRefresh:Z

    return-void
.end method
