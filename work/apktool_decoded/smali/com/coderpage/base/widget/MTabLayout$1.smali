.class Lcom/coderpage/base/widget/MTabLayout$1;
.super Ljava/lang/Object;
.source "MTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/base/widget/MTabLayout;->ensureScrollAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/base/widget/MTabLayout;


# direct methods
.method constructor <init>(Lcom/coderpage/base/widget/MTabLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1015
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$1;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$1;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/coderpage/base/widget/MTabLayout;->scrollTo(II)V

    return-void
.end method
