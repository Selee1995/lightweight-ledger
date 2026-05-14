.class Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$400(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    move-result-object v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setPreviousMonth(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 204
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$302(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 205
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    .line 207
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnMonthChanged(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method
