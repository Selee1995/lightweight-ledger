.class Lcom/prolificinteractive/materialcalendarview/CalendarPager;
.super Landroid/support/v4/view/BetterViewPager;
.source "CalendarPager.java"


# instance fields
.field private pagingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/view/BetterViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->pagingEnabled:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->pagingEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/BetterViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->pagingEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/BetterViewPager;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPagingEnabled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->pagingEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->pagingEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/BetterViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->pagingEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/BetterViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->pagingEnabled:Z

    return-void
.end method
