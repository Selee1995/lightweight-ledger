.class Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;
.super Ljava/lang/Object;
.source "ViewPagerFocusView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerChangeListener"
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

    .line 178
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->access$300(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)V

    return-void
.end method
