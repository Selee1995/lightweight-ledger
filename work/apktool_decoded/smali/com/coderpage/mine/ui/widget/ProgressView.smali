.class public Lcom/coderpage/mine/ui/widget/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# static fields
.field private static final MAX:I = 0x64


# instance fields
.field private mAutoInvisibleOnFinish:Z

.field private mBackgroundColor:I

.field private mProgress:I

.field private mProgressColor:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/ui/widget/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/ui/widget/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mAutoInvisibleOnFinish:Z

    .line 34
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressRect:Landroid/graphics/Rect;

    .line 47
    invoke-direct {p0}, Lcom/coderpage/mine/ui/widget/ProgressView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mBackgroundColor:I

    .line 52
    iput v0, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressColor:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    iget v0, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 98
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/ProgressView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgress:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/ProgressView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setAutoInvisibleOnFinish(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoInvisibleOnFinish"
        }
    .end annotation

    .line 65
    iput-boolean p1, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mAutoInvisibleOnFinish:Z

    return-void
.end method

.method public setColor(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backgroundColor",
            "progressColor"
        }
    .end annotation

    .line 75
    iput p1, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mBackgroundColor:I

    .line 76
    iput p2, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgressColor:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    const/16 v0, 0x64

    .line 86
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 88
    iget-boolean v0, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mAutoInvisibleOnFinish:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/ui/widget/ProgressView;->setVisibility(I)V

    .line 90
    iput p1, p0, Lcom/coderpage/mine/ui/widget/ProgressView;->mProgress:I

    .line 91
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/ProgressView;->postInvalidate()V

    return-void
.end method
