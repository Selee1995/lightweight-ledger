.class Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .line 1995
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$2;->this$1:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 1998
    iget-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$2;->this$1:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$2;->val$position:I

    iput v0, p1, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1999
    iget-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$2;->this$1:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    const/4 v0, 0x0

    iput v0, p1, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectionOffset:F

    return-void
.end method
