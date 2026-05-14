.class public Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;
.super Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
.source "WeekPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<",
        "Lcom/prolificinteractive/materialcalendarview/WeekView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clearSelections()V
    .locals 0

    .line 9
    invoke-super {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    return-void
.end method

.method protected createRangeIndex(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;
    .locals 2

    .line 34
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;-><init>(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    return-object v0
.end method

.method protected bridge synthetic createView(I)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;->createView(I)Lcom/prolificinteractive/materialcalendarview/WeekView;

    move-result-object p1

    return-object p1
.end method

.method protected createView(I)Lcom/prolificinteractive/materialcalendarview/WeekView;
    .locals 3

    .line 18
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/WeekView;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/prolificinteractive/materialcalendarview/WeekView;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    return-object v0
.end method

.method public bridge synthetic destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRangeIndex()Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getRangeIndex()Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSelectedDates()Ljava/util/List;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShowOtherDates()I
    .locals 1
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation

    .line 9
    invoke-super {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getShowOtherDates()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/WeekView;

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;->indexOf(Lcom/prolificinteractive/materialcalendarview/WeekView;)I

    move-result p1

    return p1
.end method

.method protected indexOf(Lcom/prolificinteractive/materialcalendarview/WeekView;)I
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/WeekView;->getFirstViewDay()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;->getRangeIndex()Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;->indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invalidateDecorators()V
    .locals 0

    .line 9
    invoke-super {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateDecorators()V

    return-void
.end method

.method protected isInstanceOfView(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    instance-of p1, p1, Lcom/prolificinteractive/materialcalendarview/WeekView;

    return p1
.end method

.method public bridge synthetic isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic migrateStateAndReturn(Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->migrateStateAndReturn(Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    return-void
.end method

.method public bridge synthetic setDateTextAppearance(I)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateTextAppearance(I)V

    return-void
.end method

.method public bridge synthetic setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    return-void
.end method

.method public bridge synthetic setDecorators(Ljava/util/List;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public bridge synthetic setSelectionColor(I)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setSelectionColor(I)V

    return-void
.end method

.method public bridge synthetic setSelectionEnabled(Z)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setSelectionEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setShowOtherDates(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setShowOtherDates(I)V

    return-void
.end method

.method public bridge synthetic setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    return-void
.end method

.method public bridge synthetic setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    return-void
.end method

.method public bridge synthetic setWeekDayTextAppearance(I)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setWeekDayTextAppearance(I)V

    return-void
.end method
