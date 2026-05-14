.class public Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;
.super Landroid/widget/FrameLayout;
.source "DrawShadowFrameLayout.java"


# static fields
.field private static SHADOW_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlpha:F

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mHeight:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShadowTopOffset:I

.field private mShadowVisible:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "shadowAlpha"

    invoke-direct {v0, v1, v2}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->SHADOW_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 42
    iput p3, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mAlpha:F

    .line 54
    sget-object p3, Lcom/coderpage/mine/R$styleable;->DrawShadowFrameLayout:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 60
    iget-object p2, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p3, :cond_0

    .line 61
    check-cast p2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p2, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    :cond_0
    const/4 p2, 0x1

    .line 65
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowVisible:Z

    if-eqz p3, :cond_1

    .line 66
    iget-object p3, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->setWillNotDraw(Z)V

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mAlpha:F

    return p0
.end method

.method static synthetic access$002(Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;F)F
    .locals 0

    .line 35
    iput p1, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mAlpha:F

    return p1
.end method

.method private updateShadowBounds()V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    iget v2, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowTopOffset:I

    iget v3, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mWidth:I

    iget v4, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 88
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowVisible:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mAlpha:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 74
    iput p1, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mWidth:I

    .line 75
    iput p2, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mHeight:I

    .line 76
    invoke-direct {p0}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->updateShadowBounds()V

    return-void
.end method

.method public setShadowTopOffset(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowTopOffset"
        }
    .end annotation

    .line 97
    iput p1, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowTopOffset:I

    .line 98
    invoke-direct {p0}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->updateShadowBounds()V

    .line 99
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setShadowVisible(ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shadowVisible",
            "animate"
        }
    .end annotation

    .line 103
    iput-boolean p1, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowVisible:Z

    .line 104
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 109
    iget-object p2, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    .line 110
    sget-object p2, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->SHADOW_ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    aput v5, v2, v0

    if-eqz p1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    aput v3, v2, v1

    invoke-static {p0, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    .line 113
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 114
    iget-object p1, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 117
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 118
    iget-boolean p1, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowVisible:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->setWillNotDraw(Z)V

    return-void
.end method
