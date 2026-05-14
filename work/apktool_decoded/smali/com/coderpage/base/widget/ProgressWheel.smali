.class public Lcom/coderpage/base/widget/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;,
        Lcom/coderpage/base/widget/ProgressWheel$ProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressWheel"


# instance fields
.field private barColor:I

.field private barExtraLength:F

.field private barGrowingFromFront:Z

.field private final barLength:I

.field private final barMaxLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barSpinCycleTime:D

.field private barWidth:I

.field private callback:Lcom/coderpage/base/widget/ProgressWheel$ProgressCallback;

.field private circleBounds:Landroid/graphics/RectF;

.field private circleRadius:I

.field private fillRadius:Z

.field private isSpinning:Z

.field private lastTimeAnimated:J

.field private linearProgress:Z

.field private mProgress:F

.field private mTargetProgress:F

.field private final pauseGrowingTime:J

.field private pausedTimeWithoutGrowing:J

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private shouldAnimate:Z

.field private spinSpeed:F

.field private timeStartGrowing:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    .line 36
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barLength:I

    const/16 p1, 0x10e

    .line 37
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barMaxLength:I

    const-wide/16 v0, 0xc8

    .line 38
    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->pauseGrowingTime:J

    const/16 p1, 0x1c

    .line 45
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    const/4 p1, 0x4

    .line 46
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    .line 47
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->fillRadius:Z

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->timeStartGrowing:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    .line 50
    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barSpinCycleTime:D

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barExtraLength:F

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v1, 0x0

    .line 53
    iput-wide v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->pausedTimeWithoutGrowing:J

    const/high16 v3, -0x56000000

    .line 55
    iput v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->barColor:I

    const v3, 0xffffff

    .line 56
    iput v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimColor:I

    .line 59
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v3, 0x43660000    # 230.0f

    .line 67
    iput v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    .line 70
    iput-wide v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    .line 74
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 75
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    .line 76
    iput-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    .line 98
    invoke-direct {p0}, Lcom/coderpage/base/widget/ProgressWheel;->setAnimationEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
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

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x10

    .line 36
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barLength:I

    const/16 v0, 0x10e

    .line 37
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barMaxLength:I

    const-wide/16 v0, 0xc8

    .line 38
    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->pauseGrowingTime:J

    const/16 v0, 0x1c

    .line 45
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    const/4 v0, 0x4

    .line 46
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    .line 47
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->fillRadius:Z

    const-wide/16 v1, 0x0

    .line 49
    iput-wide v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->timeStartGrowing:D

    const-wide v1, 0x407cc00000000000L    # 460.0

    .line 50
    iput-wide v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barSpinCycleTime:D

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barExtraLength:F

    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v2, 0x0

    .line 53
    iput-wide v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->pausedTimeWithoutGrowing:J

    const/high16 v4, -0x56000000

    .line 55
    iput v4, p0, Lcom/coderpage/base/widget/ProgressWheel;->barColor:I

    const v4, 0xffffff

    .line 56
    iput v4, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimColor:I

    .line 59
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/coderpage/base/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v4, 0x43660000    # 230.0f

    .line 67
    iput v4, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    .line 70
    iput-wide v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    .line 74
    iput v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 75
    iput v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    .line 76
    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    .line 88
    sget-object v0, Lcom/coderpage/base/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 90
    invoke-direct {p0}, Lcom/coderpage/base/widget/ProgressWheel;->setAnimationEnabled()V

    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 230
    iget v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    .line 231
    iget v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    .line 232
    iget v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    int-to-float v1, v1

    .line 233
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    .line 235
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_circleRadius:I

    iget v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    int-to-float v1, v1

    .line 236
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    .line 238
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_fillRadius:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->fillRadius:Z

    .line 240
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_barWidth:I

    iget v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    .line 242
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_rimWidth:I

    iget v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    .line 244
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_spinSpeed:I

    iget v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    .line 245
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    mul-float v0, v0, v3

    .line 246
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    .line 248
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_barSpinCycleTime:I

    iget-wide v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->barSpinCycleTime:D

    double-to-int v2, v2

    .line 249
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->barSpinCycleTime:D

    .line 251
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_barColor:I

    iget v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->barColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barColor:I

    .line 253
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_rimColor:I

    iget v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimColor:I

    .line 255
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_linearProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->linearProgress:Z

    .line 257
    sget v0, Lcom/coderpage/base/R$styleable;->ProgressWheel_matProg_progressIndeterminate:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->spin()V

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private runCallback()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->callback:Lcom/coderpage/base/widget/ProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 438
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 439
    iget-object v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->callback:Lcom/coderpage/base/widget/ProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/coderpage/base/widget/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method

.method private runCallback(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->callback:Lcom/coderpage/base/widget/ProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0, p1}, Lcom/coderpage/base/widget/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method

