.class public final synthetic Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$OhscM-FMRFZtRKlxL6RAVH-IM-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


# instance fields
.field public final synthetic f$0:Ljava/util/Calendar;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;

.field public final synthetic f$2:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Calendar;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$OhscM-FMRFZtRKlxL6RAVH-IM-M;->f$0:Ljava/util/Calendar;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$OhscM-FMRFZtRKlxL6RAVH-IM-M;->f$1:Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$OhscM-FMRFZtRKlxL6RAVH-IM-M;->f$2:Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .locals 7

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$OhscM-FMRFZtRKlxL6RAVH-IM-M;->f$0:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$OhscM-FMRFZtRKlxL6RAVH-IM-M;->f$1:Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$OhscM-FMRFZtRKlxL6RAVH-IM-M;->f$2:Landroid/support/v7/app/AlertDialog;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils;->lambda$showDatePickDialog_Lollipop$6(Ljava/util/Calendar;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/support/v7/app/AlertDialog;Landroid/widget/CalendarView;III)V

    return-void
.end method
