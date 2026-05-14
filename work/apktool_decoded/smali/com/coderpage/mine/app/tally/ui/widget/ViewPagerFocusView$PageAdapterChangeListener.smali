.class Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;
.super Ljava/lang/Object;
.source "ViewPagerFocusView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageAdapterChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$1;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)V

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

    .line 210
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    invoke-static {p2}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->access$400(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)Landroid/support/v4/view/ViewPager;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 211
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    invoke-static {p1, p3}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->access$500(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Landroid/support/v4/view/PagerAdapter;)V

    :cond_0
    return-void
.end method
