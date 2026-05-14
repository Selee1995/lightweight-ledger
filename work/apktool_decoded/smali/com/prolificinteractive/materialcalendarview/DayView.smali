.class Lcom/prolificinteractive/materialcalendarview/DayView;
.super Landroid/widget/CheckedTextView;
.source "DayView.java"


# instance fields
.field private final circleDrawableRect:Landroid/graphics/Rect;

.field private customBackground:Landroid/graphics/drawable/Drawable;

.field private date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final fadeTime:I

.field private formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

.field private isDecoratedDisabled:Z

.field private isInMonth:Z

.field private isInRange:Z

.field private mCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private selectionColor:I

.field private selectionDrawable:Landroid/graphics/drawable/Drawable;

.field private showOtherDates:I
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation
.end field

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    const p1, -0x777778

    .line 39
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    .line 45
    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    .line 48
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    const/4 p1, 0x4

    .line 50
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->fadeTime:I

    .line 58
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionColor(I)V

    const/16 v0, 0x11

    .line 60
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setGravity(I)V

    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextAlignment(I)V

    .line 66
    :cond_0
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method private calculateBounds(II)V
    .locals 5

    .line 268
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v1, p2, p1

    .line 269
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 272
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    div-int/lit8 v2, v1, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-lt p1, p2, :cond_1

    .line 275
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    add-int v4, v0, v1

    invoke-virtual {p1, v1, v3, v4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    invoke-virtual {p1, v2, v3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 278
    :cond_1
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    add-int v4, v0, v1

    invoke-virtual {p2, v3, v1, p1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    invoke-virtual {p2, v3, v2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.method private static generateBackground(IILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 195
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 196
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    const/4 p1, 0x1

    new-array v1, p1, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 197
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 198
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x10100a7

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    new-array p1, p1, [I

    aput v2, p1, v3

    .line 199
    invoke-static {p0, p2}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateRippleDrawable(ILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-array p1, p1, [I

    aput v2, p1, v3

    .line 201
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    new-array p0, v3, [I

    .line 204
    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 210
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 211
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private static generateRippleDrawable(ILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 217
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const/4 v0, -0x1

    .line 218
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 221
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    .line 222
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/RippleDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 226
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-ne p0, v0, :cond_1

    .line 227
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    .line 228
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, p0, v0, p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_1
    return-object v1
.end method

.method private regenerateBackground()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 189
    :cond_0
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->fadeTime:I

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateBackground(IILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setEnabled()V
    .locals 7

    .line 134
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-boolean v3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-super {p0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 137
    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->showOtherMonths(I)Z

    move-result v3

    .line 138
    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    invoke-static {v4}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->showOutOfRange(I)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 139
    :goto_3
    iget v5, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    invoke-static {v5}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->showDecoratedDisabled(I)Z

    move-result v5

    .line 143
    iget-boolean v6, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    if-nez v6, :cond_4

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .line 147
    :cond_4
    iget-boolean v3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    or-int/2addr v0, v6

    .line 151
    :cond_5
    iget-boolean v4, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v0, v3

    :cond_7
    if-nez v6, :cond_8

    if-eqz v0, :cond_8

    .line 156
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    new-array v1, v1, [I

    const v4, -0x101009e

    aput v4, v1, v2

    const v4, -0x777778

    invoke-virtual {v3, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextColor(I)V

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x4

    .line 159
    :goto_5
    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method applyFacade(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V
    .locals 6

    .line 238
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->areDaysDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    .line 239
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setEnabled()V

    .line 241
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->getSelectionDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->getSpans()Ljava/util/List;

    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;

    .line 250
    iget-object v2, v2, Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;->span:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {v0, v1}, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 176
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 177
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 182
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 262
    invoke-super/range {p0 .. p5}, Landroid/widget/CheckedTextView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 263
    invoke-direct {p0, p4, p5}, Lcom/prolificinteractive/materialcalendarview/DayView;->calculateBounds(II)V

    .line 264
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->regenerateBackground()V

    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->invalidate()V

    return-void
.end method

.method public setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 71
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 7

    if-nez p1, :cond_0

    .line 80
    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    :cond_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 81
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    .line 83
    instance-of v1, p1, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v2, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 86
    :cond_1
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    .line 88
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 89
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelectionColor(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    .line 102
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->regenerateBackground()V

    return-void
.end method

.method public setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->regenerateBackground()V

    return-void
.end method

.method protected setupSelection(IZZ)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .line 163
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    .line 164
    iput-boolean p3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    .line 165
    iput-boolean p2, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    .line 166
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setEnabled()V

    return-void
.end method