.method private setAnimationEnabled()V
    .locals 4

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    :goto_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 114
    :goto_1
    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->shouldAnimate:Z

    return-void
.end method

.method private setupBounds(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout_width",
            "layout_height"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getPaddingTop()I

    move-result v0

    .line 198
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getPaddingBottom()I

    move-result v1

    .line 199
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getPaddingLeft()I

    move-result v2

    .line 200
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getPaddingRight()I

    move-result v3

    .line 202
    iget-boolean v4, p0, Lcom/coderpage/base/widget/ProgressWheel;->fillRadius:Z

    if-nez v4, :cond_0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int v3, p2, v1

    sub-int/2addr v3, v0

    .line 204
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 207
    iget v4, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    .line 210
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    sub-int/2addr p2, v3

    .line 211
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    .line 213
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    add-int v2, p1, v1

    int-to-float v2, v2

    add-int v4, p2, v1

    int-to-float v4, v4

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    add-int/2addr p2, v3

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {v0, v2, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    goto :goto_0

    .line 217
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    int-to-float p1, p1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v5

    int-to-float p2, p2

    invoke-direct {v4, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method private setupPaints()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateBarLength(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTimeInMilliSeconds"
        }
    .end annotation

    .line 365
    iget-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 366
    iget-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->timeStartGrowing:D

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->timeStartGrowing:D

    .line 368
    iget-wide p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barSpinCycleTime:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    sub-double/2addr v0, p1

    .line 371
    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->timeStartGrowing:D

    const-wide/16 v0, 0x0

    .line 373
    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 375
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barGrowingFromFront:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barGrowingFromFront:Z

    .line 378
    :cond_0
    iget-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->timeStartGrowing:D

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p1

    const-wide p1, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p1

    .line 379
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    const/high16 p2, 0x437e0000    # 254.0f

    .line 382
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barGrowingFromFront:Z

    if-eqz v0, :cond_1

    mul-float p1, p1, p2

    .line 383
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barExtraLength:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    .line 386
    iget p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    iget p2, p0, Lcom/coderpage/base/widget/ProgressWheel;->barExtraLength:F

    sub-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 387
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barExtraLength:F

    goto :goto_0

    :cond_2
    add-long/2addr v0, p1

    .line 390
    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->pausedTimeWithoutGrowing:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .line 602
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .line 524
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getRimColor()I
    .locals 1

    .line 641
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .line 681
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .line 663
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 278
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 280
    iget-object v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 284
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->shouldAnimate:Z

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x1

    const/high16 v5, 0x43b40000    # 360.0f

    if-eqz v0, :cond_3

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    .line 293
    iget v8, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    mul-float v0, v0, v8

    div-float/2addr v0, v3

    .line 295
    invoke-direct {p0, v6, v7}, Lcom/coderpage/base/widget/ProgressWheel;->updateBarLength(J)V

    .line 297
    iget v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    cmpl-float v0, v3, v5

    if-lez v0, :cond_1

    sub-float/2addr v3, v5

    .line 299
    iput v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 304
    invoke-direct {p0, v0}, Lcom/coderpage/base/widget/ProgressWheel;->runCallback(F)V

    .line 306
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    .line 308
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    .line 309
    iget v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->barExtraLength:F

    add-float/2addr v3, v2

    .line 311
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v3, 0x43070000    # 135.0f

    const/4 v7, 0x0

    const/high16 v8, 0x43070000    # 135.0f

    goto :goto_0

    :cond_2
    move v7, v0

    move v8, v3

    .line 316
    :goto_0
    iget-object v6, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/coderpage/base/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 318
    :cond_3
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 320
    iget v6, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_4

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v6, v3

    .line 325
    iget v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    mul-float v6, v6, v3

    .line 327
    iget v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    add-float/2addr v3, v6

    iget v6, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 331
    :goto_1
    iget v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    .line 332
    invoke-direct {p0}, Lcom/coderpage/base/widget/ProgressWheel;->runCallback()V

    .line 336
    :cond_5
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 337
    iget-boolean v3, p0, Lcom/coderpage/base/widget/ProgressWheel;->linearProgress:Z

    if-nez v3, :cond_6

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    float-to-double v6, v0

    const/high16 v0, 0x40800000    # 4.0f

    float-to-double v8, v0

    .line 339
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    double-to-float v0, v6

    mul-float v0, v0, v5

    .line 340
    iget v6, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    div-float/2addr v6, v5

    sub-float/2addr v3, v6

    float-to-double v6, v3

    float-to-double v10, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v8, v6

    double-to-float v1, v8

    mul-float v1, v1, v5

    move v12, v1

    move v1, v0

    move v0, v12

    .line 343
    :cond_6
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v9, 0x43b40000    # 360.0f

    goto :goto_2

    :cond_7
    move v9, v0

    .line 347
    :goto_2
    iget-object v7, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    sub-float v8, v1, v2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/coderpage/base/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_3
    if-eqz v4, :cond_8

    .line 351
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 125
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    iget v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 130
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 131
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 142
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-eq v3, v5, :cond_3

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_4

    .line 154
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, p2

    .line 160
    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/coderpage/base/widget/ProgressWheel;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 496
    instance-of v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;

    if-nez v0, :cond_0

    .line 497
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 501
    :cond_0
    check-cast p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;

    .line 502
    invoke-virtual {p1}, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 504
    iget v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->mProgress:F

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 505
    iget v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->mTargetProgress:F

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    .line 506
    iget-boolean v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->isSpinning:Z

    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    .line 507
    iget v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->spinSpeed:F

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    .line 508
    iget v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->barWidth:I

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    .line 509
    iget v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->barColor:I

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barColor:I

    .line 510
    iget v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->rimWidth:I

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    .line 511
    iget v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->rimColor:I

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimColor:I

    .line 512
    iget v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->circleRadius:I

    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    .line 513
    iget-boolean v0, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->linearProgress:Z

    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->linearProgress:Z

    .line 514
    iget-boolean p1, p1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->fillRadius:Z

    iput-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->fillRadius:Z

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 474
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 476
    new-instance v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 479
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    iput v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->mProgress:F

    .line 480
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    iput v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 481
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    iput-boolean v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->isSpinning:Z

    .line 482
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    iput v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->spinSpeed:F

    .line 483
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    iput v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->barWidth:I

    .line 484
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->barColor:I

    iput v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->barColor:I

    .line 485
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    iput v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->rimWidth:I

    .line 486
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimColor:I

    iput v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->rimColor:I

    .line 487
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    iput v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->circleRadius:I

    .line 488
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->linearProgress:Z

    iput-boolean v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->linearProgress:Z

    .line 489
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->fillRadius:Z

    iput-boolean v0, v1, Lcom/coderpage/base/widget/ProgressWheel$WheelSavedState;->fillRadius:Z

    return-object v1
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

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/coderpage/base/widget/ProgressWheel;->setupBounds(II)V

    .line 173
    invoke-direct {p0}, Lcom/coderpage/base/widget/ProgressWheel;->setupPaints()V

    .line 174
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "changedView",
            "visibility"
        }
    .end annotation

    .line 357
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    :cond_0
    return-void
.end method

.method public resetCount()V
    .locals 1

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 407
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    .line 408
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setBarColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "barColor"
        }
    .end annotation

    .line 630
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barColor:I

    .line 631
    invoke-direct {p0}, Lcom/coderpage/base/widget/ProgressWheel;->setupPaints()V

    .line 632
    iget-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "barWidth"
        }
    .end annotation

    .line 611
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->barWidth:I

    .line 612
    iget-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/coderpage/base/widget/ProgressWheel$ProgressCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressCallback"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->callback:Lcom/coderpage/base/widget/ProgressWheel$ProgressCallback;

    .line 268
    iget-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/coderpage/base/widget/ProgressWheel;->runCallback()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "circleRadius"
        }
    .end annotation

    .line 592
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->circleRadius:I

    .line 593
    iget-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 450
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 451
    iput v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    .line 461
    :cond_2
    :goto_0
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 465
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    .line 466
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    .line 468
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setLinearProgress(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLinear"
        }
    .end annotation

    .line 573
    iput-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->linearProgress:Z

    .line 574
    iget-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 538
    iget-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 539
    iput v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    const/4 v0, 0x0

    .line 540
    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    .line 542
    invoke-direct {p0}, Lcom/coderpage/base/widget/ProgressWheel;->runCallback()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    .line 551
    :cond_2
    :goto_0
    iget v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_3

    return-void

    .line 558
    :cond_3
    iget v1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    :cond_4
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 562
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    .line 564
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rimColor"
        }
    .end annotation

    .line 650
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimColor:I

    .line 651
    invoke-direct {p0}, Lcom/coderpage/base/widget/ProgressWheel;->setupPaints()V

    .line 652
    iget-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rimWidth"
        }
    .end annotation

    .line 690
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->rimWidth:I

    .line 691
    iget-boolean p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spinSpeed"
        }
    .end annotation

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 674
    iput p1, p0, Lcom/coderpage/base/widget/ProgressWheel;->spinSpeed:F

    return-void
.end method

.method public spin()V
    .locals 2

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->lastTimeAnimated:J

    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    .line 427
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    return-void
.end method

.method public stopSpinning()V
    .locals 1

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->isSpinning:Z

    const/4 v0, 0x0

    .line 416
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mProgress:F

    .line 417
    iput v0, p0, Lcom/coderpage/base/widget/ProgressWheel;->mTargetProgress:F

    .line 418
    invoke-virtual {p0}, Lcom/coderpage/base/widget/ProgressWheel;->invalidate()V

    return-void
.end method
