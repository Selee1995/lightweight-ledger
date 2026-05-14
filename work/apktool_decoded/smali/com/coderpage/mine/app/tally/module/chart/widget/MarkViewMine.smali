.class public Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;
.super Lcom/github/mikephil/charting/components/MarkerView;
.source "MarkViewMine.java"


# instance fields
.field private mBound:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "layoutResource"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/components/MarkerView;-><init>(Landroid/content/Context;I)V

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->mBound:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "posX",
            "posY"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p2, p3}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->getOffsetForDrawingAtPoint(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 29
    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v2, p2

    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v3, p3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->draw(Landroid/graphics/Canvas;)V

    .line 31
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 33
    iget p1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr p2, p1

    .line 34
    iget p1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr p3, p1

    .line 35
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p2

    .line 36
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    .line 37
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v1, p2, p3, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getBound()Landroid/graphics/RectF;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->mBound:Landroid/graphics/RectF;

    return-object v0
.end method
