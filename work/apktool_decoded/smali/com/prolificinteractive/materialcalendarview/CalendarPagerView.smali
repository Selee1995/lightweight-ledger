.class abstract Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
.super Landroid/view/ViewGroup;
.source "CalendarPagerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;
    }
.end annotation


# static fields
.field protected static final DAY_NAMES_ROW:I = 0x1

.field protected static final DEFAULT_DAYS_IN_WEEK:I = 0x7

.field protected static final DEFAULT_MAX_WEEKS:I = 0x6

.field private static final tempWorkingCalendar:Ljava/util/Calendar;


# instance fields
.field private final dayViews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/prolificinteractive/materialcalendarview/DayView;",
            ">;"
        }
    .end annotation
.end field

.field private final decoratorResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prolificinteractive/materialcalendarview/DecoratorResult;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfWeek:I

.field private firstViewDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field protected showOtherDates:I
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation
.end field

.field private final weekDayViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prolificinteractive/materialcalendarview/WeekDayView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 32
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->showOtherDates:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 37
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    .line 46
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 47
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->firstViewDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 48
    iput p3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->firstDayOfWeek:I

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setClipChildren(Z)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setClipToPadding(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->buildWeekDays(Ljava/util/Calendar;)V

    .line 54
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V

    return-void
.end method

.method private buildWeekDays(Ljava/util/Calendar;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 59
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;-><init>(Landroid/content/Context;I)V

    .line 60
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->addView(Landroid/view/View;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected addDayView(Ljava/util/Collection;Ljava/util/Calendar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/prolificinteractive/materialcalendarview/DayView;",
            ">;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;-><init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 69
    invoke-virtual {v1, p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    invoke-virtual {p0, v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x5

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p2, p1, v0}, Ljava/util/Calendar;->add(II)V

    return-void
.end method

.method protected abstract buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/prolificinteractive/materialcalendarview/DayView;",
            ">;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 305
    instance-of p1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->generateDefaultLayoutParams()Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;
    .locals 1

    .line 206
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 310
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;
    .locals 0

    .line 292
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    return-object p1
.end method

.method protected getFirstDayOfWeek()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->firstDayOfWeek:I

    return v0
.end method

.method protected getFirstViewDay()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->firstViewDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method protected abstract getRows()I
.end method

.method protected invalidateDecorators()V
    .locals 7

    .line 177
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 179
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->reset()V

    .line 180
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;

    .line 181
    iget-object v5, v4, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;->decorator:Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;->shouldDecorate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    iget-object v4, v4, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;->result:Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-virtual {v4, v0}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->applyTo(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v2, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->applyFacade(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected abstract isDayEnabled(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 191
    instance-of v0, p1, Lcom/prolificinteractive/materialcalendarview/DayView;

    if-eqz v0, :cond_0

    .line 192
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 193
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onDateClicked(Lcom/prolificinteractive/materialcalendarview/DayView;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 317
    const-class v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 322
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 323
    const-class v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 261
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    .line 269
    invoke-virtual {p0, p3}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, p4

    add-int/2addr v2, p5

    .line 274
    invoke-virtual {v0, p4, p5, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 279
    rem-int/lit8 p4, p3, 0x7

    const/4 v0, 0x6

    if-ne p4, v0, :cond_0

    move p5, v2

    const/4 p4, 0x0

    goto :goto_1

    :cond_0
    move p4, v1

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 214
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 216
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 217
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 225
    div-int/lit8 p1, v0, 0x7

    .line 226
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getRows()I

    move-result p2

    div-int p2, v1, p2

    .line 229
    invoke-virtual {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMeasuredDimension(II)V

    .line 231
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 234
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 236
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 241
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 246
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 221
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CalendarPagerView should never be left to decide it\'s size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected resetAndGetWorkingCalendar()Ljava/util/Calendar;
    .locals 5

    .line 77
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getFirstViewDay()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    sget-object v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 79
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 80
    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getFirstDayOfWeek()I

    move-result v2

    sub-int/2addr v2, v0

    .line 83
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->showOtherDates:I

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->showOtherMonths(I)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, -0x7

    :cond_2
    const/4 v0, 0x5

    .line 87
    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    return-object v1
.end method

.method public setDateTextAppearance(I)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 115
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 145
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setDayViewDecorators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/DecoratorResult;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->invalidateDecorators()V

    return-void
.end method

.method public setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 156
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->updateUi()V

    return-void
.end method

.method public setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 151
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->updateUi()V

    return-void
.end method

.method public setSelectedDates(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 161
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 162
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setChecked(Z)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->postInvalidate()V

    return-void
.end method

.method public setSelectionColor(I)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 133
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectionEnabled(Z)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 126
    :goto_1
    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setClickable(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setShowOtherDates(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .line 120
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->showOtherDates:I

    .line 121
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->updateUi()V

    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 139
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 109
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateUi()V
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 169
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v2

    .line 170
    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->showOtherDates:I

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 171
    invoke-virtual {v2, v4, v5}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v4

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->isDayEnabled(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    .line 170
    invoke-virtual {v1, v3, v4, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setupSelection(IZZ)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->postInvalidate()V

    return-void
.end method
