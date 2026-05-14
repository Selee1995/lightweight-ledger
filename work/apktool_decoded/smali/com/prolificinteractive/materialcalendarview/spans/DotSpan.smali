.class public Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;
.super Ljava/lang/Object;
.source "DotSpan.java"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# static fields
.field public static final DEFAULT_RADIUS:F = 3.0f


# instance fields
.field private final color:I

.field private final radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 27
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    .line 62
    iput p2, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 39
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    .line 40
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 0

    .line 72
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p5

    .line 73
    iget p6, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    if-eqz p6, :cond_0

    .line 74
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    add-int/2addr p3, p4

    .line 76
    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    int-to-float p4, p7

    iget p6, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    add-float/2addr p4, p6

    invoke-virtual {p1, p3, p4, p6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
