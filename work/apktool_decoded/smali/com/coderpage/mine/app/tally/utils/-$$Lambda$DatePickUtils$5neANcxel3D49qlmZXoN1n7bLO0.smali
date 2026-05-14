.class public final synthetic Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$5neANcxel3D49qlmZXoN1n7bLO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;

.field public final synthetic f$1:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$5neANcxel3D49qlmZXoN1n7bLO0;->f$0:Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$5neANcxel3D49qlmZXoN1n7bLO0;->f$1:Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onDateSelected(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$5neANcxel3D49qlmZXoN1n7bLO0;->f$0:Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$5neANcxel3D49qlmZXoN1n7bLO0;->f$1:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils;->lambda$showDatePickDialog_Low$3(Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/support/v7/app/AlertDialog;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    return-void
.end method
