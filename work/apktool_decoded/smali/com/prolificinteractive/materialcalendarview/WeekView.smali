.class public Lcom/prolificinteractive/materialcalendarview/WeekView;
.super Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
.source "WeekView.java"


# direct methods
.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    return-void
.end method


# virtual methods
.method protected buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V
    .locals 2
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

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/WeekView;->addDayView(Ljava/util/Collection;Ljava/util/Calendar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected getRows()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected isDayEnabled(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public bridge synthetic onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public bridge synthetic setDateTextAppearance(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDateTextAppearance(I)V

    return-void
.end method

.method public bridge synthetic setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    return-void
.end method

.method public bridge synthetic setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public bridge synthetic setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public bridge synthetic setSelectedDates(Ljava/util/Collection;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectedDates(Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic setSelectionColor(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionColor(I)V

    return-void
.end method

.method public bridge synthetic setSelectionEnabled(Z)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setShowOtherDates(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setShowOtherDates(I)V

    return-void
.end method

.method public bridge synthetic setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    return-void
.end method

.method public bridge synthetic setWeekDayTextAppearance(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayTextAppearance(I)V

    return-void
.end method

.method public bridge synthetic shouldDelayChildPressedState()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method
