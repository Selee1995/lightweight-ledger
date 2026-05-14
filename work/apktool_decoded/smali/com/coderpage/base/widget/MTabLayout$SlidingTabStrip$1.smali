.class Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;
.super Ljava/lang/Object;
.source "MTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$startLeft",
            "val$targetLeft",
            "val$startRight",
            "val$targetRight"
        }
    .end annotation

    .line 1970
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->this$1:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$startLeft:I

    iput p3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$targetLeft:I

    iput p4, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$startRight:I

    iput p5, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 1973
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 1975
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$startLeft:I

    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$targetLeft:I

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-ge v0, v1, :cond_1

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    .line 1977
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->this$1:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    iget v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$startRight:I

    int-to-float v4, v3

    iget v5, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$targetRight:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float v3, v3, p1

    mul-float v3, v3, v2

    add-float/2addr v4, v3

    float-to-int p1, v4

    invoke-virtual {v1, v0, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    goto :goto_0

    .line 1979
    :cond_0
    iget-object v4, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->this$1:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    int-to-float v5, v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    sub-float/2addr p1, v3

    mul-float v0, v0, p1

    mul-float v0, v0, v2

    add-float/2addr v5, v0

    float-to-int p1, v5

    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-virtual {v4, p1, v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    goto :goto_0

    :cond_1
    cmpg-float v4, p1, v3

    if-gtz v4, :cond_2

    .line 1983
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->this$1:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    int-to-float v4, v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    mul-float v0, v0, v2

    sub-float/2addr v4, v0

    float-to-int p1, v4

    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$startRight:I

    invoke-virtual {v3, p1, v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    goto :goto_0

    .line 1985
    :cond_2
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->this$1:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    iget v4, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$startRight:I

    int-to-float v5, v4

    iget v6, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;->val$targetRight:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    sub-float/2addr p1, v3

    mul-float v4, v4, p1

    mul-float v4, v4, v2

    sub-float/2addr v5, v4

    float-to-int p1, v5

    invoke-virtual {v0, v1, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    :goto_0
    return-void
.end method
