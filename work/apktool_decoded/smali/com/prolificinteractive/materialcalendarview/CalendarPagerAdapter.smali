.class abstract Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CalendarPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# instance fields
.field private color:Ljava/lang/Integer;

.field private final currentViews:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TV;>;"
        }
    .end annotation
.end field

.field private dateTextAppearance:Ljava/lang/Integer;

.field private dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

.field private decoratorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/DecoratorResult;",
            ">;"
        }
    .end annotation
.end field

.field private decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field protected final mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

.field private selectedDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private selectionEnabled:Z

.field private showOtherDates:I
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation
.end field

.field private titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

.field private final today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

.field private weekDayTextAppearance:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 29
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    .line 30
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 31
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    const/4 v1, 0x4

    .line 32
    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    .line 34
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 35
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    .line 38
    sget-object v1, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 39
    sget-object v1, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    .line 45
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 46
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 47
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 49
    invoke-virtual {p0, v0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method private invalidateSelectedDates()V
    .locals 3

    .line 289
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->validateSelectedDates()V

    .line 290
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 291
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectedDates(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateSelectedDates()V
    .locals 3

    const/4 v0, 0x0

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 297
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 299
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 301
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v2, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onDateUnselected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public clearSelections()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    return-void
.end method

.method protected abstract createRangeIndex(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;
.end method

.method protected abstract createView(I)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p3, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 177
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    invoke-interface {v0}, Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;->getCount()I

    move-result v0

    return v0
.end method

.method protected getDateTextAppearance()I
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 1

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    invoke-interface {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;->indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result p1

    return p1
.end method

.method public getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    invoke-interface {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .line 121
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->isInstanceOfView(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 125
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getFirstViewDay()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 129
    :cond_1
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;)I

    move-result p1

    if-gez p1, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;->format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getRangeIndex()Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    return-object v0
.end method

.method public getSelectedDates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShowOtherDates()I
    .locals 1
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation

    .line 230
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    return v0
.end method

.method protected getWeekDayTextAppearance()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected abstract indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->createView(I)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    move-result-object p2

    .line 139
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getCalendarContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setAlpha(F)V

    .line 141
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 144
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    .line 145
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionColor(I)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDateTextAppearance(I)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayTextAppearance(I)V

    .line 154
    :cond_2
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setShowOtherDates(I)V

    .line 155
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 156
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 157
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectedDates(Ljava/util/Collection;)V

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDayViewDecorators(Ljava/util/List;)V

    return-object p2
.end method

.method public invalidateDecorators()V
    .locals 5

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    .line 60
    new-instance v2, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-direct {v2}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;-><init>()V

    .line 61
    invoke-interface {v1, v2}, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;->decorate(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    .line 62
    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    new-instance v4, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;

    invoke-direct {v4, v1, v2}, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;-><init>(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 67
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDayViewDecorators(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected abstract isInstanceOfView(Ljava/lang/Object;)Z
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public migrateStateAndReturn(Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<",
            "*>;)",
            "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<",
            "*>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 83
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    .line 84
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 85
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 86
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    iput v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    .line 87
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 88
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 89
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 91
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 92
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 94
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    iput-boolean v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    return-object p1
.end method

.method public setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 276
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 277
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    goto :goto_0

    .line 281
    :cond_0
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 282
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 202
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 203
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDateTextAppearance(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 2

    .line 222
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 223
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 224
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDecorators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    .line 54
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateDecorators()V

    return-void
.end method

.method public setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2

    .line 244
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 245
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 246
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 247
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 248
    invoke-virtual {v1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result p1

    add-int/lit16 p1, p1, -0xc8

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    :cond_1
    if-nez p2, :cond_2

    .line 256
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result p2

    add-int/lit16 p2, p2, 0xc8

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p2

    .line 259
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->createRangeIndex(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    .line 261
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 262
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    return-void
.end method

.method public setSelectionColor(I)V
    .locals 2

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    .line 192
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 193
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectionEnabled(Z)V
    .locals 2

    .line 168
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    .line 169
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 170
    iget-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShowOtherDates(I)V
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .line 208
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    .line 209
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 210
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setShowOtherDates(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 2

    .line 215
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 216
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 217
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 238
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 239
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayTextAppearance(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
